

CREATE TABLE `api_key` (
  `valid_key` varchar(40) NOT NULL,
  `maxreq` int(11) DEFAULT NULL,
  `allow_fallback` tinyint(1) DEFAULT NULL,
  `allow_locate` tinyint(1) DEFAULT NULL,
  `shortname` varchar(40) DEFAULT NULL,
  `fallback_name` varchar(40) DEFAULT NULL,
  `fallback_url` varchar(256) DEFAULT NULL,
  `fallback_ratelimit` int(11) DEFAULT NULL,
  `fallback_ratelimit_interval` int(11) DEFAULT NULL,
  `fallback_cache_expire` int(11) DEFAULT NULL,
  PRIMARY KEY (`valid_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_0` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_0_modified_idx` (`modified`),
  KEY `blue_shard_0_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_0_region_idx` (`region`),
  KEY `blue_shard_0_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_1` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_1_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_1_region_idx` (`region`),
  KEY `blue_shard_1_modified_idx` (`modified`),
  KEY `blue_shard_1_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_2` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_2_region_idx` (`region`),
  KEY `blue_shard_2_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_2_created_idx` (`created`),
  KEY `blue_shard_2_modified_idx` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_3` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_3_modified_idx` (`modified`),
  KEY `blue_shard_3_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_3_region_idx` (`region`),
  KEY `blue_shard_3_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_4` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_4_region_idx` (`region`),
  KEY `blue_shard_4_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_4_modified_idx` (`modified`),
  KEY `blue_shard_4_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_5` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_5_region_idx` (`region`),
  KEY `blue_shard_5_modified_idx` (`modified`),
  KEY `blue_shard_5_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_5_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_6` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_6_modified_idx` (`modified`),
  KEY `blue_shard_6_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_6_region_idx` (`region`),
  KEY `blue_shard_6_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_7` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_7_region_idx` (`region`),
  KEY `blue_shard_7_modified_idx` (`modified`),
  KEY `blue_shard_7_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_7_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_8` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_8_region_idx` (`region`),
  KEY `blue_shard_8_modified_idx` (`modified`),
  KEY `blue_shard_8_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_8_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_9` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_9_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_9_region_idx` (`region`),
  KEY `blue_shard_9_modified_idx` (`modified`),
  KEY `blue_shard_9_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_a` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_a_region_idx` (`region`),
  KEY `blue_shard_a_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_a_modified_idx` (`modified`),
  KEY `blue_shard_a_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_b` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_b_region_idx` (`region`),
  KEY `blue_shard_b_modified_idx` (`modified`),
  KEY `blue_shard_b_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_b_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_c` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_c_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_c_modified_idx` (`modified`),
  KEY `blue_shard_c_region_idx` (`region`),
  KEY `blue_shard_c_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_d` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_d_modified_idx` (`modified`),
  KEY `blue_shard_d_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_d_region_idx` (`region`),
  KEY `blue_shard_d_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_e` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_e_region_idx` (`region`),
  KEY `blue_shard_e_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_e_modified_idx` (`modified`),
  KEY `blue_shard_e_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `blue_shard_f` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `blue_shard_f_latlon_idx` (`lat`,`lon`),
  KEY `blue_shard_f_region_idx` (`region`),
  KEY `blue_shard_f_modified_idx` (`modified`),
  KEY `blue_shard_f_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cell_area` (
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `areaid` binary(7) NOT NULL,
  `radio` tinyint(4) NOT NULL,
  `mcc` smallint(6) NOT NULL,
  `mnc` smallint(6) NOT NULL,
  `lac` smallint(5) unsigned NOT NULL,
  `radius` int(11) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `avg_cell_radius` int(10) unsigned DEFAULT NULL,
  `num_cells` int(10) unsigned DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  PRIMARY KEY (`areaid`),
  UNIQUE KEY `cell_area_areaid_unique` (`radio`,`mcc`,`mnc`,`lac`),
  KEY `cell_area_modified_idx` (`modified`),
  KEY `cell_area_region_radio_idx` (`region`,`radio`),
  KEY `cell_area_latlon_idx` (`lat`,`lon`),
  KEY `cell_area_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cell_area_ocid` (
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `areaid` binary(7) NOT NULL,
  `radio` tinyint(4) NOT NULL,
  `mcc` smallint(6) NOT NULL,
  `mnc` smallint(6) NOT NULL,
  `lac` smallint(5) unsigned NOT NULL,
  `radius` int(11) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `avg_cell_radius` int(10) unsigned DEFAULT NULL,
  `num_cells` int(10) unsigned DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  PRIMARY KEY (`areaid`),
  UNIQUE KEY `cell_area_ocid_areaid_unique` (`radio`,`mcc`,`mnc`,`lac`),
  KEY `cell_area_ocid_latlon_idx` (`lat`,`lon`),
  KEY `cell_area_ocid_region_radio_idx` (`region`,`radio`),
  KEY `cell_area_ocid_created_idx` (`created`),
  KEY `cell_area_ocid_modified_idx` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cell_gsm` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `cellid` binary(11) NOT NULL,
  `radio` tinyint(4) NOT NULL,
  `mcc` smallint(6) NOT NULL,
  `mnc` smallint(6) NOT NULL,
  `lac` smallint(5) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `psc` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cellid`),
  UNIQUE KEY `cell_gsm_cellid_unique` (`radio`,`mcc`,`mnc`,`lac`,`cid`),
  KEY `cell_gsm_created_idx` (`created`),
  KEY `cell_gsm_latlon_idx` (`lat`,`lon`),
  KEY `cell_gsm_region_idx` (`region`),
  KEY `cell_gsm_modified_idx` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cell_gsm_ocid` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `cellid` binary(11) NOT NULL,
  `radio` tinyint(4) NOT NULL,
  `mcc` smallint(6) NOT NULL,
  `mnc` smallint(6) NOT NULL,
  `lac` smallint(5) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `psc` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cellid`),
  UNIQUE KEY `cell_gsm_ocid_cellid_unique` (`radio`,`mcc`,`mnc`,`lac`,`cid`),
  KEY `cell_gsm_ocid_region_idx` (`region`),
  KEY `cell_gsm_ocid_latlon_idx` (`lat`,`lon`),
  KEY `cell_gsm_ocid_modified_idx` (`modified`),
  KEY `cell_gsm_ocid_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cell_lte` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `cellid` binary(11) NOT NULL,
  `radio` tinyint(4) NOT NULL,
  `mcc` smallint(6) NOT NULL,
  `mnc` smallint(6) NOT NULL,
  `lac` smallint(5) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `psc` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cellid`),
  UNIQUE KEY `cell_lte_cellid_unique` (`radio`,`mcc`,`mnc`,`lac`,`cid`),
  KEY `cell_lte_region_idx` (`region`),
  KEY `cell_lte_created_idx` (`created`),
  KEY `cell_lte_latlon_idx` (`lat`,`lon`),
  KEY `cell_lte_modified_idx` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cell_lte_ocid` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `cellid` binary(11) NOT NULL,
  `radio` tinyint(4) NOT NULL,
  `mcc` smallint(6) NOT NULL,
  `mnc` smallint(6) NOT NULL,
  `lac` smallint(5) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `psc` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cellid`),
  UNIQUE KEY `cell_lte_ocid_cellid_unique` (`radio`,`mcc`,`mnc`,`lac`,`cid`),
  KEY `cell_lte_ocid_latlon_idx` (`lat`,`lon`),
  KEY `cell_lte_ocid_region_idx` (`region`),
  KEY `cell_lte_ocid_modified_idx` (`modified`),
  KEY `cell_lte_ocid_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cell_wcdma` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `cellid` binary(11) NOT NULL,
  `radio` tinyint(4) NOT NULL,
  `mcc` smallint(6) NOT NULL,
  `mnc` smallint(6) NOT NULL,
  `lac` smallint(5) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `psc` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cellid`),
  UNIQUE KEY `cell_wcdma_cellid_unique` (`radio`,`mcc`,`mnc`,`lac`,`cid`),
  KEY `cell_wcdma_modified_idx` (`modified`),
  KEY `cell_wcdma_latlon_idx` (`lat`,`lon`),
  KEY `cell_wcdma_region_idx` (`region`),
  KEY `cell_wcdma_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `cell_wcdma_ocid` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `cellid` binary(11) NOT NULL,
  `radio` tinyint(4) NOT NULL,
  `mcc` smallint(6) NOT NULL,
  `mnc` smallint(6) NOT NULL,
  `lac` smallint(5) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `psc` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`cellid`),
  UNIQUE KEY `cell_wcdma_ocid_cellid_unique` (`radio`,`mcc`,`mnc`,`lac`,`cid`),
  KEY `cell_wcdma_ocid_latlon_idx` (`lat`,`lon`),
  KEY `cell_wcdma_ocid_modified_idx` (`modified`),
  KEY `cell_wcdma_ocid_region_idx` (`region`),
  KEY `cell_wcdma_ocid_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `datamap_ne` (
  `grid` binary(8) NOT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`grid`),
  KEY `datamap_ne_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `datamap_nw` (
  `grid` binary(8) NOT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`grid`),
  KEY `datamap_nw_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `datamap_se` (
  `grid` binary(8) NOT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`grid`),
  KEY `datamap_se_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `datamap_sw` (
  `grid` binary(8) NOT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`grid`),
  KEY `datamap_sw_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `export_config` (
  `name` varchar(40) NOT NULL,
  `batch` int(11) DEFAULT NULL,
  `schema` varchar(32) DEFAULT NULL,
  `url` varchar(512) DEFAULT NULL,
  `skip_keys` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `region_stat` (
  `region` varchar(2) NOT NULL,
  `gsm` int(10) unsigned DEFAULT NULL,
  `wcdma` int(10) unsigned DEFAULT NULL,
  `lte` int(10) unsigned DEFAULT NULL,
  `blue` bigint(20) unsigned DEFAULT NULL,
  `wifi` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `stat` (
  `key` tinyint(4) NOT NULL,
  `time` date NOT NULL,
  `value` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`key`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_0` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_0_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_0_modified_idx` (`modified`),
  KEY `wifi_shard_0_region_idx` (`region`),
  KEY `wifi_shard_0_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_1` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_1_modified_idx` (`modified`),
  KEY `wifi_shard_1_region_idx` (`region`),
  KEY `wifi_shard_1_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_1_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_2` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_2_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_2_modified_idx` (`modified`),
  KEY `wifi_shard_2_region_idx` (`region`),
  KEY `wifi_shard_2_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_3` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_3_modified_idx` (`modified`),
  KEY `wifi_shard_3_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_3_region_idx` (`region`),
  KEY `wifi_shard_3_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_4` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_4_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_4_region_idx` (`region`),
  KEY `wifi_shard_4_modified_idx` (`modified`),
  KEY `wifi_shard_4_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_5` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_5_modified_idx` (`modified`),
  KEY `wifi_shard_5_region_idx` (`region`),
  KEY `wifi_shard_5_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_5_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_6` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_6_modified_idx` (`modified`),
  KEY `wifi_shard_6_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_6_region_idx` (`region`),
  KEY `wifi_shard_6_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_7` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_7_region_idx` (`region`),
  KEY `wifi_shard_7_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_7_modified_idx` (`modified`),
  KEY `wifi_shard_7_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_8` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_8_region_idx` (`region`),
  KEY `wifi_shard_8_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_8_modified_idx` (`modified`),
  KEY `wifi_shard_8_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_9` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_9_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_9_modified_idx` (`modified`),
  KEY `wifi_shard_9_region_idx` (`region`),
  KEY `wifi_shard_9_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_a` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_a_region_idx` (`region`),
  KEY `wifi_shard_a_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_a_modified_idx` (`modified`),
  KEY `wifi_shard_a_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_b` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_b_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_b_region_idx` (`region`),
  KEY `wifi_shard_b_modified_idx` (`modified`),
  KEY `wifi_shard_b_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_c` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_c_modified_idx` (`modified`),
  KEY `wifi_shard_c_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_c_region_idx` (`region`),
  KEY `wifi_shard_c_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_d` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_d_region_idx` (`region`),
  KEY `wifi_shard_d_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_d_modified_idx` (`modified`),
  KEY `wifi_shard_d_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_e` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_e_region_idx` (`region`),
  KEY `wifi_shard_e_modified_idx` (`modified`),
  KEY `wifi_shard_e_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_e_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wifi_shard_f` (
  `max_lat` double DEFAULT NULL,
  `min_lat` double DEFAULT NULL,
  `max_lon` double DEFAULT NULL,
  `min_lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `radius` int(10) unsigned DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `samples` int(10) unsigned DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `block_first` date DEFAULT NULL,
  `block_last` date DEFAULT NULL,
  `block_count` tinyint(3) unsigned DEFAULT NULL,
  `mac` binary(6) NOT NULL,
  PRIMARY KEY (`mac`),
  KEY `wifi_shard_f_latlon_idx` (`lat`,`lon`),
  KEY `wifi_shard_f_modified_idx` (`modified`),
  KEY `wifi_shard_f_region_idx` (`region`),
  KEY `wifi_shard_f_created_idx` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

