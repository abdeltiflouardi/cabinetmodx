<?php
/**
 * Contains the xPDOCacheManager implementation for MODX.
 * @package modx
 */

/**
 * The default xPDOCacheManager instance for MODX.
 *
 * Through this class, MODX provides several types of default, file-based
 * caching to reduce load and dependencies on the database, including:
 * <ul>
 * <li>partial modResource caching, which stores the object properties,
 * along with individual modElement cache items</li>
 * <li>full caching of modContext and modSystemSetting data</li>
 * <li>object-level caching</li>
 * <li>db query-level caching</li>
 * <li>optional JSON object caching for increased Ajax performance
 * possibilities</li>
 * </ul>
 *
 * @package modx
 */
class modCacheManager extends xPDOCacheManager {
    public $modx= null;

    function __construct(& $xpdo, array $options = array()) {
        parent :: __construct($xpdo, $options);
        $this->modx =& $this->xpdo;
    }

    /**
     * Generates a cache entry for a MODX site Context.
     *
     * Context cache entries can override site configuration settings and are responsible for
     * loading the various listings and maps in the modX class, including resourceMap, aliasMap,
     * and eventMap.  It can also be used to setup or transform any other modX properties.
     *
     * @todo Further refactor the generation of aliasMap and resourceMap so it uses less memory/file size.
     *
     * @param modContext $obj  The modContext instance to be cached.
     * @param array $options Options for system settings generation.
     * @return array An array containing all the context variable values.
     */
    public function generateContext($key, array $options = array()) {
        $results = array();
        $obj= $this->modx->getObject('modContext', $key, true);
        if (is_object($obj) && $obj instanceof modContext && $obj->get('key')) {
            $contextKey = is_object($this->modx->context) ? $this->modx->context->get('key') : $key;
            $contextConfig= $this->modx->_systemConfig;

            /* generate the ContextSettings */
            $results['config']= array();
            if ($settings= $obj->getMany('ContextSettings')) {
                foreach ($settings as $setting) {
                    $k= $setting->get('key');
                    $v= $setting->get('value');
                    $matches = array();
                    if (preg_match_all('~\{(.*?)\}~', $v, $matches, PREG_SET_ORDER)) {
                        foreach ($matches as $match) {
                            if (array_key_exists("{$match[1]}", $contextConfig)) {
                                $matchValue= $contextConfig["{$match[1]}"];
                            } else {
                                $matchValue= '';
                            }
                            $v= str_replace($match[0], $matchValue, $v);
                        }
                    }
                    $results['config'][$k]= $v;
                    $contextConfig[$k]= $v;
                }
            }

            /* generate the aliasMap and resourceMap */
            $tblResource= $this->modx->getTableName('modResource');
            $tblContextResource= $this->modx->getTableName('modContextResource');
            $resourceFields= array('id','parent','uri');
            $resourceCols= $this->modx->getSelectColumns('modResource', 'r', '', $resourceFields);
            $bindings= array (
                ':context_key1' => array('value' => $obj->get('key'), 'type' => PDO::PARAM_STR)
                ,':context_key2' => array('value' => $obj->get('key'), 'type' => PDO::PARAM_STR)
            );
            $sql = "SELECT {$resourceCols} FROM {$tblResource} r LEFT JOIN {$tblContextResource} cr ON cr.context_key = :context_key1 AND r.id = cr.resource WHERE r.id != r.parent AND (r.context_key = :context_key2 OR cr.context_key IS NOT NULL) AND r.deleted = 0 GROUP BY {$resourceCols}, r.menuindex ORDER BY r.parent ASC, r.menuindex ASC";
            $criteria= new xPDOCriteria($this->modx, $sql, $bindings, false);
            $collResources = null;
            if ($criteria->stmt && $criteria->stmt->execute()) {
                $collResources= & $criteria->stmt;
            }
            $results['resourceMap']= array ();
            $results['aliasMap']= array ();
            if ($collResources) {
                while ($r = $collResources->fetch(PDO::FETCH_OBJ)) {
                    $results['resourceMap'][(string) $r->parent][] = (string) $r->id;
                    if ($this->modx->getOption('friendly_urls', $contextConfig, false)) {
                        if (array_key_exists($r->uri, $results['aliasMap'])) {
                            $this->modx->log(xPDO::LOG_LEVEL_ERROR, "Resource URI {$r->uri} already exists for resource id = {$results['aliasMap'][$r->uri]}; skipping duplicate resource URI for resource id = {$r->id}");
                            continue;
                        }
                        $results['aliasMap'][$r->uri]= $r->id;
                    }
                }
            }

            /* generate the eventMap and pluginCache */
            $results['eventMap'] = array();
            $results['pluginCache'] = array();
            $eventMap= $this->modx->getEventMap($obj->get('key'));
            if (is_array ($eventMap) && !empty($eventMap)) {
                $results['eventMap'] = $eventMap;
                $pluginIds= array();
                $plugins= array();
                $this->modx->loadClass('modScript');
                foreach ($eventMap as $pluginKeys) {
                    foreach ($pluginKeys as $pluginKey) {
                        if (isset ($pluginIds[$pluginKey])) {
                            continue;
                        }
                        $pluginIds[$pluginKey]= $pluginKey;
                    }
                }
                if (!empty($pluginIds)) {
                    $pluginQuery = $this->modx->newQuery('modPlugin', array('id:IN' => array_keys($pluginIds)), true);
                    $pluginQuery->select($this->modx->getSelectColumns('modPlugin', 'modPlugin'));
                    if ($pluginQuery->prepare() && $pluginQuery->stmt->execute()) {
                        $plugins= $pluginQuery->stmt->fetchAll(PDO::FETCH_ASSOC);
                    }
                }
                if (!empty($plugins)) {
                    foreach ($plugins as $plugin) {
                        $results['pluginCache'][(string) $plugin['id']]= $plugin;
                    }
                }
            }

            /* cache the Context ACL policies */
            $results['policies'] = $obj->findPolicy($contextKey);

            if ($this->getOption('cache_context_settings', $options, true)) {
                $options[xPDO::OPT_CACHE_KEY] = $this->getOption('cache_context_settings_key', $options, 'context_settings');
                $options[xPDO::OPT_CACHE_HANDLER] = $this->getOption('cache_context_settings_handler', $options, $this->getOption(xPDO::OPT_CACHE_HANDLER, $options));
                $options[xPDO::OPT_CACHE_FORMAT] = (integer) $this->getOption('cache_context_settings_format', $options, $this->getOption(xPDO::OPT_CACHE_FORMAT, $options, xPDOCacheManager::CACHE_PHP));
                $options[xPDO::OPT_CACHE_ATTEMPTS] = (integer) $this->getOption('cache_context_settings_attempts', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPTS, $options, 10));
                $options[xPDO::OPT_CACHE_ATTEMPT_DELAY] = (integer) $this->getOption('cache_context_settings_attempt_delay', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPT_DELAY, $options, 1000));
                $lifetime = (integer) $this->getOption('cache_context_settings_expires', $options, $this->getOption(xPDO::OPT_CACHE_EXPIRES, $options, 0));
                if (!$this->set($obj->getCacheKey(), $results, $lifetime, $options)) {
                    $this->modx->log(modX::LOG_LEVEL_ERROR, 'Could not cache context settings for ' . $obj->get('key') . '.');
                }
            }
        }
        return $results;
    }

    /**
     * Generates the system settings cache for a MODX site.
     *
     * @param array $options Options for system settings generation.
     * @return array The generated system settings array.
     */
    public function generateConfig(array $options = array()) {
        $config = array();
        if ($collection= $this->modx->getCollection('modSystemSetting')) {
            foreach ($collection as $setting) {
                $k= $setting->get('key');
                $v= $setting->get('value');
                $matches= array();
                if (preg_match_all('~\{(.*?)\}~', $v, $matches, PREG_SET_ORDER)) {
                    $matchValue= '';
                    foreach ($matches as $match) {
                        if (isset ($this->modx->config["{$match[1]}"])) {
                            $matchValue= $this->modx->config["{$match[1]}"];
                        } else {
                            /* this causes problems with JSON in settings, disabling for now */
                            //$matchValue= '';
                        }
                        if (!empty($matchValue)) {
                            $v= str_replace($match[0], $matchValue, $v);
                        }
                    }
                }
                $config[$k]= $v;
            }
        }
        if (!empty($config) && $this->getOption('cache_system_settings', $options, true)) {
            $options[xPDO::OPT_CACHE_KEY] = $this->getOption('cache_system_settings_key', $options, 'system_settings');
            $options[xPDO::OPT_CACHE_HANDLER] = $this->getOption('cache_system_settings_handler', $options, $this->getOption(xPDO::OPT_CACHE_HANDLER, $options));
            $options[xPDO::OPT_CACHE_FORMAT] = (integer) $this->getOption('cache_system_settings_format', $options, $this->getOption(xPDO::OPT_CACHE_FORMAT, $options, xPDOCacheManager::CACHE_PHP));
            $options[xPDO::OPT_CACHE_ATTEMPTS] = (integer) $this->getOption('cache_system_settings_attempts', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPTS, $options, 10));
            $options[xPDO::OPT_CACHE_ATTEMPT_DELAY] = (integer) $this->getOption('cache_system_settings_attempt_delay', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPT_DELAY, $options, 1000));
            $lifetime = (integer) $this->getOption('cache_system_settings_expires', $options, $this->getOption(xPDO::OPT_CACHE_EXPIRES, $options, 0));
            if (!$this->set('config', $config, $lifetime, $options)) {
                $this->modx->log(modX::LOG_LEVEL_ERROR, 'Could not cache system settings.');
            }
        }
        return $config;
    }

    /**
     * Generates a cache entry for a Resource or Resource-derived object.
     *
     * Resource classes can define their own cacheKey.
     *
     * @param modResource $obj  The Resource instance to be cached.
     * @param array $options Options for resource generation.
     * @return array The generated resource representation.
     */
    public function generateResource(modResource & $obj, array $options = array()) {
        $results= array();
        if ($this->getOption('cache_resource', $options, true)) {
            if (is_object($obj) && $obj instanceof modResource && $obj->getProcessed() && $obj->get('cacheable') && $obj->get('id')) {
                $results['resourceClass']= $obj->_class;
                $results['resource']['_processed']= $obj->getProcessed();
                $results['resource']= $obj->toArray('', true);
                $results['resource']['_content']= $obj->_content;
                $results['resource']['_isForward']= $obj->_isForward;
                if ($contentType = $obj->getOne('ContentType')) {
                    $results['contentType']= $contentType->toArray('', true);
                }
                /* TODO: remove legacy docGroups and cache ABAC policies instead */
                if ($docGroups= $obj->getMany('ResourceGroupResources')) {
                    $groups= array();
                    foreach ($docGroups as $docGroupPk => $docGroup) {
                        $groups[(string) $docGroupPk] = $docGroup->toArray('', true);
                    }
                    $results['resourceGroups']= $groups;
                }
                $context = $obj->_contextKey ? $obj->_contextKey : 'web';
                $policies = $obj->findPolicy($context);
                if (is_array($policies)) {
                    $results['policyCache']= $policies;
                }
                if (!empty($this->modx->elementCache)) {
                    $results['elementCache']= $this->modx->elementCache;
                }
                if (!empty($this->modx->sourceCache)) {
                    $results['sourceCache']= $this->modx->sourceCache;
                }
                if (!empty($obj->_sjscripts)) {
                    $results['resource']['_sjscripts']= $obj->_sjscripts;
                }
                if (!empty($obj->_jscripts)) {
                    $results['resource']['_jscripts']= $obj->_jscripts;
                }
                if (!empty($obj->_loadedjscripts)) {
                    $results['resource']['_loadedjscripts']= $obj->_loadedjscripts;
                }
            }
            if (!empty($results)) {
                $options[xPDO::OPT_CACHE_KEY] = $this->getOption('cache_resource_key', $options, 'resource');
                $options[xPDO::OPT_CACHE_HANDLER] = $this->getOption('cache_resource_handler', $options, $this->getOption(xPDO::OPT_CACHE_HANDLER, $options));
                $options[xPDO::OPT_CACHE_FORMAT] = (integer) $this->getOption('cache_resource_format', $options, $this->getOption(xPDO::OPT_CACHE_FORMAT, $options, xPDOCacheManager::CACHE_PHP));
                $options[xPDO::OPT_CACHE_ATTEMPTS] = (integer) $this->getOption('cache_resource_attempts', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPTS, $options, 1));
                $options[xPDO::OPT_CACHE_ATTEMPT_DELAY] = (integer) $this->getOption('cache_resource_attempt_delay', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPT_DELAY, $options, 1000));
                $lifetime = (integer) $this->getOption('cache_resource_expires', $options, $this->getOption(xPDO::OPT_CACHE_EXPIRES, $options, 0));
                if (!$this->set($obj->getCacheKey(), $results, $lifetime, $options)) {
                    $this->modx->log(modX::LOG_LEVEL_ERROR, "Could not cache resource " . $obj->get('id'));
                }
            } else {
                $this->modx->log(modX::LOG_LEVEL_ERROR, "Could not retrieve data to cache for resource " . $obj->get('id'));
            }
        }
        return $results;
    }

    /**
     * Generates a lexicon topic cache file from a collection of entries
     *
     * @access public
     * @param string $cacheKey The key to use when caching the lexicon topic.
     * @param array $entries An array of key => value pairs of lexicon entries.
     * @param array $options An optional array of caching options.
     * @return array An array representing the lexicon topic cache.
     */
    public function generateLexiconTopic($cacheKey, $entries = array(), $options = array()) {
        if (!empty($entries) && $this->getOption('cache_lexicon_topics', $options, true)) {
            $options[xPDO::OPT_CACHE_KEY] = $this->getOption('cache_lexicon_topics_key', $options, 'lexicon_topics');
            $options[xPDO::OPT_CACHE_HANDLER] = $this->getOption('cache_lexicon_topics_handler', $options, $this->getOption(xPDO::OPT_CACHE_HANDLER, $options));
            $options[xPDO::OPT_CACHE_FORMAT] = (integer) $this->getOption('cache_lexicon_topics_format', $options, $this->getOption(xPDO::OPT_CACHE_FORMAT, $options, xPDOCacheManager::CACHE_PHP));
            $options[xPDO::OPT_CACHE_ATTEMPTS] = (integer) $this->getOption('cache_lexicon_topics_attempts', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPTS, $options, 1));
            $options[xPDO::OPT_CACHE_ATTEMPT_DELAY] = (integer) $this->getOption('cache_lexicon_topics_attempt_delay', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPT_DELAY, $options, 1000));
            $lifetime = (integer) $this->getOption('cache_lexicon_topics_expires', $options, $this->getOption(xPDO::OPT_CACHE_EXPIRES, $options, 0));
            if (!$this->set($cacheKey, $entries, $lifetime, $options)) {
                $this->modx->log(modX::LOG_LEVEL_ERROR, "Error caching lexicon topic " . $cacheKey);
            }
        }
        return $entries;
    }

     /**
     * Generates a cache file for the manager actions.
     *
     * @access public
     * @param string $cacheKey The key to use when caching the action map.
     * @return array An array representing the action map.
     */
    public function generateActionMap($cacheKey, array $options = array()) {
        $results= array();
        $c = $this->modx->newQuery('modAction');
        $c->select(array(
            $this->modx->getSelectColumns('modAction', 'modAction'),
            $this->modx->getSelectColumns('modNamespace', 'Namespace', 'namespace_', array('name','path'))
        ));
        $c->innerJoin('modNamespace','Namespace');
        $c->sortby('namespace','ASC');
        $c->sortby('controller','ASC');
        if ($c->prepare() && $c->stmt->execute()) {
            $actions = $c->stmt->fetchAll(PDO::FETCH_ASSOC);

            foreach ($actions as $action) {
                if (empty($action['namespace_path']) || $action['namespace_name'] == 'core') {
                    $action['namespace_path'] = $this->modx->getOption('manager_path');
                }

                if ($action['namespace_name'] != 'core') {
                    $nsPath = $action['namespace_path'];
                    if (!empty($nsPath)) {
                        $nsPath = str_replace(array(
                            '{core_path}',
                            '{base_path}',
                            '{assets_path}',
                        ),array(
                            $this->modx->getOption('core_path'),
                            $this->modx->getOption('base_path'),
                            $this->modx->getOption('assets_path'),
                        ),$nsPath);
                        $action['namespace_path'] = $nsPath;
                    }
                }
                $results[$action['id']] = $action;
            }
        }
        if (!empty($results) && $this->getOption('cache_action_map', $options, true)) {
            $options[xPDO::OPT_CACHE_KEY] = $this->getOption('cache_action_map_key', $options, 'action_map');
            $options[xPDO::OPT_CACHE_HANDLER] = $this->getOption('cache_action_map_handler', $options, $this->getOption(xPDO::OPT_CACHE_HANDLER, $options));
            $options[xPDO::OPT_CACHE_FORMAT] = (integer) $this->getOption('cache_action_map_format', $options, $this->getOption(xPDO::OPT_CACHE_FORMAT, $options, xPDOCacheManager::CACHE_PHP));
            $options[xPDO::OPT_CACHE_ATTEMPTS] = (integer) $this->getOption('cache_action_map_attempts', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPTS, $options, 1));
            $options[xPDO::OPT_CACHE_ATTEMPT_DELAY] = (integer) $this->getOption('cache_action_map_attempt_delay', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPT_DELAY, $options, 1000));
            $lifetime = (integer) $this->getOption('cache_action_map_expires', $options, $this->getOption(xPDO::OPT_CACHE_EXPIRES, $options, 0));
            if (!$this->set($cacheKey, $results, $lifetime, $options)) {
                $this->modx->log(modX::LOG_LEVEL_ERROR, "Error caching action map {$cacheKey}");
            }
        }
        return $results;
    }

    /**
     * Generates a file representing an executable modScript function.
     *
     * @param modScript $objElement A {@link modScript} instance to generate the
     * script file for.
     * @param string $objContent Optional script content to override the
     * persistent instance.
     * @param array $options An array of additional options for the operation.
     * @return boolean|string The actual generated source content representing the modScript or
     * false if the source content could not be generated.
     */
    public function generateScript(modScript &$objElement, $objContent= null, array $options= array()) {
        $results= false;
        if (is_object($objElement) && $objElement instanceof modScript) {
            $scriptContent= $objElement->getContent(is_string($objContent) ? array('content' => $objContent) : array());
            $scriptName= $objElement->getScriptName();

            $content = "function {$scriptName}(\$scriptProperties= array()) {\n";
            $content .= "global \$modx;\n";
            $content .= "if (is_array(\$scriptProperties)) {\n";
            $content .= "extract(\$scriptProperties, EXTR_SKIP);\n";
            $content .= "}\n";
            $content .= $scriptContent . "\n";
            $content .= "}\n";
            if ($this->getOption('returnFunction', $options, false)) {
                return $content;
            }
            $results = $content;
            if ($this->getOption('cache_scripts', $options, true)) {
                $options[xPDO::OPT_CACHE_KEY] = $this->getOption('cache_scripts_key', $options, 'scripts');
                $options[xPDO::OPT_CACHE_HANDLER] = $this->getOption('cache_scripts_handler', $options, $this->getOption(xPDO::OPT_CACHE_HANDLER, $options));
                $options[xPDO::OPT_CACHE_FORMAT] = (integer) $this->getOption('cache_scripts_format', $options, $this->getOption(xPDO::OPT_CACHE_FORMAT, $options, xPDOCacheManager::CACHE_PHP));
                $options[xPDO::OPT_CACHE_ATTEMPTS] = (integer) $this->getOption('cache_scripts_attempts', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPTS, $options, 1));
                $options[xPDO::OPT_CACHE_ATTEMPT_DELAY] = (integer) $this->getOption('cache_scripts_attempt_delay', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPT_DELAY, $options, 1000));
                $lifetime = (integer) $this->getOption('cache_scripts_expires', $options, $this->getOption(xPDO::OPT_CACHE_EXPIRES, $options, 0));
                if (empty($results) || !$this->set($objElement->getScriptCacheKey(), $results, $lifetime, $options)) {
                    $this->modx->log(modX::LOG_LEVEL_ERROR, "Error caching script " . $objElement->getScriptCacheKey());
                }
            }
        }
        return $results;
    }

    /**
     * Implements MODX cache refresh process, converting cache partitions to cache providers.
     */
    public function refresh(array $providers = array(), array &$results = array()) {
        if (empty($providers)) {
            $contexts = array();
            $query = $this->xpdo->newQuery('modContext');
            $query->select($this->xpdo->escape('key'));
            if ($query->prepare() && $query->stmt->execute()) {
                $contexts = $query->stmt->fetchAll(PDO::FETCH_COLUMN);
            }
            $providers = array(
                'auto_publish' => array('contexts' => array_diff($contexts, array('mgr'))),
                'system_settings' => array(),
                'context_settings' => array('contexts' => $contexts),
                'db' => array(),
                'scripts' => array(),
                'default' => array(),
                'resource' => array('contexts' => array_diff($contexts, array('mgr'))),
                'menu' => array(),
                'action_map' => array(),
                'lexicon_topics' => array()
            );
        }
        $cleared = array();
        foreach ($providers as $partition => $partOptions) {
            $partKey = $this->xpdo->getOption("cache_{$partition}_key", $partOptions, $partition);
            if (array_search($partKey, $cleared) !== false) {
                $results[$partition] = false;
                continue;
            }
            $partHandler = $this->xpdo->getOption("cache_{$partition}_handler", $partOptions, $this->xpdo->getOption(xPDO::OPT_CACHE_HANDLER));
            if (!is_array($partOptions)) $partOptions = array();
            $partOptions = array_merge($partOptions, array(xPDO::OPT_CACHE_KEY => $partKey, xPDO::OPT_CACHE_HANDLER => $partHandler));
            switch ($partition) {
                case 'auto_publish':
                    $results['auto_publish'] = $this->autoPublish($partOptions);
                    break;
                case 'system_settings':
                    $results['system_settings'] = ($this->generateConfig($partOptions) ? true : false);
                    break;
                case 'context_settings':
                    if (array_key_exists('contexts', $partOptions)) {
                        $contextResults = array();
                        foreach ($partOptions['contexts'] as $context) {
                            $contextResults[$context] = ($this->generateContext($context) ? true : false);
                        }
                        $results['context_settings'] = $contextResults;
                    } else {
                        $results['context_settings'] = false;
                    }
                    break;
                case 'scripts':
                    /* clean the configurable source cache and remove the include files */
                    $results[$partition] = $this->clean($partOptions);
                    $this->deleteTree($this->getCachePath() . 'includes/');
                    break;
                default:
                    $results[$partition] = $this->clean($partOptions);
                    break;
            }
            $cleared[] = $partKey;
        }
        return (array_search(false, $results, true) === false);
    }

    /**
     * Check for and process Resources with pub_date or unpub_date set to now or in past.
     *
     * @todo Implement Context-isolated auto-publishing.
     * @param array $options An array of options for the process.
     * @return array An array containing published and unpublished Resource counts.
     */
    public function autoPublish(array $options = array()) {
        $publishingResults= array();
        /* publish and unpublish resources using pub_date and unpub_date checks */
        $tblResource= $this->modx->getTableName('modResource');
        $timeNow= time() + $this->modx->getOption('server_offset_time', null, 0);
        $publishingResults['published']= $this->modx->exec("UPDATE {$tblResource} SET published=1, publishedon=pub_date, pub_date=0 WHERE published = 0 AND pub_date IS NOT NULL AND pub_date < {$timeNow} AND pub_date > 0");
        $publishingResults['unpublished']= $this->modx->exec("UPDATE $tblResource SET published=0, publishedon=0, pub_date=0, unpub_date=0 WHERE published = 1 AND unpub_date IS NOT NULL AND unpub_date < {$timeNow} AND unpub_date > 0");

        /* update publish time file */
        $timesArr= array ();
        $minpub= 0;
        $minunpub= 0;
        $sql= "SELECT MIN(pub_date) FROM {$tblResource} WHERE pub_date > ?";
        $stmt= $this->modx->prepare($sql);
        if ($stmt) {
            $stmt->bindValue(1, time());
            if ($stmt->execute()) {
                foreach ($stmt->fetchAll(PDO::FETCH_NUM) as $value) {
                    $minpub= $value[0];
                    unset($value);
                    break;
                }
            } else {
                $publishingResults['errors'][]= $this->modx->lexicon('cache_publish_event_error',array('info' => $stmt->errorInfo()));
            }
        }
        else {
            $publishingResults['errors'][]= $this->modx->lexicon('cache_publish_event_error',array('info' => $sql));
        }
        if ($minpub) $timesArr[]= $minpub;

        $sql= "SELECT MIN(unpub_date) FROM {$tblResource} WHERE unpub_date > ?";
        $stmt= $this->modx->prepare($sql);
        if ($stmt) {
            $stmt->bindValue(1, time());
            if ($stmt->execute()) {
                foreach ($stmt->fetchAll(PDO::FETCH_NUM) as $value) {
                    $minunpub= $value[0];
                    unset($value);
                    break;
                }
            } else {
                $publishingResults['errors'][]= $this->modx->lexicon('cache_unpublish_event_error',array('info' => $stmt->errorInfo()));
            }
        } else {
            $publishingResults['errors'][]= $this->modx->lexicon('cache_unpublish_event_error',array('info' => $sql));
        }
        if ($minunpub) $timesArr[]= $minunpub;

        if (count($timesArr) > 0) {
            $nextevent= min($timesArr);
        } else {
            $nextevent= 0;
        }

        /* cache the time of the next auto_publish event */
        $options[xPDO::OPT_CACHE_KEY] = $this->getOption('cache_auto_publish_key', $options, 'auto_publish');
        $options[xPDO::OPT_CACHE_HANDLER] = $this->getOption('cache_auto_publish_handler', $options, $this->getOption(xPDO::OPT_CACHE_HANDLER, $options));
        $options[xPDO::OPT_CACHE_ATTEMPTS] = (integer) $this->getOption('cache_auto_publish_attempts', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPTS, $options, 1));
        $options[xPDO::OPT_CACHE_ATTEMPT_DELAY] = (integer) $this->getOption('cache_auto_publish_attempt_delay', $options, $this->getOption(xPDO::OPT_CACHE_ATTEMPT_DELAY, $options, 1000));
        if (!$this->set('auto_publish', $nextevent, 0, $options)) {
            $this->modx->log(modX::LOG_LEVEL_ERROR, "Error caching time of next auto publishing event");
            $publishingResults['errors'][]= $this->modx->lexicon('cache_sitepublishing_file_error');
        }

        return $publishingResults;
    }

    /**
     * Clear part or all of the MODX cache.
     *
     * @deprecated Use refresh()
     * @param array $paths An optional array of paths, relative to the cache
     * path, to be deleted.
     * @param array $options An optional associative array of cache clearing options: <ul>
     * <li><strong>objects</strong>: an array of objects or paths to flush from the db object cache</li>
     * <li><strong>extensions</strong>: an array of file extensions to match when deleting the cache directories</li>
     * </ul>
     */
    public function clearCache(array $paths= array(), array $options= array()) {
        $results= array();
        $delObjs= array();
        if ($clearObjects = $this->getOption('objects', $options)) {
            $objectOptions = array_merge($options, array('cache_prefix' => $this->getOption('cache_db_prefix', $options, xPDOCacheManager::CACHE_DIR)));
            /* clear object cache by key, or * = flush entire object cache */
            if (is_array($clearObjects)) {
                foreach ($clearObjects as $key) {
                    if ($this->delete($key, $objectOptions))
                        $delObjs[]= $key;
                }
            }
            elseif (is_string($clearObjects) && $clearObjects == '*') {
                $delObjs= $this->clean($objectOptions);
            }
        }
        $results['deleted_objects']= $delObjs;
        $extensions= $this->getOption('extensions', $options, array('.cache.php'));
        if (empty($paths)) {
            $paths= array('');
        }
        $delFiles= array();
        foreach ($paths as $pathIdx => $path) {
            $deleted= false;
            $abspath= $this->modx->getOption(xPDO::OPT_CACHE_PATH) . $path;
            if (file_exists($abspath)) {
                if (is_dir($abspath)) {
                    $deleted= $this->deleteTree($abspath, array('deleteTop' => false, 'skipDirs' => false, 'extensions' => $extensions));
                } else {
                    if (unlink($abspath)) {
                        $deleted= array($path);
                    }
                }
                if (is_array($deleted))
                    $delFiles= array_merge($delFiles, $deleted);
            }
            if ($path == '') break;
        }
        $results['deleted_files']= $delFiles;
        $results['deleted_files_count']= count($delFiles);

        if (isset($options['publishing']) && $options['publishing']) {
           $results['publishing']= $this->autoPublish($options);
        }

        /* invoke OnCacheUpdate event */
        $this->modx->invokeEvent('OnCacheUpdate', array(
            'results' => $results,
            'paths' => $paths,
            'options' => $options,
        ));

        return $results;
    }
}