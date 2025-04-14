-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 11:01 PM
-- Server version: 5.6.17-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allods_master`
--

-- --------------------------------------------------------
create schema if not exists allods_master;

use allods_master;

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) NOT NULL,
  `host_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `started_at` timestamp NOT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `main_log_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) NOT NULL,
  `host_id` bigint(20) NOT NULL,
  `shard_id` bigint(20) NOT NULL,
  `role` varchar(32) NOT NULL,
  `remote_launch_dir` varchar(64) NOT NULL,
  `type` varchar(32) NOT NULL,
  `config` mediumtext NOT NULL,
  `min_assigned_port` int(11) NOT NULL,
  `max_assigned_port` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_templates`
--

CREATE TABLE `app_templates` (
  `id` bigint(20) NOT NULL,
  `app_name` varchar(64) NOT NULL,
  `template` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `base_part_servers`
--

CREATE TABLE `base_part_servers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `host_id` bigint(20) NOT NULL,
  `remote_launch_dir` varchar(64) NOT NULL,
  `config` mediumtext NOT NULL,
  `realm_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ccu_records`
--

CREATE TABLE `ccu_records` (
  `id` bigint(20) NOT NULL,
  `shard_id` bigint(20) NOT NULL DEFAULT '-1',
  `frontend_id` smallint(6) NOT NULL DEFAULT '-1',
  `ccu` int(11) NOT NULL DEFAULT '-1',
  `stored_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `common_configs`
--

CREATE TABLE `common_configs` (
  `id` bigint(20) NOT NULL,
  `object_kind` varchar(32) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `config` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config_history`
--

CREATE TABLE `config_history` (
  `id` bigint(20) NOT NULL,
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `object_kind` varchar(32) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_name` varchar(250) NOT NULL,
  `config` mediumtext NOT NULL,
  `record_kind` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_history`
--

INSERT INTO `config_history` (`id`, `logged_at`, `object_kind`, `object_id`, `object_name`, `config`, `record_kind`) VALUES
(1, '2023-03-29 11:26:21', 'Realm', 1, 'Default', '<?xml version="1.0" encoding="UTF-8"?>\n<config>\n    <masterServer ip="" lang="en" warningLog="true">\n        <net ip="127.0.0.1" port="8089"/>\n        <api ip="127.0.0.1" port="10500"/>\n        <agent ip="127.0.0.1" port="9550"/>\n    </masterServer>\n</config>\n', 'Change');

-- --------------------------------------------------------

--
-- Table structure for table `db_backup_scripts`
--

CREATE TABLE `db_backup_scripts` (
  `id` bigint(20) NOT NULL,
  `db_kind` varchar(100) NOT NULL,
  `backup_kind` varchar(100) NOT NULL,
  `script` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_param`
--

CREATE TABLE `dynamic_param` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `high_level_updates`
--

CREATE TABLE `high_level_updates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `performed_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `high_level_updates`
--

INSERT INTO `high_level_updates` (`id`, `name`, `performed_at`) VALUES
(1, 'masterServer.main.highLevelUpdates.BasePartCutter', '2023-03-29 11:26:20'),
(2, 'masterServer.plugins.projectSupport.a1.updates.HistoryInitializer', '2023-03-29 11:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `hosts`
--

CREATE TABLE `hosts` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `internal_ip` varchar(250) NOT NULL,
  `external_ip` varchar(250) NOT NULL,
  `client_ip` varchar(250) NOT NULL,
  `port_ranges` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `man_sources`
--

CREATE TABLE `man_sources` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `man_sources`
--

INSERT INTO `man_sources` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `man_versions`
--

CREATE TABLE `man_versions` (
  `id` bigint(20) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `deploy_dir` varchar(250) NOT NULL,
  `host_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `params`
--

CREATE TABLE `params` (
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `host` varchar(200) DEFAULT NULL,
  `last_changet_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `realms`
--

CREATE TABLE `realms` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `version_id` bigint(20) DEFAULT NULL,
  `config` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `realms`
--

INSERT INTO `realms` (`id`, `name`, `version_id`, `config`) VALUES
(1, 'Default', NULL, '<?xml version="1.0" encoding="UTF-8"?>\n<config>\n    <masterServer ip="" lang="en" warningLog="true">\n        <net ip="127.0.0.1" port="8089"/>\n        <api ip="127.0.0.1" port="10500"/>\n        <agent ip="127.0.0.1" port="9550"/>\n    </masterServer>\n</config>\n');

-- --------------------------------------------------------

--
-- Table structure for table `schema_versions`
--

CREATE TABLE `schema_versions` (
  `version` int(11) NOT NULL,
  `last_changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(100) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_versions`
--

INSERT INTO `schema_versions` (`version`, `last_changed_at`, `username`, `ip`, `revision`) VALUES
(1530, '2023-03-29 11:26:20', 'Administrator', '205.134.224.160', 523044);

-- --------------------------------------------------------

--
-- Table structure for table `scp_sources`
--

CREATE TABLE `scp_sources` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `login` varchar(250) NOT NULL,
  `pwd` varchar(250) NOT NULL,
  `host` varchar(32) NOT NULL,
  `port` int(11) NOT NULL,
  `path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scp_versions`
--

CREATE TABLE `scp_versions` (
  `id` bigint(20) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `deploy_dir` varchar(250) NOT NULL,
  `sub_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shard`
--

CREATE TABLE `shard` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `config` mediumtext NOT NULL,
  `version_id` bigint(20) DEFAULT NULL,
  `realm_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `type`) VALUES
(1, 'ManualSource');

-- --------------------------------------------------------

--
-- Table structure for table `ssh_access`
--

CREATE TABLE `ssh_access` (
  `id` bigint(20) NOT NULL,
  `host_mask` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `key` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` bigint(20) NOT NULL,
  `host` varchar(100) NOT NULL,
  `path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `storage_sources`
--

CREATE TABLE `storage_sources` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `host_id` bigint(20) NOT NULL,
  `storage_directory` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `storage_versions`
--

CREATE TABLE `storage_versions` (
  `id` bigint(20) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `deploy_dir` varchar(250) NOT NULL,
  `archive_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `svn_externals_mapping`
--

CREATE TABLE `svn_externals_mapping` (
  `version_id` bigint(20) NOT NULL,
  `mapping_path` varchar(250) NOT NULL,
  `repository` varchar(250) NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `svn_sources`
--

CREATE TABLE `svn_sources` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `login` varchar(250) NOT NULL,
  `pwd` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `svn_versions`
--

CREATE TABLE `svn_versions` (
  `id` bigint(20) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `deploy_dir` varchar(250) NOT NULL,
  `revision` int(11) NOT NULL,
  `path` varchar(250) NOT NULL,
  `autoupdateable` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_config`
--

CREATE TABLE `user_config` (
  `id` bigint(20) NOT NULL,
  `key` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint(20) NOT NULL,
  `object_kind` varchar(32) NOT NULL DEFAULT '',
  `object_id` bigint(20) NOT NULL DEFAULT '-1',
  `message` mediumtext NOT NULL,
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `started_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_activities_host_id` (`host_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_applications_shard_id` (`shard_id`),
  ADD KEY `idx_applications_host_id` (`host_id`),
  ADD KEY `idx_applications_type` (`shard_id`,`type`);

--
-- Indexes for table `app_templates`
--
ALTER TABLE `app_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_name` (`app_name`);

--
-- Indexes for table `base_part_servers`
--
ALTER TABLE `base_part_servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_base_part_servers_host_id` (`host_id`),
  ADD KEY `idx_base_part_servers_realm_id` (`realm_id`);

--
-- Indexes for table `ccu_records`
--
ALTER TABLE `ccu_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shard_id` (`shard_id`,`frontend_id`,`stored_at`),
  ADD KEY `stored_at` (`stored_at`);

--
-- Indexes for table `common_configs`
--
ALTER TABLE `common_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_obj_kind_id` (`object_kind`,`object_id`);

--
-- Indexes for table `config_history`
--
ALTER TABLE `config_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_object_id` (`object_id`),
  ADD KEY `idx_object_name` (`object_name`);

--
-- Indexes for table `db_backup_scripts`
--
ALTER TABLE `db_backup_scripts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_kind` (`db_kind`,`backup_kind`);

--
-- Indexes for table `dynamic_param`
--
ALTER TABLE `dynamic_param`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `high_level_updates`
--
ALTER TABLE `high_level_updates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_high_l_u_name` (`name`);

--
-- Indexes for table `hosts`
--
ALTER TABLE `hosts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `internal_ip` (`internal_ip`);

--
-- Indexes for table `man_sources`
--
ALTER TABLE `man_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `man_versions`
--
ALTER TABLE `man_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_man_versions_source_id` (`source_id`),
  ADD KEY `idx_man_versions_id` (`id`),
  ADD KEY `idx_man_versions_host_id` (`host_id`);

--
-- Indexes for table `params`
--
ALTER TABLE `params`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `realms`
--
ALTER TABLE `realms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `idx_realms_version_id` (`version_id`);

--
-- Indexes for table `schema_versions`
--
ALTER TABLE `schema_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `scp_sources`
--
ALTER TABLE `scp_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_scp_sources_id` (`id`);

--
-- Indexes for table `scp_versions`
--
ALTER TABLE `scp_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_scp_versions_id` (`id`),
  ADD KEY `idx_scp_versions_source_id` (`source_id`);

--
-- Indexes for table `shard`
--
ALTER TABLE `shard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fk_shards_version_id` (`version_id`),
  ADD KEY `idx_shard_realm_id` (`realm_id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssh_access`
--
ALTER TABLE `ssh_access`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `host_mask` (`host_mask`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_sources`
--
ALTER TABLE `storage_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_storage_sources_id` (`id`),
  ADD KEY `idx_storage_sources_host_id` (`host_id`);

--
-- Indexes for table `storage_versions`
--
ALTER TABLE `storage_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_storage_versions_id` (`id`),
  ADD KEY `idx_storage_versions_source_id` (`source_id`);

--
-- Indexes for table `svn_externals_mapping`
--
ALTER TABLE `svn_externals_mapping`
  ADD KEY `idx_svn_externals_mapping_version_id` (`version_id`);

--
-- Indexes for table `svn_sources`
--
ALTER TABLE `svn_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_svn_sources_id` (`id`);

--
-- Indexes for table `svn_versions`
--
ALTER TABLE `svn_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_svn_versions_id` (`id`),
  ADD KEY `idx_svn_versions_source_id` (`source_id`);

--
-- Indexes for table `user_config`
--
ALTER TABLE `user_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`,`name`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logged_at` (`logged_at`),
  ADD KEY `object_kind` (`object_kind`,`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_templates`
--
ALTER TABLE `app_templates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `base_part_servers`
--
ALTER TABLE `base_part_servers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ccu_records`
--
ALTER TABLE `ccu_records`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `common_configs`
--
ALTER TABLE `common_configs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `config_history`
--
ALTER TABLE `config_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_backup_scripts`
--
ALTER TABLE `db_backup_scripts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dynamic_param`
--
ALTER TABLE `dynamic_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `high_level_updates`
--
ALTER TABLE `high_level_updates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hosts`
--
ALTER TABLE `hosts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `realms`
--
ALTER TABLE `realms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shard`
--
ALTER TABLE `shard`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ssh_access`
--
ALTER TABLE `ssh_access`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_config`
--
ALTER TABLE `user_config`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `fk_activities_host_id` FOREIGN KEY (`host_id`) REFERENCES `hosts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `fk_applications_host_id` FOREIGN KEY (`host_id`) REFERENCES `hosts` (`id`),
  ADD CONSTRAINT `fk_applications_shard_id` FOREIGN KEY (`shard_id`) REFERENCES `shard` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `base_part_servers`
--
ALTER TABLE `base_part_servers`
  ADD CONSTRAINT `fk_base_part_servers_host_id` FOREIGN KEY (`host_id`) REFERENCES `hosts` (`id`),
  ADD CONSTRAINT `fk_base_part_servers_realm_id` FOREIGN KEY (`realm_id`) REFERENCES `realms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `man_sources`
--
ALTER TABLE `man_sources`
  ADD CONSTRAINT `fk_man_sources_id` FOREIGN KEY (`id`) REFERENCES `sources` (`id`);

--
-- Constraints for table `man_versions`
--
ALTER TABLE `man_versions`
  ADD CONSTRAINT `fk_man_versions_host_id` FOREIGN KEY (`host_id`) REFERENCES `hosts` (`id`),
  ADD CONSTRAINT `fk_man_versions_id` FOREIGN KEY (`id`) REFERENCES `versions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_man_versions_source_id` FOREIGN KEY (`source_id`) REFERENCES `man_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `realms`
--
ALTER TABLE `realms`
  ADD CONSTRAINT `fk_realms_version_id` FOREIGN KEY (`version_id`) REFERENCES `versions` (`id`);

--
-- Constraints for table `scp_sources`
--
ALTER TABLE `scp_sources`
  ADD CONSTRAINT `fk_scp_sources_id` FOREIGN KEY (`id`) REFERENCES `sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scp_versions`
--
ALTER TABLE `scp_versions`
  ADD CONSTRAINT `fk_scp_versions_id` FOREIGN KEY (`id`) REFERENCES `versions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_scp_versions_source_id` FOREIGN KEY (`source_id`) REFERENCES `scp_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shard`
--
ALTER TABLE `shard`
  ADD CONSTRAINT `fk_shards_version_id` FOREIGN KEY (`version_id`) REFERENCES `versions` (`id`),
  ADD CONSTRAINT `fk_shard_realm_id` FOREIGN KEY (`realm_id`) REFERENCES `realms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `storage_sources`
--
ALTER TABLE `storage_sources`
  ADD CONSTRAINT `fk_storage_sources_host_id` FOREIGN KEY (`host_id`) REFERENCES `hosts` (`id`),
  ADD CONSTRAINT `fk_storage_sources_id` FOREIGN KEY (`id`) REFERENCES `sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `storage_versions`
--
ALTER TABLE `storage_versions`
  ADD CONSTRAINT `fk_storage_versions_id` FOREIGN KEY (`id`) REFERENCES `versions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_storage_versions_source_id` FOREIGN KEY (`source_id`) REFERENCES `storage_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `svn_externals_mapping`
--
ALTER TABLE `svn_externals_mapping`
  ADD CONSTRAINT `fk_svn_externals_mapping_version_id` FOREIGN KEY (`version_id`) REFERENCES `versions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `svn_sources`
--
ALTER TABLE `svn_sources`
  ADD CONSTRAINT `fk_svn_sources_id` FOREIGN KEY (`id`) REFERENCES `sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `svn_versions`
--
ALTER TABLE `svn_versions`
  ADD CONSTRAINT `fk_svn_versions_id` FOREIGN KEY (`id`) REFERENCES `versions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_svn_versions_source_id` FOREIGN KEY (`source_id`) REFERENCES `svn_sources` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



