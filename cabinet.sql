-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 19, 2011 at 01:43 AM
-- Server version: 5.5.15
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cabinet`
--

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actiondom`
--

CREATE TABLE IF NOT EXISTS `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_actions`
--

CREATE TABLE IF NOT EXISTS `modx_access_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_category`
--

CREATE TABLE IF NOT EXISTS `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_context`
--

CREATE TABLE IF NOT EXISTS `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_elements`
--

CREATE TABLE IF NOT EXISTS `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_menus`
--

CREATE TABLE IF NOT EXISTS `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_permissions`
--

CREATE TABLE IF NOT EXISTS `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'database', 'perm.database_desc', 1),
(15, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(16, 1, 'delete_category', 'perm.delete_category_desc', 1),
(17, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(18, 1, 'delete_context', 'perm.delete_context_desc', 1),
(19, 1, 'delete_document', 'perm.delete_document_desc', 1),
(20, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(21, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(22, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(23, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(24, 1, 'delete_template', 'perm.delete_template_desc', 1),
(25, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(26, 1, 'delete_role', 'perm.delete_role_desc', 1),
(27, 1, 'delete_user', 'perm.delete_user_desc', 1),
(28, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(29, 1, 'directory_create', 'perm.directory_create_desc', 1),
(30, 1, 'directory_list', 'perm.directory_list_desc', 1),
(31, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(32, 1, 'directory_update', 'perm.directory_update_desc', 1),
(33, 1, 'edit_category', 'perm.edit_category_desc', 1),
(34, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(35, 1, 'edit_context', 'perm.edit_context_desc', 1),
(36, 1, 'edit_document', 'perm.edit_document_desc', 1),
(37, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(38, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(39, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(40, 1, 'edit_role', 'perm.edit_role_desc', 1),
(41, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(42, 1, 'edit_template', 'perm.edit_template_desc', 1),
(43, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(44, 1, 'edit_user', 'perm.edit_user_desc', 1),
(45, 1, 'element_tree', 'perm.element_tree_desc', 1),
(46, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(47, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(48, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(49, 1, 'export_static', 'perm.export_static_desc', 1),
(50, 1, 'file_list', 'perm.file_list_desc', 1),
(51, 1, 'file_manager', 'perm.file_manager_desc', 1),
(52, 1, 'file_remove', 'perm.file_remove_desc', 1),
(53, 1, 'file_tree', 'perm.file_tree_desc', 1),
(54, 1, 'file_update', 'perm.file_update_desc', 1),
(55, 1, 'file_upload', 'perm.file_upload_desc', 1),
(56, 1, 'file_view', 'perm.file_view_desc', 1),
(57, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(58, 1, 'frames', 'perm.frames_desc', 1),
(59, 1, 'help', 'perm.help_desc', 1),
(60, 1, 'home', 'perm.home_desc', 1),
(61, 1, 'import_static', 'perm.import_static_desc', 1),
(62, 1, 'languages', 'perm.languages_desc', 1),
(63, 1, 'lexicons', 'perm.lexicons_desc', 1),
(64, 1, 'list', 'perm.list_desc', 1),
(65, 1, 'load', 'perm.load_desc', 1),
(66, 1, 'logout', 'perm.logout_desc', 1),
(67, 1, 'logs', 'perm.logs_desc', 1),
(68, 1, 'menus', 'perm.menus_desc', 1),
(69, 1, 'messages', 'perm.messages_desc', 1),
(70, 1, 'namespaces', 'perm.namespaces_desc', 1),
(71, 1, 'new_category', 'perm.new_category_desc', 1),
(72, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(73, 1, 'new_context', 'perm.new_context_desc', 1),
(74, 1, 'new_document', 'perm.new_document_desc', 1),
(75, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(76, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(77, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(78, 1, 'new_role', 'perm.new_role_desc', 1),
(79, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(80, 1, 'new_template', 'perm.new_template_desc', 1),
(81, 1, 'new_tv', 'perm.new_tv_desc', 1),
(82, 1, 'new_user', 'perm.new_user_desc', 1),
(83, 1, 'packages', 'perm.packages_desc', 1),
(84, 1, 'property_sets', 'perm.property_sets_desc', 1),
(85, 1, 'providers', 'perm.providers_desc', 1),
(86, 1, 'publish_document', 'perm.publish_document_desc', 1),
(87, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(88, 1, 'remove', 'perm.remove_desc', 1),
(89, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(90, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(91, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(92, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(93, 1, 'save', 'perm.save_desc', 1),
(94, 1, 'save_category', 'perm.save_category_desc', 1),
(95, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(96, 1, 'save_context', 'perm.save_context_desc', 1),
(97, 1, 'save_document', 'perm.save_document_desc', 1),
(98, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(99, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(100, 1, 'save_role', 'perm.save_role_desc', 1),
(101, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(102, 1, 'save_template', 'perm.save_template_desc', 1),
(103, 1, 'save_tv', 'perm.save_tv_desc', 1),
(104, 1, 'save_user', 'perm.save_user_desc', 1),
(105, 1, 'search', 'perm.search_desc', 1),
(106, 1, 'settings', 'perm.settings_desc', 1),
(107, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(108, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(109, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(110, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(111, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(112, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(113, 1, 'view', 'perm.view_desc', 1),
(114, 1, 'view_category', 'perm.view_category_desc', 1),
(115, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(116, 1, 'view_context', 'perm.view_context_desc', 1),
(117, 1, 'view_document', 'perm.view_document_desc', 1),
(118, 1, 'view_element', 'perm.view_element_desc', 1),
(119, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(120, 1, 'view_offline', 'perm.view_offline_desc', 1),
(121, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(122, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(123, 1, 'view_role', 'perm.view_role_desc', 1),
(124, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(125, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(126, 1, 'view_template', 'perm.view_template_desc', 1),
(127, 1, 'view_tv', 'perm.view_tv_desc', 1),
(128, 1, 'view_user', 'perm.view_user_desc', 1),
(129, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(130, 1, 'workspaces', 'perm.workspaces_desc', 1),
(131, 2, 'add_children', 'perm.add_children_desc', 1),
(132, 2, 'copy', 'perm.copy_desc', 1),
(133, 2, 'create', 'perm.create_desc', 1),
(134, 2, 'delete', 'perm.delete_desc', 1),
(135, 2, 'list', 'perm.list_desc', 1),
(136, 2, 'load', 'perm.load_desc', 1),
(137, 2, 'move', 'perm.move_desc', 1),
(138, 2, 'publish', 'perm.publish_desc', 1),
(139, 2, 'remove', 'perm.remove_desc', 1),
(140, 2, 'save', 'perm.save_desc', 1),
(141, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(142, 2, 'undelete', 'perm.undelete_desc', 1),
(143, 2, 'unpublish', 'perm.unpublish_desc', 1),
(144, 2, 'view', 'perm.view_desc', 1),
(145, 3, 'load', 'perm.load_desc', 1),
(146, 3, 'list', 'perm.list_desc', 1),
(147, 3, 'view', 'perm.view_desc', 1),
(148, 3, 'save', 'perm.save_desc', 1),
(149, 3, 'remove', 'perm.remove_desc', 1),
(150, 4, 'add_children', 'perm.add_children_desc', 1),
(151, 4, 'create', 'perm.create_desc', 1),
(152, 4, 'copy', 'perm.copy_desc', 1),
(153, 4, 'delete', 'perm.delete_desc', 1),
(154, 4, 'list', 'perm.list_desc', 1),
(155, 4, 'load', 'perm.load_desc', 1),
(156, 4, 'remove', 'perm.remove_desc', 1),
(157, 4, 'save', 'perm.save_desc', 1),
(158, 4, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policies`
--

CREATE TABLE IF NOT EXISTS `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{"add_children":true,"create":true,"copy":true,"delete":true,"list":true,"load":true,"move":true,"publish":true,"remove":true,"save":true,"steal_lock":true,"undelete":true,"unpublish":true,"view":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{"about":true,"access_permissions":true,"actions":true,"change_password":true,"change_profile":true,"charsets":true,"class_map":true,"components":true,"content_types":true,"countries":true,"create":true,"credits":true,"customize_forms":true,"database":true,"database_truncate":true,"delete_category":true,"delete_chunk":true,"delete_context":true,"delete_document":true,"delete_eventlog":true,"delete_plugin":true,"delete_propertyset":true,"delete_snippet":true,"delete_template":true,"delete_tv":true,"delete_role":true,"delete_user":true,"directory_chmod":true,"directory_create":true,"directory_list":true,"directory_remove":true,"directory_update":true,"edit_category":true,"edit_chunk":true,"edit_context":true,"edit_document":true,"edit_locked":true,"edit_plugin":true,"edit_propertyset":true,"edit_role":true,"edit_snippet":true,"edit_template":true,"edit_tv":true,"edit_user":true,"element_tree":true,"empty_cache":true,"error_log_erase":true,"error_log_view":true,"export_static":true,"file_list":true,"file_manager":true,"file_remove":true,"file_tree":true,"file_update":true,"file_upload":true,"file_view":true,"flush_sessions":true,"frames":true,"help":true,"home":true,"import_static":true,"languages":true,"lexicons":true,"list":true,"load":true,"logout":true,"logs":true,"menus":true,"messages":true,"namespaces":true,"new_category":true,"new_chunk":true,"new_context":true,"new_document":true,"new_document_in_root":true,"new_plugin":true,"new_propertyset":true,"new_role":true,"new_snippet":true,"new_template":true,"new_tv":true,"new_user":true,"packages":true,"property_sets":true,"providers":true,"publish_document":true,"purge_deleted":true,"remove":true,"remove_locks":true,"resource_quick_create":true,"resource_quick_update":true,"resource_tree":true,"save":true,"save_category":true,"save_chunk":true,"save_context":true,"save_document":true,"save_plugin":true,"save_propertyset":true,"save_role":true,"save_snippet":true,"save_template":true,"save_tv":true,"save_user":true,"search":true,"settings":true,"steal_locks":true,"tree_show_element_ids":true,"tree_show_resource_ids":true,"undelete_document":true,"unpublish_document":true,"unlock_element_properties":true,"view":true,"view_category":true,"view_chunk":true,"view_context":true,"view_document":true,"view_element":true,"view_eventlog":true,"view_offline":true,"view_plugin":true,"view_propertyset":true,"view_role":true,"view_snippet":true,"view_sysinfo":true,"view_template":true,"view_tv":true,"view_user":true,"view_unpublished":true,"workspaces":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{"load":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{"load":true,"list":true,"view":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{"load":true,"list":true,"view":true,"save":true,"remove":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{"add_children":true,"create":true,"delete":true,"list":true,"load":true,"remove":true,"save":true,"view":true,"copy":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions.', 0, 1, '', '{"change_profile":true,"class_map":true,"countries":true,"edit_document":true,"frames":true,"help":true,"home":true,"load":true,"list":true,"logout":true,"resource_tree":true,"save_document":true,"tree_show_resource_ids":true,"view":true,"view_document":true,"new_document":true,"delete_document":true}', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_templates`
--

CREATE TABLE IF NOT EXISTS `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_policy_template_groups`
--

CREATE TABLE IF NOT EXISTS `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resources`
--

CREATE TABLE IF NOT EXISTS `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_resource_groups`
--

CREATE TABLE IF NOT EXISTS `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_access_templatevars`
--

CREATE TABLE IF NOT EXISTS `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actiondom`
--

CREATE TABLE IF NOT EXISTS `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions`
--

CREATE TABLE IF NOT EXISTS `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `parent` (`parent`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `modx_actions`
--

INSERT INTO `modx_actions` (`id`, `namespace`, `parent`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`) VALUES
(1, 'core', 0, 'welcome', 1, 'welcome,configcheck', '', ''),
(2, 'core', 0, 'system', 0, '', '', ''),
(3, 'core', 0, 'browser', 0, 'file', '', ''),
(4, 'core', 6, 'context/create', 1, 'context,setting,access,policy,user', '', 'Contexts'),
(5, 'core', 6, 'context/update', 1, 'context,setting,access,policy,user', '', 'Contexts'),
(6, 'core', 6, 'context/view', 1, 'context', '', 'Contexts'),
(7, 'core', 0, 'element', 1, 'element', '', ''),
(8, 'core', 10, 'element/chunk', 1, 'chunk,category,propertyset,element', '', 'Chunks'),
(9, 'core', 11, 'element/chunk/create', 1, 'chunk,category,propertyset,element', '', 'Chunks'),
(10, 'core', 11, 'element/chunk/update', 1, 'chunk,category,propertyset,element', '', 'Chunks'),
(11, 'core', 10, 'element/plugin', 1, 'plugin,category,system_events,propertyset,element', '', 'Plugins'),
(12, 'core', 20, 'element/plugin/create', 1, 'plugin,category,system_events,propertyset,element', '', 'Plugins'),
(13, 'core', 20, 'element/plugin/update', 1, 'plugin,category,system_events,propertyset,element', '', 'Plugins'),
(14, 'core', 10, 'element/snippet', 1, 'snippet,propertyset,element', '', 'Snippets'),
(15, 'core', 25, 'element/snippet/create', 1, 'snippet,propertyset,element', '', 'Snippets'),
(16, 'core', 25, 'element/snippet/update', 1, 'snippet,propertyset,element', '', 'Snippets'),
(17, 'core', 10, 'element/template', 1, 'template,propertyset,element', '', 'Templates'),
(18, 'core', 28, 'element/template/create', 1, 'template,propertyset,element', '', 'Templates'),
(19, 'core', 28, 'element/template/update', 1, 'template,propertyset,element', '', 'Templates'),
(20, 'core', 28, 'element/template/tvsort', 1, 'template,tv,propertyset,element', '', ''),
(21, 'core', 10, 'element/tv', 1, 'tv,propertyset,element', '', 'Template+Variables'),
(22, 'core', 32, 'element/tv/create', 1, 'tv,tv_widget,propertyset,element', '', 'Template+Variables'),
(23, 'core', 32, 'element/tv/update', 1, 'tv,tv_widget,propertyset,element', '', 'Template+Variables'),
(24, 'core', 10, 'element/view', 1, 'element', '', ''),
(25, 'core', 0, 'resource', 1, '', '', ''),
(26, 'core', 46, 'security/usergroup/create', 1, 'user,access,policy,context', '', 'User+Groups'),
(27, 'core', 46, 'security/usergroup/update', 1, 'user,access,policy,context', '', 'User+Groups'),
(28, 'core', 36, 'resource/data', 1, 'resource', '', 'Resource'),
(29, 'core', 36, 'resource/empty_recycle_bin', 1, 'resource', '', ''),
(30, 'core', 36, 'resource/update', 1, 'resource', '', 'Resource'),
(31, 'core', 0, 'security', 1, 'user', '', ''),
(32, 'core', 46, 'security/role', 1, 'user', '', 'Roles'),
(33, 'core', 53, 'security/user/create', 1, 'user,setting,access', '', 'Users'),
(34, 'core', 53, 'security/user/update', 1, 'user,setting,access', '', 'Users'),
(35, 'core', 46, 'security/login', 1, 'login', '', ''),
(36, 'core', 3, 'system/refresh_site', 1, '', '', ''),
(37, 'core', 3, 'system/phpinfo', 1, '', '', ''),
(38, 'core', 36, 'resource/tvs', 0, '', '', ''),
(39, 'core', 3, 'system/file', 1, 'file', '', ''),
(40, 'core', 70, 'system/file/edit', 1, 'file', '', ''),
(41, 'core', 65, 'security/access/policy/update', 1, 'user,policy', '', 'Policies'),
(42, 'core', 212, 'workspaces/package/view', 1, 'workspace,namespace', '', 'Package+Management'),
(43, 'core', 65, 'security/access/policy/template/update', 1, 'user,policy', '', 'PolicyTemplates'),
(44, 'core', 46, 'security/forms/profile/update', 1, 'formcustomization,user,access,policy', '', 'Form+Customization+Profiles'),
(45, 'core', 46, 'security/forms/set/update', 1, 'formcustomization,user,access,policy', '', 'Form+Customization+Sets'),
(46, 'core', 0, 'search', 1, '', '', ''),
(47, 'core', 36, 'resource/create', 1, 'resource', '', 'Resource'),
(48, 'core', 46, 'security/user', 1, 'user', '', 'Users'),
(49, 'core', 46, 'security/permission', 1, 'user,access,policy', '', 'Security'),
(50, 'core', 46, 'security/resourcegroup/index', 1, 'resource,user,access', '', 'Resource+Groups'),
(51, 'core', 46, 'security/forms', 1, 'formcustomization,user,access,policy', '', 'Customizing+The+Manager'),
(52, 'core', 3, 'system/import', 1, 'import', '', ''),
(53, 'core', 59, 'system/import/html', 1, 'import', '', ''),
(54, 'core', 10, 'element/propertyset/index', 1, 'element,category,propertyset', '', 'Properties+and+Property+Sets'),
(55, 'core', 36, 'resource/site_schedule', 1, 'resource', '', ''),
(56, 'core', 0, 'system/logs/index', 1, 'manager_log', '', ''),
(57, 'core', 3, 'system/event', 1, 'system_events', '', ''),
(58, 'core', 3, 'system/info', 1, 'system_info', '', ''),
(59, 'core', 0, 'help', 1, 'about', '', ''),
(60, 'core', 3, 'workspaces', 1, 'workspace', '', 'Package+Management'),
(61, 'core', 3, 'system/settings', 1, 'setting', '', 'Settings'),
(62, 'core', 68, 'workspaces/lexicon', 1, 'package_builder,lexicon,namespace', '', 'Internationalization'),
(63, 'core', 3, 'system/contenttype', 1, 'content_type', '', 'Content+Types'),
(64, 'core', 0, 'context', 1, 'context', '', 'Contexts'),
(65, 'core', 3, 'system/action', 1, 'action,menu,namespace', '', 'Actions+and+Menus'),
(66, 'core', 68, 'workspaces/namespace', 1, 'workspace,package_builder,lexicon,namespace', '', 'Namespaces'),
(67, 'core', 46, 'security/profile', 1, 'user', '', ''),
(68, 'core', 46, 'security/message', 1, 'messages', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_actions_fields`
--

CREATE TABLE IF NOT EXISTS `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 30, 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 30, 'id', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 0),
(3, 30, 'template', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 1),
(4, 30, 'published', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 2),
(5, 30, 'pagetitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 3),
(6, 30, 'longtitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 4),
(7, 30, 'description', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 5),
(8, 30, 'alias', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 6),
(9, 30, 'link_attributes', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 7),
(10, 30, 'introtext', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 8),
(11, 30, 'parent-cmb', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 9),
(12, 30, 'menutitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 10),
(13, 30, 'menuindex', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 11),
(14, 30, 'hidemenu', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 12),
(15, 30, 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 1),
(16, 30, 'isfolder', 'field', 'modx-page-settings', 'modx-panel-resource', '', 0),
(17, 30, 'richtext', 'field', 'modx-page-settings', 'modx-panel-resource', '', 1),
(18, 30, 'publishedon', 'field', 'modx-page-settings', 'modx-panel-resource', '', 2),
(19, 30, 'pub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', 3),
(20, 30, 'unpub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', 4),
(21, 30, 'searchable', 'field', 'modx-page-settings', 'modx-panel-resource', '', 5),
(22, 30, 'cacheable', 'field', 'modx-page-settings', 'modx-panel-resource', '', 6),
(23, 30, 'syncsite', 'field', 'modx-page-settings', 'modx-panel-resource', '', 7),
(24, 30, 'deleted', 'field', 'modx-page-settings', 'modx-panel-resource', '', 8),
(25, 30, 'content_type', 'field', 'modx-page-settings', 'modx-panel-resource', '', 9),
(26, 30, 'content_dispo', 'field', 'modx-page-settings', 'modx-panel-resource', '', 10),
(27, 30, 'class_key', 'field', 'modx-page-settings', 'modx-panel-resource', '', 11),
(28, 30, 'uri_override', 'field', 'modx-page-settings', 'modx-panel-resource', '', 12),
(29, 30, 'uri', 'field', 'modx-page-settings', 'modx-panel-resource', '', 13),
(30, 30, 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 2),
(31, 30, 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 3),
(32, 30, 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(33, 47, 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(34, 47, 'template', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 0),
(35, 47, 'published', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 1),
(36, 47, 'pagetitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 2),
(37, 47, 'longtitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 3),
(38, 47, 'description', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 4),
(39, 47, 'alias', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 5),
(40, 47, 'link_attributes', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 6),
(41, 47, 'introtext', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 7),
(42, 47, 'parent-cmb', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 8),
(43, 47, 'menutitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 9),
(44, 47, 'menuindex', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 10),
(45, 47, 'hidemenu', 'field', 'modx-resource-settings', 'modx-panel-resource', '', 11),
(46, 47, 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 1),
(47, 47, 'isfolder', 'field', 'modx-page-settings', 'modx-panel-resource', '', 0),
(48, 47, 'richtext', 'field', 'modx-page-settings', 'modx-panel-resource', '', 1),
(49, 47, 'publishedon', 'field', 'modx-page-settings', 'modx-panel-resource', '', 2),
(50, 47, 'pub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', 3),
(51, 47, 'unpub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', 4),
(52, 47, 'searchable', 'field', 'modx-page-settings', 'modx-panel-resource', '', 5),
(53, 47, 'cacheable', 'field', 'modx-page-settings', 'modx-panel-resource', '', 6),
(54, 47, 'syncsite', 'field', 'modx-page-settings', 'modx-panel-resource', '', 7),
(55, 47, 'deleted', 'field', 'modx-page-settings', 'modx-panel-resource', '', 8),
(56, 47, 'content_type', 'field', 'modx-page-settings', 'modx-panel-resource', '', 9),
(57, 47, 'content_dispo', 'field', 'modx-page-settings', 'modx-panel-resource', '', 10),
(58, 47, 'class_key', 'field', 'modx-page-settings', 'modx-panel-resource', '', 11),
(59, 47, 'uri_override', 'field', 'modx-page-settings', 'modx-panel-resource', '', 12),
(60, 47, 'uri', 'field', 'modx-page-settings', 'modx-panel-resource', '', 13),
(61, 47, 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 2),
(62, 47, 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 3),
(63, 47, 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_active_users`
--

CREATE TABLE IF NOT EXISTS `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories`
--

CREATE TABLE IF NOT EXISTS `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_categories_closure`
--

CREATE TABLE IF NOT EXISTS `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT '0',
  `descendant` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_class_map`
--

CREATE TABLE IF NOT EXISTS `modx_class_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Table structure for table `modx_content_type`
--

CREATE TABLE IF NOT EXISTS `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_context`
--

CREATE TABLE IF NOT EXISTS `modx_context` (
  `key` varchar(100) NOT NULL,
  `description` tinytext,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_context`
--

INSERT INTO `modx_context` (`key`, `description`) VALUES
('web', 'The default front-end context for your web site.'),
('mgr', 'The default manager or administration context for content management activity.');

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_resource`
--

CREATE TABLE IF NOT EXISTS `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_context_setting`
--

CREATE TABLE IF NOT EXISTS `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modx_documentgroup_names`
--

CREATE TABLE IF NOT EXISTS `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_document_groups`
--

CREATE TABLE IF NOT EXISTS `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_element_property_sets`
--

CREATE TABLE IF NOT EXISTS `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles`
--

CREATE TABLE IF NOT EXISTS `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

CREATE TABLE IF NOT EXISTS `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_fc_sets`
--

CREATE TABLE IF NOT EXISTS `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_lexicon_entries`
--

CREATE TABLE IF NOT EXISTS `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_manager_log`
--

CREATE TABLE IF NOT EXISTS `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2011-08-18 19:11:01', 'template_update', 'modTemplate', '1'),
(2, 1, '2011-08-18 19:11:14', 'template_update', 'modTemplate', '1'),
(3, 1, '2011-08-18 19:12:01', 'save_resource', 'modResource', '1'),
(4, 1, '2011-08-18 19:15:20', 'template_update', 'modTemplate', '1'),
(5, 1, '2011-08-19 00:37:29', 'save_resource', 'modResource', '1'),
(6, 1, '2011-08-19 00:50:14', 'chunk_create', 'modChunk', '1'),
(7, 1, '2011-08-19 00:51:07', 'chunk_create', 'modChunk', '2'),
(8, 1, '2011-08-19 00:52:31', 'save_resource', 'modResource', '1'),
(9, 1, '2011-08-19 00:52:59', 'save_resource', 'modResource', '1'),
(10, 1, '2011-08-19 00:53:14', 'save_resource', 'modResource', '1'),
(11, 1, '2011-08-19 00:53:43', 'save_resource', 'modResource', '1'),
(12, 1, '2011-08-19 00:53:58', 'chunk_create', 'modChunk', '3'),
(13, 1, '2011-08-19 00:55:22', 'chunk_create', 'modChunk', '4'),
(14, 1, '2011-08-19 00:56:42', 'save_resource', 'modDocument', '2'),
(15, 1, '2011-08-19 00:56:54', 'save_resource', 'modResource', '2'),
(16, 1, '2011-08-19 00:57:29', 'chunk_update', 'modChunk', '1'),
(17, 1, '2011-08-19 00:57:41', 'chunk_update', 'modChunk', '1'),
(18, 1, '2011-08-19 00:59:23', 'chunk_update', 'modChunk', '4'),
(19, 1, '2011-08-19 01:01:55', 'chunk_update', 'modChunk', '3'),
(20, 1, '2011-08-19 01:02:13', 'chunk_create', 'modChunk', '5'),
(21, 1, '2011-08-19 01:04:28', 'chunk_update', 'modChunk', '3'),
(22, 1, '2011-08-19 01:04:49', 'chunk_create', 'modChunk', '6'),
(23, 1, '2011-08-19 01:05:45', 'chunk_update', 'modChunk', '4'),
(24, 1, '2011-08-19 01:06:27', 'chunk_update', 'modChunk', '4'),
(25, 1, '2011-08-19 01:07:23', 'chunk_update', 'modChunk', '4'),
(26, 1, '2011-08-19 01:10:29', 'chunk_create', 'modChunk', '7'),
(27, 1, '2011-08-19 01:11:13', 'save_resource', 'modDocument', '3'),
(28, 1, '2011-08-19 01:11:25', 'save_resource', 'modResource', '3'),
(29, 1, '2011-08-19 01:11:29', 'save_resource', 'modResource', '3'),
(30, 1, '2011-08-19 01:11:57', 'save_resource', 'modResource', '3'),
(31, 1, '2011-08-19 01:12:13', 'chunk_delete', 'modChunk', '7'),
(32, 1, '2011-08-19 01:13:13', 'save_resource', 'modResource', '3'),
(33, 1, '2011-08-19 01:13:47', 'save_resource', 'modResource', '3'),
(34, 1, '2011-08-19 01:14:08', 'save_resource', 'modResource', '2'),
(35, 1, '2011-08-19 01:14:38', 'chunk_update', 'modChunk', '1'),
(36, 1, '2011-08-19 01:15:57', 'save_resource', 'modResource', '3'),
(37, 1, '2011-08-19 01:19:03', 'duplicate_resource', 'modResource', '4'),
(38, 1, '2011-08-19 01:19:30', 'save_resource', 'modResource', '4'),
(39, 1, '2011-08-19 01:19:58', 'chunk_update', 'modChunk', '1'),
(40, 1, '2011-08-19 01:20:55', 'chunk_update', 'modChunk', '1'),
(41, 1, '2011-08-19 01:21:31', 'duplicate_resource', 'modResource', '5'),
(42, 1, '2011-08-19 01:21:48', 'duplicate_resource', 'modResource', '6'),
(43, 1, '2011-08-19 01:22:04', 'duplicate_resource', 'modResource', '7'),
(44, 1, '2011-08-19 01:22:18', 'duplicate_resource', 'modResource', '8'),
(45, 1, '2011-08-19 01:22:40', 'save_resource', 'modResource', '5'),
(46, 1, '2011-08-19 01:22:56', 'save_resource', 'modResource', '6'),
(47, 1, '2011-08-19 01:23:12', 'save_resource', 'modResource', '7'),
(48, 1, '2011-08-19 01:23:28', 'save_resource', 'modResource', '8'),
(49, 1, '2011-08-19 01:25:19', 'duplicate_resource', 'modResource', '9'),
(50, 1, '2011-08-19 01:25:38', 'save_resource', 'modResource', '9'),
(51, 1, '2011-08-19 01:27:52', 'save_resource', 'modResource', '5'),
(52, 1, '2011-08-19 01:28:02', 'save_resource', 'modResource', '6'),
(53, 1, '2011-08-19 01:28:16', 'save_resource', 'modResource', '7'),
(54, 1, '2011-08-19 01:28:28', 'save_resource', 'modResource', '8'),
(55, 1, '2011-08-19 01:28:40', 'save_resource', 'modResource', '9'),
(56, 1, '2011-08-19 01:29:26', 'duplicate_resource', 'modResource', '10'),
(57, 1, '2011-08-19 01:29:47', 'save_resource', 'modResource', '10'),
(58, 1, '2011-08-19 01:30:14', 'duplicate_resource', 'modResource', '11'),
(59, 1, '2011-08-19 01:30:51', 'save_resource', 'modResource', '11'),
(60, 1, '2011-08-19 01:31:24', 'duplicate_resource', 'modResource', '12'),
(61, 1, '2011-08-19 01:31:50', 'save_resource', 'modResource', '12'),
(62, 1, '2011-08-19 01:32:09', 'duplicate_resource', 'modResource', '13'),
(63, 1, '2011-08-19 01:32:30', 'duplicate_resource', 'modResource', '14'),
(64, 1, '2011-08-19 01:33:02', 'duplicate_resource', 'modResource', '15'),
(65, 1, '2011-08-19 01:33:35', 'save_resource', 'modResource', '13'),
(66, 1, '2011-08-19 01:33:44', 'save_resource', 'modResource', '13'),
(67, 1, '2011-08-19 01:34:20', 'save_resource', 'modResource', '14'),
(68, 1, '2011-08-19 01:34:28', 'save_resource', 'modResource', '14'),
(69, 1, '2011-08-19 01:34:58', 'save_resource', 'modResource', '15'),
(70, 1, '2011-08-19 01:37:06', 'chunk_update', 'modChunk', '3'),
(71, 1, '2011-08-19 01:38:59', 'file_update', '', '/media/data/server/sites/cabinet/css/style.css'),
(72, 1, '2011-08-19 01:40:03', 'template_update', 'modTemplate', '1');

-- --------------------------------------------------------

--
-- Table structure for table `modx_membergroup_names`
--

CREATE TABLE IF NOT EXISTS `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`) VALUES
(1, 'Administrator', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_member_groups`
--

CREATE TABLE IF NOT EXISTS `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT '0',
  `member` int(10) unsigned NOT NULL DEFAULT '0',
  `role` int(10) unsigned NOT NULL DEFAULT '1',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_menus`
--

CREATE TABLE IF NOT EXISTS `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`) VALUES
('site', '', 0, '', 'images/misc/logo_tbar.gif', 0, '', '', ''),
('preview', 'site', 0, 'preview_desc', 'images/icons/show.gif', 0, '', 'MODx.preview(); return false;', ''),
('refresh_site', 'site', 0, 'refresh_site_desc', 'images/icons/refresh.png', 1, '', 'MODx.clearCache(); return false;', 'empty_cache'),
('remove_locks', 'site', 0, 'remove_locks_desc', 'images/ext/default/grid/hmenu-unlock.png', 2, '', '\nMODx.msg.confirm({\n    title: _(''remove_locks'')\n    ,text: _(''confirm_remove_locks'')\n    ,url: MODx.config.connectors_url+''system/remove_locks.php''\n    ,params: {\n        action: ''remove''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { Ext.getCmp("modx-resource-tree").refresh(); },scope:this}\n    }\n});', 'remove_locks'),
('search', 'site', 46, 'search_desc', 'images/icons/context_view.gif', 3, '', '', 'search'),
('new_document', 'site', 47, 'new_document_desc', 'images/icons/folder_page_add.png', 4, '', '', 'new_document'),
('new_weblink', 'site', 47, 'new_weblink_desc', 'images/icons/link_add.png', 5, '&class_key=modWebLink', '', 'new_document'),
('new_symlink', 'site', 47, 'new_symlink_desc', 'images/icons/link_add.png', 6, '&class_key=modSymLink', '', 'new_document'),
('new_static_resource', 'site', 47, 'new_static_resource_desc', 'images/icons/link_add.png', 7, '&class_key=modStaticResource', '', 'new_document'),
('logout', 'site', 0, 'logout_desc', 'images/misc/logo_tbar.gif', 8, '', 'MODx.logout(); return false;', ''),
('components', '', 0, '', 'images/icons/plugin.gif', 1, '', '', 'components'),
('security', '', 0, '', 'images/icons/lock.gif', 2, '', '', 'access_permissions'),
('user_management', 'security', 48, 'user_management_desc', 'images/icons/user.gif', 0, '', '', 'view_user'),
('user_group_management', 'security', 49, 'user_group_management_desc', 'images/icons/mnu_users.gif', 1, '', '', 'access_permissions'),
('resource_groups', 'security', 50, 'resource_groups_desc', '', 2, '', '', 'access_permissions'),
('form_customization', 'security', 51, 'form_customization_desc', 'images/misc/logo_tbar.gif', 3, '', '', 'customize_forms'),
('flush_access', 'security', 0, 'flush_access_desc', 'images/icons/unzip.gif', 4, '', 'MODx.msg.confirm({\n    title: _(''flush_access'')\n    ,text: _(''flush_access_confirm'')\n    ,url: MODx.config.connectors_url+''security/access/index.php''\n    ,params: {\n        action: ''flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'access_permissions'),
('flush_sessions', 'security', 0, 'flush_sessions_desc', 'images/icons/unzip.gif', 5, '', 'MODx.msg.confirm({\n    title: _(''flush_sessions'')\n    ,text: _(''flush_sessions_confirm'')\n    ,url: MODx.config.connectors_url+''security/flush.php''\n    ,params: {\n        action: ''flush''\n    }\n    ,listeners: {\n        ''success'': {fn:function() { location.href = ''./''; },scope:this}\n    }\n});', 'flush_sessions'),
('tools', '', 0, '', 'images/icons/menu_settings.gif', 3, '', '', ''),
('import_resources', 'tools', 52, 'import_resources_desc', 'images/icons/application_side_contract.png', 0, '', '', 'import_static'),
('import_site', 'tools', 53, 'import_site_desc', 'images/icons/application_side_contract.png', 1, '', '', 'import_static'),
('propertysets', 'tools', 54, 'propertysets_desc', 'images/misc/logo_tbar.gif', 2, '', '', 'property_sets'),
('reports', '', 0, '', 'images/icons/menu_settings16.gif', 4, '', '', ''),
('site_schedule', 'reports', 55, 'site_schedule_desc', 'images/icons/cal.gif', 0, '', '', ''),
('view_logging', 'reports', 56, 'view_logging_desc', '', 1, '', '', 'logs'),
('eventlog_viewer', 'reports', 57, 'eventlog_viewer_desc', 'images/icons/comment.gif', 2, '', '', 'view_eventlog'),
('view_sysinfo', 'reports', 58, 'view_sysinfo_desc', 'images/icons/logging.gif', 3, '', '', 'view_sysinfo'),
('about', 'reports', 59, 'about_desc', 'images/icons/information.png', 4, '', '', 'about'),
('system', '', 0, '', 'images/misc/logo_tbar.gif', 5, '', '', ''),
('manage_workspaces', 'system', 60, 'manage_workspaces_desc', 'images/icons/sysinfo.gif', 0, '', '', 'packages'),
('system_settings', 'system', 61, 'system_settings_desc', 'images/icons/sysinfo.gif', 1, '', '', 'settings'),
('lexicon_management', 'system', 62, 'lexicon_management_desc', 'images/icons/logging.gif', 2, '', '', 'lexicons'),
('content_types', 'system', 63, 'content_types_desc', 'images/icons/logging.gif', 3, '', '', 'content_types'),
('contexts', 'system', 64, 'contexts_desc', 'images/icons/sysinfo.gif', 4, '', '', 'view_context'),
('edit_menu', 'system', 65, 'edit_menu_desc', 'images/icons/sysinfo.gif', 5, '', '', 'menus,actions'),
('namespaces', 'system', 66, 'namespaces_desc', '', 6, '', '', 'namespaces'),
('user', '', 0, '', 'images/icons/user_go.png', 6, '', '', ''),
('profile', 'user', 67, 'profile_desc', '', 0, '', '', ''),
('messages', 'user', 68, 'messages_desc', 'images/icons/messages.gif', 1, '', '', 'messages'),
('support', '', 0, 'support_desc', 'images/icons/sysinfo.gif', 7, '', '', ''),
('forums', 'support', 0, 'forums_desc', 'images/icons/sysinfo.gif', 0, '', 'window.open("http://modx.com/forums");', ''),
('wiki', 'support', 0, 'wiki_desc', 'images/icons/sysinfo.gif', 1, '', 'window.open("http://rtfm.modx.com/");', ''),
('jira', 'support', 0, 'jira_desc', 'images/icons/sysinfo.gif', 2, '', 'window.open("http://bugs.modx.com/projects/revo/issues");', ''),
('api_docs', 'support', 0, 'api_docs_desc', 'images/icons/sysinfo.gif', 3, '', 'window.open("http://api.modx.com/");', '');

-- --------------------------------------------------------

--
-- Table structure for table `modx_namespaces`
--

CREATE TABLE IF NOT EXISTS `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`) VALUES
('core', '{core_path}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_property_set`
--

CREATE TABLE IF NOT EXISTS `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_messages`
--

CREATE TABLE IF NOT EXISTS `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_queues`
--

CREATE TABLE IF NOT EXISTS `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:"directory";s:5:"locks";}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_register_topics`
--

CREATE TABLE IF NOT EXISTS `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2011-08-18 19:09:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_session`
--

CREATE TABLE IF NOT EXISTS `modx_session` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `access` int(20) unsigned DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('4f42ijhc7njnq0qk5en6tb3e44', 1313718045, 'modx.user.contextTokens|a:0:{}modx.user.0.attributes|a:1:{s:3:"mgr";a:3:{s:16:"modAccessContext";a:1:{s:3:"web";a:1:{i:0;a:3:{s:9:"principal";i:0;s:9:"authority";s:1:"0";s:6:"policy";a:1:{s:4:"load";b:1;}}}}s:22:"modAccessResourceGroup";a:0:{}s:17:"modAccessCategory";a:0:{}}}modx.user.0.resourceGroups|a:1:{s:3:"mgr";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_content`
--

CREATE TABLE IF NOT EXISTS `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(333)),
  KEY `uri_override` (`uri_override`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`) VALUES
(1, 'document', 'text/html', 'Accueil', '', '', '', '', 1, 0, 0, 0, 0, '', '[[$header]]\r\n[[$home]]\r\n[[$footer]]', 1, 1, 0, 1, 1, 1, 1313694513, 1, 1313715223, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(2, 'document', 'text/html', 'Présentation', '', '', '', '', 1, 0, 0, 0, 0, '', '[[$header]]\r\n[[$presentation]]\r\n[[$footer]]', 1, 1, 1, 1, 1, 1, 1313715402, 1, 1313716448, 0, 0, 0, 1313715360, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(3, 'document', 'text/html', 'Nos services', '', '', '', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\nLe Temps précieux et les charges fixes consacrés au fonctionnement administratif de votre entreprise pourraient ralentir le développement de celle-ci; \r\nPour Réduire le nombre d’interlocuteurs, et vous garantir de mener à bien vos projets; \r\n\r\nNotre Cabinet, grâce à ces formules d’accompagnement innovantes et simplement efficaces, vous propose un pack de services avec externalisation de vos besoins professionnels en aspects juridiques, fiscaux et sociaux propres à votre entreprise. \r\n◊ Gestion du portefeuille client\r\n◊ Recouvrement amiable des impayés\r\n◊ Recouvrement judiciaire des impayés\r\n◊ Enquête de localisation et solvabilité\r\n◊ Assistance Juridique, Prévention et Gestion du Risque Juridique\r\n◊ Conseil Fiscaux et  Sociaux\r\n              ◊ consultations\r\n◊ Recouvrement amiable des impayés\r\nEn principe dés la déclaration de l’incident d’impayé, chaque client et chaque montant est traité d’une manière spécifique pour déterminer la nature de la créance donc l’action de recouvrement en amiable ou judiciaire,\r\nMissions :\r\nIntervention Immédiate dés la déclaration de l’incident d’impayé\r\nTraitement adapté à chaque type d’impayé sur l’ensemble du territoire\r\nMise en demeure par huissier de justice\r\nVisite domiciliaire\r\nEnquête de localisation\r\nEnquête de solvabilité \r\nNos moyens d''action :\r\nNous  optimisons pour vous des procédures de travail mise en place spécifiquement, en principe une méthodologie sure et éprouvée fait gagner du temps et de l’argent. \r\nNous engageons pour vous des personnes regroupant des qualités humaines complémentaires. capable de se renseigner, négocier, décider et d’imposer. \r\nChaque dossier, chaque client et chaque montant est traité d’une manière spécifique. \r\nNous adoptons le moyen de communication le plus convainquant, \r\nUn traitement rapide et accélérer de vos impayés \r\nNos moyens d’information \r\n          Vous êtes régulièrement informé des résultats obtenus par :\r\nNos comptes rendus d’encaissement. \r\nUn dialogue permanant entre vous et le gestionnaire de vos dossiers. \r\nLe paiement rapide des sommes encaissées. \r\nRésultat\r\n        Nos moyens d’action entraînent obligatoirement à un résultat qui est soit :\r\nRèglement définitif de la créance. \r\nRéactiver un dossier et négociation d’un plan de paiement. \r\nTransférer un dossier en contentieux. \r\nFourniture de tous les documents justifiant l’inscription comptable de votre créance en perte et profit. \r\nAvantages :\r\nTous les débours restent à notre charge en cas d’insolvabilité\r\nSeuls restent à votre charge les frais et taxes judiciaires.\r\nLes frais de déplacement au-delà de Casablanca seront facturés au tarif en vigueur.\r\nNos commissions ne sont perçues que sur les montants encaissés\r\n\r\n\r\n\r\n◊ Recouvrement judiciaire des impayés\r\n\r\nQuelle que soit la qualité des protections et des moyens correctifs mis en place pour maîtriser le risque client, une partie des créances doit être transféré inévitablement, au service contentieux.\r\nQu’est ce que le contentieux ?\r\nLe contentieux c’est le litige évoqué par le débiteur pour ne pas payer sa dette, mais il faut savoir distinguer le vrai litige qui peut être réelle et le litige prétexte invoqué pour ne pas payer.\r\nMais souvent certains dossiers traités à l’amiable n’aboutissent pas à un arrangement  souvent lorsque le débiteur est de mauvaise foie, cependant le recouvrement amiable cède la place au recouvrement judiciaire\r\nMissions :\r\nDépôt et suivi des plaintes pour émission des chèques sans provision \r\nDésignation et instruction des avocats et huissiers de justice pour déterminer l’action judiciaire la plus efficace et la plus rapide adaptée à chaque type d’impayé \r\nSuivi de notification et exécution des jugements rendu en votre faveur \r\nAvantages :\r\nTous les débours restent à notre charge en cas d’insolvabilité \r\nSeuls restent à votre charge les frais de justice, taxes judiciaires et les frais d’avocats selon un barème qui fera objet d’accord de principe. \r\nLes frais de déplacement au-delà de Casablanca seront facturés au tarif en vigueur. \r\nNos commissions ne sont perçues que sur les montants encaissés \r\n◊ Enquête de localisation et solvabilité\r\n\r\nQu’est-ce qu’une enquête privé ?\r\nL’information est un art qui exige des compétences diversifiées : des aptitudes intellectuelles et physiques, une rapidité d’intervention et une pratique intensive font d’elles un métier que seuls des professionnels rompus aux techniques d’investigation maîtrisent parfaitement.\r\nLà où tout a échoué, l’enquête sur le terrain permet d’apporter une solution efficace. \r\n La prévention des escroqueries et abus de confiance \r\n\r\nUne fois le délit consommé, l’escroquerie est habituellement du ressort des services officiels. Cependant, une escroquerie reste ignorée par ses victimes jusqu’à son aboutissement. Notre cabinet peut intervenir avant transaction, signature d’un contrat, acceptation d’un crédit pour sauvegarder vos droits et vos intérêts légitimes.\r\nLa recherche et la localisation de débiteurs\r\nL’une des missions de notre service de recherche de débiteurs est de glaner quotidiennement l’information. Les démarches juridiques ordinaires ne permettent plus, à elles seules, de recouvrer les créances. Notre département « recherche de débiteur » est au service de l’entreprise et du particulier, il coordonne l’action judiciaire avec la réalité du terrain.\r\nLes investigations sur le terrain\r\nEn effet, nous ne nous contentons pas de localiser le débiteur qui a su intelligemment organiser son insolvabilité, mais nous mettons à jour les actifs de la personne recherchée.\r\nUne fois ce débiteur localisé, il nous est possible de vous communiquer, outre son adresse, les renseignements nécessaires à la bonne exploitation du dossier.\r\nNotre service des renseignements commerciaux est chargé de recueillir, d’analyser et de vérifier sur le terrain les informations indispensables à la réussite des dossiers.\r\n1. La localisation du débiteur\r\n2. La détermination du patrimoine du débiteur antérieurement à une décision de justice\r\n3. La détermination du patrimoine du débiteur sur le fondement d’un titre exécutoire\r\n4. Informations factuelles et juridiques\r\n5. Enquêtes sur la solvabilité, l’honorabilité de clients potentiels.\r\n6. Localisation et rencontre de débiteurs malhonnête en vue de trouver un arrangement afin de régler une créance.\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 2, 1, 1, 1, 1313716273, 1, 1313716557, 0, 0, 0, 1313716260, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(4, 'document', 'text/html', 'Notre charte', '', '', 'notre-charte', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n◊ Notre Charte\r\nNotre Cabinet, est un professionnel en domaine de conseil juridique, fiscaux, sociaux et recouvrement amiable et judicaire de créances ordinaires et litigieuses.\r\nIl respecte les obligations de son organisation professionnelle et se conforme à la réglementation en vigueur. \r\nIl garantit à ses clients :\r\n◊ La compétence et la moralité de leurs collaborateurs, \r\n◊ La souscription à une assurance en responsabilité civile professionnelle, \r\n◊ L’ouverture d’un compte bancaire réservé à la réception des fonds encaissés, \r\n◊ L’établissement d’un contrat de mandat fixant les droits et obligations des parties, \r\n◊ Des visites domiciliaires effectuées par des encaisseurs exclusivement salariés, \r\n◊ Des comptes rendus réguliers sur l’exécution du mandat reçu, \r\n◊ Le versement des sommes disponibles dans les délais prévus dans le contrat de mandat, \r\n◊ La confidentialité des informations communiquées. \r\nIl s’engage à l’égard des débiteurs à : \r\n◊ Veiller au fondement des créances et des sommes dues, \r\n◊ S’identifier clairement et sans ambiguïté, \r\n◊ Utiliser un langage simple et compréhensible, \r\n◊ S’obliger au secret professionnel et à respecter les personnes et leur vie privée, \r\n◊ Rechercher un accord amiable, \r\n◊ Prévenir les débiteurs avant tout recours au recouvrement forcé, \r\n◊ Répondre aux demandes d’informations sur les créances, \r\n◊ Fournir une quittance pour tout paiement, \r\n◊ Adresser un courrier précisant notamment : \r\n» La mention de recouvrement amiable, \r\n» L’identification du créancier, \r\n» Le fondement et le montant de la somme due en principal, intérêts et autres accessoires, \r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 3, 1, 1, 1, 1313716742, 1, 1313716770, 0, 0, 0, 1313716770, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(5, 'document', 'text/html', 'Espace client', '', '', 'espace-client', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 4, 1, 1, 1, 1313716891, 1, 1313717272, 0, 0, 0, 1313717272, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(12, 'document', 'text/html', 'Recouvrement judiciaire des impayés', '', '', 'recouvrement-judiciaire-des-impayés', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n◊ Recouvrement judiciaire des impayés\r\n\r\nQuelle que soit la qualité des protections et des moyens correctifs mis en place pour maîtriser le risque client, une partie des créances doit être transféré inévitablement, au service contentieux.\r\nQu’est ce que le contentieux ?\r\nLe contentieux c’est le litige évoqué par le débiteur pour ne pas payer sa dette, mais il faut savoir distinguer le vrai litige qui peut être réelle et le litige prétexte invoqué pour ne pas payer.\r\nMais souvent certains dossiers traités à l’amiable n’aboutissent pas à un arrangement  souvent lorsque le débiteur est de mauvaise foie, cependant le recouvrement amiable cède la place au recouvrement judiciaire\r\nMissions :\r\nDépôt et suivi des plaintes pour émission des chèques sans provision \r\nDésignation et instruction des avocats et huissiers de justice pour déterminer l’action judiciaire la plus efficace et la plus rapide adaptée à chaque type d’impayé \r\nSuivi de notification et exécution des jugements rendu en votre faveur \r\nAvantages :\r\nTous les débours restent à notre charge en cas d’insolvabilité \r\nSeuls restent à votre charge les frais de justice, taxes judiciaires et les frais d’avocats selon un barème qui fera objet d’accord de principe. \r\nLes frais de déplacement au-delà de Casablanca seront facturés au tarif en vigueur. \r\nNos commissions ne sont perçues que sur les montants encaissés \r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 11, 1, 1, 1, 1313717484, 1, 1313717510, 0, 0, 0, 1313717510, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(6, 'document', 'text/html', 'Actualités', '', '', 'actualités', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 5, 1, 1, 1, 1313716908, 1, 1313717282, 0, 0, 0, 1313717282, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(11, 'document', 'text/html', 'Recouvrement amiable des impayés', '', '', 'recouvrement-amiable-des-impayés', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n◊ Recouvrement amiable des impayés\r\nEn principe dés la déclaration de l’incident d’impayé, chaque client et chaque montant est traité d’une manière spécifique pour déterminer la nature de la créance donc l’action de recouvrement en amiable ou judiciaire,\r\nMissions :\r\nIntervention Immédiate dés la déclaration de l’incident d’impayé\r\nTraitement adapté à chaque type d’impayé sur l’ensemble du territoire\r\nMise en demeure par huissier de justice\r\nVisite domiciliaire\r\nEnquête de localisation\r\nEnquête de solvabilité \r\nNos moyens d''action :\r\nNous  optimisons pour vous des procédures de travail mise en place spécifiquement, en principe une méthodologie sure et éprouvée fait gagner du temps et de l’argent. \r\nNous engageons pour vous des personnes regroupant des qualités humaines complémentaires. capable de se renseigner, négocier, décider et d’imposer. \r\nChaque dossier, chaque client et chaque montant est traité d’une manière spécifique. \r\nNous adoptons le moyen de communication le plus convainquant, \r\nUn traitement rapide et accélérer de vos impayés \r\nNos moyens d’information \r\n          Vous êtes régulièrement informé des résultats obtenus par :\r\nNos comptes rendus d’encaissement. \r\nUn dialogue permanant entre vous et le gestionnaire de vos dossiers. \r\nLe paiement rapide des sommes encaissées. \r\nRésultat\r\n        Nos moyens d’action entraînent obligatoirement à un résultat qui est soit :\r\nRèglement définitif de la créance. \r\nRéactiver un dossier et négociation d’un plan de paiement. \r\nTransférer un dossier en contentieux. \r\nFourniture de tous les documents justifiant l’inscription comptable de votre créance en perte et profit. \r\nAvantages :\r\nTous les débours restent à notre charge en cas d’insolvabilité\r\nSeuls restent à votre charge les frais et taxes judiciaires.\r\nLes frais de déplacement au-delà de Casablanca seront facturés au tarif en vigueur.\r\nNos commissions ne sont perçues que sur les montants encaissés\r\n\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 10, 1, 1, 1, 1313717414, 1, 1313717451, 0, 0, 0, 1313717451, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(7, 'document', 'text/html', 'Recrutement', '', '', 'recrutement', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 6, 1, 1, 1, 1313716924, 1, 1313717296, 0, 0, 0, 1313717296, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(10, 'document', 'text/html', 'Gestion du portefeuille clientèle', '', '', 'gestion-du-portefeuille-clientèle', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n\r\nLe recouvrement fait partie d’une stratégie commerciale de l’entreprise,  le délai de paiement représente un coût significatif ; à ceux-ci s’ajoute bien souvent le retard de paiement qui perturbe la gestion de l’entreprise, alourdisse ses frais financiers et fragilise sa trésorerie, ce qui est devenue une source d’inquiétude et de perte de temps.\r\nNotre service assurera pour vous :\r\nRecouvrement des créances ordinaires  grâce à un suivi rapproché de la facturation et des encaissements\r\nMissions :\r\nDépôt des Factures\r\nRelance téléphonique\r\nVisite domiciliaire\r\nRécupération des règlements\r\nPréparation des situations prévisionnelles des encaissements\r\nAssurer le suivi, le traitement, et le règlement rapide des problèmes en cause de retard de  paiement en  coordination avec vos services internes et vos clients\r\nSuivi des soumissions aux appels d’offres\r\nSuivi des réceptions provisoires et définitives des marchés\r\nRestitution des cautions portant main levée et suivi des main levée bancaires\r\nNos moyens d''action :\r\nNous  optimisons pour vous des procédures de travail mise en place spécifiquement,en principe une méthodologie sure et éprouvée fait gagner du temps et de l’argent.\r\nNous engageons pour vous des personnes regroupant des qualités humaines complémentaires. capable de se renseigner, négocier, décider et d’imposer.\r\nChaque dossier, chaque client et chaque montant est traité d’une manière spécifique.\r\nNous adoptons le moyen de communication le plus convainquant,\r\nUn traitement rapide et accélérer de vos impayés\r\nNos moyens d’information \r\n          Vous êtes régulièrement informé des résultats obtenus par :\r\nNos comptes rendus d’encaissement.\r\nUn dialogue permanant entre vous et le gestionnaire de vos dossiers.\r\nLe paiement rapide des sommes encaissées.\r\nRésultat\r\n        Nos moyens d’action entraînent obligatoirement à un résultat qui est soit :\r\nRèglement définitif de la créance.\r\nRéactiver un dossier et négociation d’un plan de paiement.\r\nTransférer un dossier en contentieux.\r\nFourniture de tous les documents justifiant l’inscription comptable de votre créance en perte et profit.\r\nAvantages :\r\nNos commission ne sont perçu que sur les montants encaissés. \r\nLes frais de gestion sont négociés en fonction du portefeuille client.\r\n\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 9, 1, 1, 1, 1313717366, 1, 1313717387, 0, 0, 0, 1313717387, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(8, 'document', 'text/html', 'Contact', '', '', 'contact', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 7, 1, 1, 1, 1313716938, 1, 1313717308, 0, 0, 0, 1313717308, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(9, 'document', 'text/html', 'Last news', '', '', 'last-news', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\nImpôt des patentes (taxe professionnelle)\r\nCet impôt est dû par toutes les personnes physiques et morales exerçant une activité commerciale ou industrielle. Le principal de l''impôt comprend : la taxe proportionnelle calculée sur la base d''un barème tenant compte principalement de la valeur locative, les éléments immobilisés et les secteurs d''activités.\r\nToutes les personnes physiques ou morales exerçant une activité professionnelle, industrielle, ou commerciale sont exonérées dudit impôt pendant les 5 premières années d''exploitation quelque soit leurs secteurs d''activités.\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 8, 1, 1, 1, 1313717119, 1, 1313717320, 0, 0, 0, 1313717320, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(13, 'document', 'text/html', 'Enquête de localisation et solvabilité', '', '', 'enquête-de-localisation-et-solvabilité', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n\r\n◊ Enquête de localisation et solvabilité\r\n\r\nQu’est-ce qu’une enquête privé ?\r\nL’information est un art qui exige des compétences diversifiées : des aptitudes intellectuelles et physiques, une rapidité d’intervention et une pratique intensive font d’elles un métier que seuls des professionnels rompus aux techniques d’investigation maîtrisent parfaitement.\r\nLà où tout a échoué, l’enquête sur le terrain permet d’apporter une solution efficace. \r\n La prévention des escroqueries et abus de confiance \r\n\r\nUne fois le délit consommé, l’escroquerie est habituellement du ressort des services officiels. Cependant, une escroquerie reste ignorée par ses victimes jusqu’à son aboutissement. Notre cabinet peut intervenir avant transaction, signature d’un contrat, acceptation d’un crédit pour sauvegarder vos droits et vos intérêts légitimes.\r\nLa recherche et la localisation de débiteurs\r\nL’une des missions de notre service de recherche de débiteurs est de glaner quotidiennement l’information. Les démarches juridiques ordinaires ne permettent plus, à elles seules, de recouvrer les créances. Notre département « recherche de débiteur » est au service de l’entreprise et du particulier, il coordonne l’action judiciaire avec la réalité du terrain.\r\nLes investigations sur le terrain\r\nEn effet, nous ne nous contentons pas de localiser le débiteur qui a su intelligemment organiser son insolvabilité, mais nous mettons à jour les actifs de la personne recherchée.\r\nUne fois ce débiteur localisé, il nous est possible de vous communiquer, outre son adresse, les renseignements nécessaires à la bonne exploitation du dossier.\r\nNotre service des renseignements commerciaux est chargé de recueillir, d’analyser et de vérifier sur le terrain les informations indispensables à la réussite des dossiers.\r\n1. La localisation du débiteur\r\n2. La détermination du patrimoine du débiteur antérieurement à une décision de justice\r\n3. La détermination du patrimoine du débiteur sur le fondement d’un titre exécutoire\r\n4. Informations factuelles et juridiques\r\n5. Enquêtes sur la solvabilité, l’honorabilité de clients potentiels.\r\n6. Localisation et rencontre de débiteurs malhonnête en vue de trouver un arrangement afin de régler une créance.\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 12, 1, 1, 1, 1313717529, 1, 1313717624, 0, 0, 0, 1313717624, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(14, 'document', 'text/html', 'Service consultations', '', '', 'service-consultations', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n◊ Service Consultation\r\n\r\nLe Maroc offre des possibilités extraordinaires d’investissement compte tenu de son envie d’émergence et de la jeunesse de sa population.\r\nNotre pays a clairement choisi d’évoluer vers un futur démocratique et productif de richesses. Ouvert sur le reste du monde depuis toujours, il poursuit ses avancées dans tous les domaines d’activités : technologie, services, tourisme, immobilier….etc…\r\nIl n’en reste pas moins que le choix d’INVESTIR comporte des RISQUES. Ceux-ci peuvent et doivent être CALCULES et MAITRISES.\r\nSi une bonne information constitue le seul moyen de garantir un bon démarrage d’activités, une ou plusieurs CONSULTATIONS (ORALES et/ou ECRITES) portant sur l’OPTIMISATION FISCALE, SOCIALE et JURIDIQUE constituent un axe majeur de votre réussite.\r\n\r\nNous vous proposons deux formules de CONSULTATIONS\r\nCONSULTATIONS ECRITES :\r\nCette formule vous permettra d’ETUDIER la FAISABILITE de vos PROJETS sans avoir à vous déplacer dans un premier temps.\r\nSur un simple APPEL ou par E-MAIL, nous définirons ensemble vos besoins d’ordres:\r\n   \r\n   • REGLEMENTAIRES ET LEGISLATIFS \r\n   • FISCAUX ET COMPTABLES\r\n   • JURIDIQUES ET SOCIAUX\r\n   • ECONOMIQUES ET CONJONCTURELS\r\nNous vous adresserons suite à nos différents entretiens des rapports écrits portant sur les questions que vous avez bien voulu soulever.\r\nCONSULTATIONS ORALES :\r\nLors de vos premiers déplacements dans nos bureaux et pendant toute la durée de notre collaboration cette formule vous GARANTIRA une CONFIDENTIALITE TOTALE relative à la NATURE et l’ORIGINALITE de vos PROJETS.\r\nNotre rôle est de dissiper l’OPACITE due à la culture verbale et aux mauvaises interprétations des textes légaux, d’une part, et de vous communiquer les informations actualisées, d’autre part.\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 13, 1, 1, 1, 1313717550, 1, 1313717668, 0, 0, 0, 1313717668, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0),
(15, 'document', 'text/html', 'Assistance Juridique Prévention et Gestion du Risque Juridique', '', '', 'assistance-juridique-prévention-et-gestion-du-risque-juridique', '', 1, 0, 0, 0, 0, '', '    [[$header]]\r\n    <div id="container">\r\n        [[$sidebar_left]]\r\n        <div id="content">\r\n\r\n◊ Conseil Juridique, fiscal, social et prévention du risque Juridique\r\n\r\nA chaque étape, et dès le début de la vie de votre entreprise, nous vous apporterons le soutien, les conseils juridiques nécessaires, ainsi que les textes et accords sécurisants la faisabilité et la fiabilité de vos projets.\r\nNotre service juridique se tient à votre disposition pour vous fournir les informations relatives à la réglementation de votre activité et aux mesures prévues par le législateur en vue d’encourager l’investissement au Maroc.\r\n\r\nVoici ci-après la liste des prestations de services proposées par notre centre:\r\nLa création de sociétés (SARL – SARL d’Associé Unique – SNC – SA – Entreprise    Individuelle - …) et la domiciliation juridique et fiscale.\r\nLa Rédaction des procès verbaux d’assemblées générales ordinaires\r\nLa Rédaction des procès verbaux d’assemblées générales extraordinaires : \r\n   - Le Transfert de siège social de ville à ville sur la même ville.\r\n   - Les Modifications de: \r\n         - Forme juridique.\r\n         - Dénomination.\r\n         - Objet social.\r\n         - Gérance.\r\n         - Capital.\r\n         - Cession de parts sociales.\r\n         - Changement d’un ou de plusieurs membres du Conseil d’Administration (SA).\r\nLa dissolution anticipée, la clôture de la liquidation et la radiation de sociétés.\r\nLes consultations orales.\r\nLes consultations écrites.\r\nTenue des registres des assemblées\r\nDépôt des assemblées avec les états de synthèse auprès du tribunal de commerce\r\nAssurer la veille juridique par la transmission des informations concernant la législation applicable  à l’activité de votre société\r\nRecevoir, analyser et traiter les demandes de consultations juridiques à caractère technique,  financier, social, fiscal, commercial ou autre dans le délai défini\r\nAnalyser le lancement des produits ou services, quant à leur faisabilité juridique et fiscale.\r\nElaborer, analyser et valider tous les actes juridiques y compris les contrats conclus par votre société\r\nRédiger les courriers externes à caractère juridique (mise en demeure, résiliation,…)\r\nStandardiser et améliorer les modèles de contrats les plus courants\r\nElaborer, analyser et contrôler les dates d’échéances des contrats conclus par la société\r\nLa Rédaction des contrats : \r\n    - Contrats d’embauche marocain / étranger\r\n    - Contrats de bail\r\n    - Commercial d’habitation mixte\r\n    - Contrats de gérance libre.\r\n    - Contrats de location gérance.\r\n    - Contrats de prestation de services.\r\n    - Contrats de sous-traitance.\r\n    - Protocoles d’accords.\r\n    - Conventions.\r\n    - Tous types d’actes sous seing privé,….\r\n  \r\nArbitrage commercial et civil. \r\nConseil Fiscal :\r\nInformés en permanence des modifications et mises à jour relatives à nos domaines de compétences, nous sommes à votre disposition pour vous proposer les solutions vous permettant d’obtenir les avantages et exonérations accordés par le régime fiscal Marocain.\r\n\r\nConseils Sociaux\r\nNous vous proposerons des solutions adaptées à vos besoins pour la réalisation des simulations des salaires de vos employés, l’établissement des contrats d’embauche (CDD, CDI, expatriés et détachés) , le suivi de la paie, les déclarations sociales, l’optimisation des charges patronales et salariales en intégrant les primes et indemnités non imposables au Maroc.\r\n\r\n    ◊ Déclaration d’ouverture de l’établissement auprès de la délégation régionale du Ministère de Travail.\r\n    ◊ Elaboration des contrats d’embauche nationaux.\r\n    ◊ Elaboration des fiches de paie.\r\n    ◊ Tenue du livre de paie.\r\n    ◊ Déclaration des charges sociales et de l’impôt sur le revenu (IR).\r\n    ◊ Suivi des congés - livre de congés payés.\r\n    ◊ Etablissement des attestations de travail.\r\n    ◊ Calcul et rédaction des soldes de tout compte.\r\n           ◊ Travaux de simulation et d’optimisation des salaires\r\n           ◊ Suivi et calcul des heures supplémentaires.\r\n           ◊ Mise à jour des dossiers du personnel (cartes de travail des nouvelles et anciennes recrues, modification de          \r\n             la situation familiale…).\r\n           ◊ Suivi des dossiers maladie et accident de travail, retraite complémentaire…\r\n           ◊ Suivi du planning annuel des congés payés.\r\n           ◊ Suivi des absences diverses à l’occasion de : Mariage – Naissance – Décès – Circoncision  Opérations  chirurgicales.\r\n          ◊ Contrats ANAPEC (Exonération des charges sociales et de l’impôt sur le revenu (IR).\r\n          ◊ Elaboration et suivi des dossiers de la formation professionnelle (OFPPT).\r\n         ◊ Suivi des litiges et règlement des conflits : En cas de litiges individuels ou collectifs, nous interviendrons auprès de l’inspection    de travail et/ou tribunaux pour représenter votre société.\r\n    ◊ Organisation des élections des délégués du personnel : Obligatoire dans toute entreprise employant un minimum d’effectif de 10 salariés dont l’embauche est confirmé après la période d’essai.\r\n    ◊ Licenciement individuel ou collectif : en cas de licenciement nous interviendrons pour veiller à l’application du code de travail. Nous agirons également en amont pour appliquer les sanctions disciplinaires prévues par le code du travail.\r\nPour les non Marocains désireux d’avoir un statut de résidents, nous assurons l’élaboration et la validation des contrats de travail étrangers auprès des administrations compétentes en vue de l’obtention de la carte de séjour Marocaine.\r\n    ◊ Salarié non Marocain d’une entreprise de droit Marocain\r\n    ◊ Statut d’expatrié\r\n    ◊ Statut de détaché\r\n        </div>\r\n        [[$sidebar_right]]\r\n   </div>\r\n    [[$footer]]', 1, 1, 14, 1, 1, 1, 1313717582, 1, 1313717698, 0, 0, 0, 1313717698, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_htmlsnippets`
--

CREATE TABLE IF NOT EXISTS `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`) VALUES
(1, 'header', '', 0, 0, 0, '<div id="wrapper">\n    \n    <div id="header">\n        <div id="header-logo"></div>\n        <div id="header-menu">\n            <ul>\n                <li class="accueil"><a href="?id=1"><img src="img/accueil_icon.png" alt="Accueil" /></a></li>\n                <li class="presentation menu-button"><a href="?id=2"><img src="img/presentation.png" alt="Présentation" /></a></li>\n                <li class="nos-services menu-button"><a href="?id=3"><img src="img/nos_services.png" alt="Nos services" /></a></li>\n                <li class="notre-charte menu-button"><a href="?id=4"><img src="img/notre_charte.png" alt="Notre charte" /></a></li>\n                <li class="espace-clients menu-button"><a href="?id=5"><img src="img/espace_clients.png" alt="Espace clients" /></a></li>\n                <li class="actualites menu-button"><a href="?id=6"><img src="img/actualites.png" alt="Actualités" /></a></li>\n                <li class="recrutement menu-button"><a href="?id=7"><img src="img/recrutement.png" alt="Recrutement" /></a></li>\n                <li class="contact menu-button"><a href="?id=8"><img src="img/contact.png" alt="Contact" /></a></li>\n            </ul>\n        </div>\n    </div>\n\n    <div id="sub-menu">Accueil</div>\n    ', 0, 'a:0:{}'),
(2, 'footer', '', 0, 0, 0, '    <div id="footer">\n        <p class="copy">&copy; 2011 tous droits réservés</p>\n    </div>\n    \n</div>', 0, 'a:0:{}'),
(3, 'home', '', 0, 0, 0, '    <div id="container">\n        <div id="slide">\n            <img src="img/slide.png" alt=""/>\n        </div>\n        \n        [[$sidebar_left]]\n        \n        <div id="content">\n            <div class="widget">\n                <p class="widget-title"><img src="img/nos_services_2.png" alt="Nos services" /></p>\n                <div class="widget-content nos-services">\n                    <ul>\n                        <li><a href="?id=10">Gestion du portefeuille clientèle.</a></li>\n                        <li><a href="?id=11">Recouvrement amiable des impayés.</a></li>\n                        <li><a href="?id=12">Recouvrement judiciaire des impayés.</a></li>\n                        <li><a href="?id=13">Enquête de localisation et solvabilité.</a></li>\n                        <li><a href="?id=14">Service consultations.</a></li>\n                        <li><a href="?id=15">Assistance Juridique, Prévention et Gestion du Risque Juridique.</a></li>\n                    </ul>\n                </div>                 \n            </div>\n            <div id="call-us">\n                <img src="img/appelez_nous.png" alt="" />\n            </div>\n            <div id="newsletter">\n                <div class="emailing-icon"><img src="img/emailing_icon.png" alt="" /></div>\n                <p class="accroche">Recevez les dernières actualités et conseils exclusifs de maroc.market.ma</p>\n                <form>\n                    <input type="text" id="email" name="email" />\n                    <input type="image" src="img/emailing_btn.png" />\n                </form>\n            </div>\n        </div>\n        \n        [[$sidebar_right]]\n    </div>', 0, 'a:0:{}'),
(6, 'sidebar_right', '', 0, 0, 0, '        <div id="sidebar-right">\n            <div class="widget">\n                <p class="widget-title"><img src="img/espace_client.png" alt="Espace client" /></p>\n                <form action="#" method="post">\n                    <div class="widget-content">\n                        <label class="label">Email</label><input type="text" name="email" class="input" /><br />\n                        <label class="label">Mot de passe</label><input type="password" name="password" class="input" />\n                        <br /><br />\n                        <img src="img/triangle1_espace.png" /> <a href="#passe-oublie" class="blue">Mot de passe oublié</a>\n                        <label class="persist" for="persist">Me reconnaître</label> <input type="checkbox" id="persist" name="persist" />\n                        <br /><br />\n                        <p class="btn-espace"><input type="image" src="img/btn_espace.png" alt="" /></p>\n                        <br />\n                        <img src="img/triangle2_espace.png" /> <span class="not-signup">Pas encore inscrit?</span><br />\n                        <p class="create-account"><a href="#creer-votre-compte" class="blue">Créez votre compte</a></p>\n                    </div>  \n                </form>\n            </div>\n            <div class="widget">\n                <p class="widget-title"><img src="img/devis.png" alt="Demandez un devis" /></p>\n                <p class="widget-normal">\n                    <img src="img/demander_devis.png" alt="" />\n                </p>                 \n            </div>\n            <div class="widget">\n                <p class="widget-title"><img src="img/notre_plaquette.png" alt="Notre plaquette" /></p>\n                <p class="widget-normal"><img src="img/notre_plaquette_cln.png" alt="Notre plaquette" /></p>                 \n            </div>            \n        </div>', 0, 'a:0:{}'),
(5, 'sidebar_left', '', 0, 0, 0, '        <div id="sidebar-left">\n            <div class="widget">\n                <p class="widget-title"><img src="img/last_news.png" alt="Last news" /></p>\n                <p class="widget-content">\n                    <span class="last-news">Impôt des patentes</span>\n                    Cet impôt est dû par toutes les personnes physiques et morales exerçant une activité commerciale ou industrielle. Le principal comprend la taxe proportionnelle ...\n                    <br /> <br />\n                    <span class="last-news">La TPA</span>\n                    S''applique aux bénéfices réalisés au Maroc par les établissements de sociétés ayant leur siège hors de celui-ci lorsque ces bénéfices sont mis à la disposition de ces sociétés à l''étranger...                  \n                </p>\n            </div>\n            <div class="widget">\n                <p class="widget-title"><img src="img/notre_bureau.png" alt="Notre bureau" /></p>\n                <p class="widget-content notre-bureau">\n                    1, Rue Al moubarrid Cité Plateux Extension RC Val Fleuri Appt N° 2, 20390 - Casablanca<br /><br />\n                    Tél.: +212 529 01.04.93<br /><br />\n                    Fax : +212 529 01.04.95<br /><br />\n                    E-mail : marocmarket@menara.ma<br /><br />\n                    <label class="contact-us"><img src="img/contactez_nous.png" alt="" /></label>\n                </p>                \n            </div>\n        </div>', 0, 'a:0:{}'),
(4, 'presentation', '', 0, 0, 0, '    <div id="container">\n        [[$sidebar_left]]\n        <div id="content">\n        <h1>Présentation :</h1>\n        <p>\n  Notre Cabinet est créé de la fusion de nos compétences et langue expérience en domaine de recouvrement amiable et judicaire des créances litigieuses, conseil juridique et fiscal, ainsi réunis donnent naissance à un dispositif de services qui constitue une plue value pour nos clients aussi bien dans le cadre des prestations régulières que des prestations exceptionnelles et temporaires. \nLe professionnalisme, l’expertise, la transparence, le travail d’équipe, la qualité de notre travail, constituent nos valeurs fondamentales et concepts de notre système de qualité.\n        </p>\n        </div>\n        [[$sidebar_right]]\n   </div>', 0, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugins`
--

CREATE TABLE IF NOT EXISTS `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_plugin_events`
--

CREATE TABLE IF NOT EXISTS `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_snippets`
--

CREATE TABLE IF NOT EXISTS `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_templates`
--

CREATE TABLE IF NOT EXISTS `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`) VALUES
(1, 'layout_base', 'Template', 0, 0, '', 0, '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">\n<head>\n    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\n\n    <title>[[*pagetitle]]</title>\n    <link href="css/base.css" rel="stylesheet" type="text/css" />\n    <link href="css/style.css" rel="stylesheet" type="text/css" />\n</head>\n\n<body>\n[[*content]]\n</body>\n</html>', 0, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvars`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` text,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_access`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_site_tmplvar_templates`
--

CREATE TABLE IF NOT EXISTS `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_eventnames`
--

CREATE TABLE IF NOT EXISTS `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnTempFormDelete', 1, 'Templates'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnEmptyTrash', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnBeforeWebLogin', 3, 'Security'),
('OnWebAuthentication', 3, 'Security'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnPageUnauthorized', 1, 'Security'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserNotFound', 1, 'Users'),
('OnBeforeUserActivate', 1, 'Users'),
('OnUserActivate', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserSave', 1, 'Users'),
('OnUserRemove', 1, 'Users'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnWebPagePrerender', 5, 'System'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnCacheUpdate', 4, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnSiteRefresh', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnWebPageInit', 5, 'System'),
('OnLoadWebDocument', 5, 'System'),
('OnParseDocument', 5, 'System'),
('OnWebPageComplete', 5, 'System'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnPageNotFound', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnInitCulture', 3, 'Internationalization'),
('OnCategorySave', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnChunkSave', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnContextSave', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnPluginSave', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetBeforeRemove', 1, 'Property Sets');

-- --------------------------------------------------------

--
-- Table structure for table `modx_system_settings`
--

CREATE TABLE IF NOT EXISTS `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('archive_with', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('automatic_alias', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('base_help_url', 'http://rtfm.modx.com/display/revolution20/', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_format', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00'),
('compress_css', '1', 'combo-boolean', 'core', 'manager', '2011-08-18 19:08:33'),
('compress_js', '1', 'combo-boolean', 'core', 'manager', '2011-08-18 19:08:33'),
('concat_js', '1', 'combo-boolean', 'core', 'manager', '2011-08-18 19:08:33'),
('container_suffix', '/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('context_tree_sort', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortby', 'key', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('cultureKey', 'fr', 'modx-combo-language', 'core', 'language', '2011-08-18 19:08:33'),
('custom_resource_classes', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('default_per_page', '20', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('default_template', '1', 'modx-combo-template', 'core', 'site', '0000-00-00 00:00:00'),
('editor_css_path', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('editor_css_selectors', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00'),
('emailsender', 'root@server.lan', 'textfield', 'core', 'authentication', '2011-08-18 19:08:33'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('error_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00'),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security', 'http://feeds.feedburner.com/modxsecurity', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('filemanager_path', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('forward_merge_excludes', 'type,published,class_key,context_key', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>"~:`@\\?\\[\\]\\{\\}\\|\\^''\\\\]/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00'),
('friendly_urls', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('mail_smtp_user', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00'),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_favicon_url', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_direction', 'ltr', 'textfield', 'core', 'language', '0000-00-00 00:00:00'),
('manager_lang_attribute', 'fr', 'textfield', 'core', 'language', '2011-08-18 19:08:33'),
('manager_language', 'fr', 'modx-combo-language', 'core', 'language', '2011-08-18 19:08:33'),
('manager_theme', 'default', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('manager_use_tabs', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', '0000-00-00 00:00:00'),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_host', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_password', '', 'text-password', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_port', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('proxy_username', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00'),
('password_generated_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('password_min_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00'),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00'),
('publish_default', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('rb_base_dir', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('rb_base_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('request_param_id', 'id', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00'),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('search_default', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('server_offset_time', '0', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('server_protocol', 'http', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('session_cookie_domain', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_path', '/', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00'),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('session_name', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00'),
('set_header', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00'),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_start', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_status', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('site_unavailable_page', '0', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('tree_root_id', '0', 'numberfield', 'core', 'manager', '0000-00-00 00:00:00'),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00'),
('unauthorized_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00'),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,xls,txt,ppt,pptx,docx,xlsx,jpg,jpeg,png,gif,psd,ico,bmp', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_maxsize', '1048576', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', '0000-00-00 00:00:00'),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00'),
('use_browser', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00'),
('use_editor', '1', 'combo-boolean', 'core', 'editor', '0000-00-00 00:00:00'),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2011-08-18 19:08:33'),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00'),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2011-08-18 19:09:15'),
('welcome_screen_url', 'http://misc.modx.com/revolution/welcome.21.html', 'textfield', 'core', 'manager', '0000-00-00 00:00:00'),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00'),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00'),
('settings_version', '2.1.3-pl', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('settings_distro', 'traditional', 'textfield', 'core', 'system', '0000-00-00 00:00:00'),
('new_folder_permissions', '0777', 'textfield', 'core', '', '0000-00-00 00:00:00'),
('new_file_permissions', '0666', 'textfield', 'core', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_packages`
--

CREATE TABLE IF NOT EXISTS `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workspace` int(10) unsigned NOT NULL DEFAULT '0',
  `provider` int(10) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `version_minor` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `version_patch` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_transport_providers`
--

CREATE TABLE IF NOT EXISTS `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`) VALUES
(1, 'modx.com', 'The official MODX transport facility for 3rd party components.', 'http://rest.modx.com/extras/', '', '', '2011-07-21 12:01:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_users`
--

CREATE TABLE IF NOT EXISTS `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`) VALUES
(1, 'root', '/qmox9l3PwHnOj6dc34DfYFb/y7MzfDrWr+KNoxrHQ8=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '3d75980e22f8594a4b51b3c04e5fc2c4');

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_attributes`
--

CREATE TABLE IF NOT EXISTS `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Compte administrateur par défaut', 'root@server.lan', '', '', 0, 0, 0, 1, 0, 1313694554, 0, 'ks421cktookfmm65f8ae9bun40', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_group_roles`
--

CREATE TABLE IF NOT EXISTS `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_messages`
--

CREATE TABLE IF NOT EXISTS `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modx_user_settings`
--

CREATE TABLE IF NOT EXISTS `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `modx_workspaces`
--

CREATE TABLE IF NOT EXISTS `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attributes` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `sctive` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '/media/data/server/sites/cabinet/core/', '2011-08-18 19:08:27', 1, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
