CREATE TABLE `tcontent` (	  `TContent_ID` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	  `SiteID` varchar(25) character set utf8 default NULL,
	  `ModuleID` char(35) character set utf8 default NULL,
	  `ParentID` char(35) character set utf8 default NULL,
	  `ContentID` char(35) character set utf8 default NULL,
	  `ContentHistID` char(35) character set utf8 default NULL,
	  `RemoteID` varchar(255) character set utf8 default NULL,
	  `RemoteURL` varchar(255) character set utf8 default NULL,
	  `RemotePubDate` varchar(50) character set utf8 default NULL,
	  `RemoteSourceURL` varchar(255) character set utf8 default NULL,
	  `RemoteSource` varchar(255) character set utf8 default NULL,
	  `Credits` varchar(255) character set utf8 default NULL,
	  `FileID` char(35) character set utf8 default NULL,
	  `Template` varchar(50) character set utf8 default NULL,
	  `Type` varchar(25) character set utf8 default NULL,
	  `subType` varchar(25) character set utf8 default NULL,
	  `Active` tinyint(3) default '0',
	  `OrderNo` int(10) default NULL,
	  `Title` varchar(255) character set utf8 default NULL,
	  `MenuTitle` varchar(255) character set utf8 default NULL,
	  `Summary` longtext,
	  `Filename` varchar(255) character set utf8 default NULL,
	  `MetaDesc` longtext,
	  `MetaKeyWords` longtext,
	  `Body` longtext,
	  `lastUpdate` datetime default NULL,
	  `lastUpdateBy` varchar(50) character set utf8 default NULL,
	  `lastUpdateByID` varchar(50) character set utf8 default NULL,
	  `DisplayStart` datetime default NULL,
	  `DisplayStop` datetime default NULL,
	  `Display` tinyint(3) default NULL,
	  `Approved` tinyint(3) default NULL,
	  `IsNav` tinyint(3) default NULL,
	  `Restricted` tinyint(3) default NULL,
	  `RestrictGroups` varchar(255) character set utf8 default NULL,
	  `Target` varchar(50) character set utf8 default NULL,
	  `TargetParams` varchar(255) character set utf8 default NULL,
	  `responseChart` tinyint(3) default NULL,
	  `responseMessage` longtext,
	  `responseSendTo` longtext,
	  `responseDisplayFields` longtext,
	  `moduleAssign` varchar(255) character set utf8 default NULL,
	  `displayTitle` tinyint(3) default NULL,
	  `Notes` longtext,
	  `inheritObjects` varchar(25) character set utf8 default NULL,
	  `isFeature` tinyint(3) default NULL,
	  `ReleaseDate` datetime default NULL,
	  `IsLocked` tinyint(3) default NULL,
	  `nextN` int(10) default NULL,
	  `sortBy` varchar(50) character set utf8 default NULL,
	  `sortDirection` varchar(50) character set utf8 default NULL,
	  `featureStart` datetime default NULL,
	  `featureStop` datetime default NULL,
	  `forceSSL` tinyint(3) NOT NULL default '0',
	  `audience` longtext,
	  `keyPoints` longtext,
	  `searchExclude` tinyint(3) default NULL,
	  `path` longtext,
	  `tags` longtext,
	   PRIMARY KEY  (`TContent_ID`),
	   KEY `IX_TContent` (`ContentID`),
	   KEY `IX_TContent_1` (`ContentHistID`),
	   KEY `IX_TContent_2` (`SiteID`),
	   KEY `IX_TContent_3` (`ParentID`),
	   KEY `IX_TContent_4` (`RemoteID`),
	   KEY `IX_TContent_5` (`ModuleID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentstats` (	  `contentID` char(35) NOT NULL default '',
	  `siteID` varchar(25) NOT NULL default '',
	  `views` int(10) unsigned NOT NULL default '0',
	  `rating` float NOT NULL default '0',
	  `totalVotes` int(10) unsigned NOT NULL default '0',
	  `upVotes` int(10) unsigned NOT NULL default '0',
	  `downVotes` int(10) unsigned NOT NULL default '0',
	  `comments` int(10) unsigned NOT NULL default '0',
	  PRIMARY KEY  (`contentID`,
`siteID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentassignments` (	  `contentID` char(35) NOT NULL default '',
	  `contentHistID` char(35) NOT NULL default '',
	  `siteID` varchar(25) character set utf8 NOT NULL default '',
	  `userID` char(35) NOT NULL default '',
	  PRIMARY KEY  (`contentID`,
`contentHistID`,
`siteID`,
`userID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentcategories` (	  `categoryID` char(35) character set utf8 NOT NULL default '',
	  `siteID` varchar(25) character set utf8 default NULL,
	  `parentID` char(35) character set utf8 default NULL,
	  `dateCreated` datetime default NULL,
	  `lastUpdate` datetime default NULL,
	  `lastUpdateBy` varchar(50) character set utf8 default NULL,
	  `name` varchar(50) character set utf8 default NULL,
	  `notes` longtext,
	  `isInterestGroup` int(10) default NULL,
	  `isActive` int(10) default NULL,
	  `isOpen` int(10) default NULL,
	  `sortBy` varchar(50) default NULL,
	  `sortDirection` varchar(50) default NULL,
	  `restrictGroups` varchar(255) character set utf8 default NULL,
	  `path` longtext,
	  PRIMARY KEY  (`categoryID`),
	  KEY `IX_TContentCategories` (`siteID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentcategoryassign` (	  `contentHistID` char(35) character set utf8 NOT NULL default '',
	  `categoryID` char(35) character set utf8 NOT NULL default '',
	  `contentID` char(35) character set utf8 default NULL,
	  `isFeature` int(10) default NULL,
	  `orderno` int(10) default NULL,
	  `siteID` varchar(50) character set utf8 default NULL,
	  `featureStart` datetime default NULL,
	  `featureStop` datetime default NULL,
	  PRIMARY KEY  (`contentHistID`,
`categoryID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentcomments` (	  `commentid` char(35) character set utf8 NOT NULL default '',
	  `contentid` char(35) character set utf8 default NULL,
	  `contenthistid` char(35) character set utf8 default NULL,
	  `url` varchar(50) character set utf8 default NULL,
	  `name` varchar(50) character set utf8 default NULL,
	  `comments` longtext,
	  `entered` datetime default NULL,
	  `email` varchar(100) character set utf8 default NULL,
	  `siteid` varchar(25) character set utf8 default NULL,
	  `ip` varchar(50) character set utf8 default NULL,
	  `isApproved` tinyint(3) default '0',
	  PRIMARY KEY  (`commentid`),
	  KEY `IX_TContentComments` (`contentid`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentdisplaytitleapprovals` (	  `contentid` char(35) character set utf8 NOT NULL default '',
	  `isApproved` tinyint(3) default NULL,
	  `email` varchar(150) character set utf8 default NULL,
	  `siteid` varchar(25) character set utf8 default NULL	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontenteventreminders` (	  `contentId` char(35) character set utf8 NOT NULL default '',
	  `siteId` varchar(35) character set utf8 NOT NULL default '',
	  `email` varchar(200) character set utf8 NOT NULL default '',
	  `RemindDate` datetime default NULL,
	  `RemindHour` int(10) default NULL,
	  `RemindMinute` int(10) default NULL,
	  `RemindInterval` int(10) default NULL,
	  `isSent` int(10) default NULL	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentfeedadvancedparams` (	  `paramID` char(35) NOT NULL default '',
	  `feedID` char(35) NOT NULL default '',
	  `param` decimal(18,
0) default NULL,
	  `relationship` varchar(50) character set utf8 default NULL,
	  `field` varchar(100) character set utf8 default NULL,
	  `condition` varchar(50) character set utf8 default NULL,
	  `criteria` varchar(200) character set utf8 default NULL,
	  `dataType` varchar(50) character set utf8 default NULL,
	  PRIMARY KEY  (`paramID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentfeeditems` (	  `feedID` char(35) NOT NULL default '',
	  `itemID` char(35) NOT NULL default '',
	  `type` varchar(50) default NULL,
	PRIMARY KEY  (`feedID`,
`itemID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentfeeds` (	  `feedID` char(35) NOT NULL default '',
	  `siteID` varchar(35) default NULL,
	  `parentID` char(35) default NULL,
	  `name` varchar(250) default NULL,
	  `isActive` tinyint(3) default NULL,
	  `isPublic` tinyint(3) default NULL,
	  `isDefault` tinyint(3) default NULL,
	  `isFeaturesOnly` tinyint(3) default NULL,
	  `description` longtext,
	  `maxItems` int(10) default NULL,
	  `allowHTML` tinyint(3) default NULL,
	  `lang` varchar(50) default NULL,
	  `lastUpdateBy` varchar(100) default NULL,
	  `lastUpdate` datetime default NULL,
	  `dateCreated` datetime default NULL,
	  `restricted` tinyint(3) default NULL,
	  `restrictGroups` longtext,
	  `version` varchar(50) default NULL,
	  `channelLink` varchar(250) default NULL,
	  `Type` varchar(50) default NULL,
	  `sortBy` varchar(50) default NULL,
	  `sortDirection` varchar(50) default NULL,
	  `nextN` int(10) default NULL,
	  `displayName` tinyint(3) default NULL,
	  `displayRatings` tinyint(3) default NULL,
	  `displayComments` tinyint(3) default NULL,
	  PRIMARY KEY  (`feedID`),
	  KEY `IX_TContentFeeds` (`siteID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentobjects` (	  `ContentHistID` char(35) NOT NULL default '',
	  `ObjectID` varchar(100) NOT NULL default '',
	  `Object` varchar(50) NOT NULL default '',
	  `ContentID` char(35) default NULL,
	  `Name` varchar(255) default NULL,
	  `OrderNo` int(10) default NULL,
	  `SiteID` varchar(25) default NULL,
	  `ColumnID` int(10) NOT NULL default 0,
	  PRIMARY KEY  (`ContentHistID`,
`ObjectID`,
`Object`,
`ColumnID` ),
	  KEY `IX_TContentObjects` (`SiteID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentratings` (	  `contentID` char(35) NOT NULL default '',
	  `userID` char(35) character set utf8 NOT NULL default '',
	  `siteID` varchar(35) character set utf8 NOT NULL default '',
	  `rate` int(10) default NULL,
	  `entered` timestamp NULL default CURRENT_TIMESTAMP,
	  PRIMARY KEY  (`contentID`,
`userID`,
`siteID`),
	  KEY `IDX_ENTERED` (`entered`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontentrelated` (	  `contentHistID` char(35) NOT NULL default '',
	  `relatedID` char(35) NOT NULL default '',
	  `contentID` char(35) NOT NULL default '',
	  `siteID` varchar(25) NOT NULL default '',
	  PRIMARY KEY  (`contentHistID`,
`relatedID`,
`contentID`,
`siteID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `temailreturnstats` (	  `emailID` char(35) character set utf8 default NULL,
	  `email` varchar(100) character set utf8 default NULL,
	  `url` mediumtext,
	  `created` datetime default NULL	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `temails` (	  `EmailID` char(35) character set utf8 NOT NULL default '',
	  `siteid` varchar(25) character set utf8 default NULL,
	  `Subject` varchar(255) character set utf8 default NULL,
	  `BodyText` longtext,
	  `BodyHtml` longtext,
	  `CreatedDate` datetime default NULL,
	  `DeliveryDate` datetime default NULL,
	  `status` tinyint(3) default NULL,
	  `GroupList` longtext,
	  `LastUpdateBy` varchar(50) character set utf8 default NULL,
	  `LastUpdateByID` varchar(35) character set utf8 default NULL,
	  `NumberSent` int(10) NOT NULL default '0',
	  `ReplyTo` varchar(50) character set utf8 default NULL,
	  `format` varchar(50) character set utf8 default NULL,
	  `fromLabel` varchar(50) character set utf8 default NULL,
	  `isDeleted` tinyint(1) NOT NULL default '0',
	  PRIMARY KEY  (`EmailID`),
	  KEY `IX_TEmails` (`siteid`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `temailstats` (	  `EmailID` char(35) character set utf8 default NULL,
	  `Email` char(100) character set utf8 default NULL,
	  `emailOpen` int(10) NOT NULL default '0',
	  `returnClick` int(10) NOT NULL default '0',
	  `bounce` int(10) NOT NULL default '0',
	  `sent` int(10) NOT NULL default '0',
	  `Created` datetime default NULL	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tfiles` (	  `fileID` char(35) character set utf8 NOT NULL default '',
	  `contentID` char(35) character set utf8 default NULL,
	  `siteID` varchar(25) character set utf8 default NULL,
	  `moduleID` char(35) character set utf8 default NULL,
	  `filename` varchar(200) character set utf8 default NULL,
	  `image` longblob,
	  `imageSmall` longblob,
	  `imageMedium` longblob,
	  `fileSize` int(10) default NULL,
	  `contentType` varchar(100) character set utf8 default NULL,
	  `contentSubType` varchar(200) character set utf8 default NULL,
	  `fileExt` varchar(50) character set utf8 default NULL,
	  `created` datetime default NULL,
	  PRIMARY KEY  (`fileID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tformresponsepackets` (	  `ResponseID` char(35) character set utf8 NOT NULL default '',
	  `FormID` char(35) character set utf8 default NULL,
	  `SiteID` varchar(25) character set utf8 default NULL,
	  `FieldList` longtext,
	  `Data` longtext,
	  `Entered` datetime default NULL,
	  PRIMARY KEY  (`ResponseID`),
	  KEY `IX_TFormResponsePackets` (`FormID`,
`SiteID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tformresponsequestions` (	  `responseID` char(35) character set utf8 NOT NULL,
	  `formID` char(35) character set utf8 NOT NULL,
	  `formField` varchar(50) character set utf8 NOT NULL,
	  `formValue` longtext,
	  `pollValue` varchar(255) character set utf8 default NULL,
	PRIMARY KEY  (`responseID`,
`formID`,
`formField`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tglobals` (	  `appreload` datetime default NULL,
	  `loadlist` mediumtext	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tmailinglist` (	  `MLID` char(35) character set utf8 default NULL,
	  `SiteID` varchar(25) character set utf8 default NULL,
	  `Name` varchar(50) character set utf8 default NULL,
	  `Description` longtext,
	  `LastUpdate` datetime default NULL,
	  `isPurge` int(10) default NULL,
	  `isPublic` int(10) default NULL	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tmailinglistmembers` (	  `MLID` char(35) character set utf8 default NULL,
	  `Email` varchar(100) character set utf8 default NULL,
	  `SiteID` varchar(25) character set utf8 default NULL,
	  `fname` varchar(50) character set utf8 default NULL,
	  `lname` varchar(50) character set utf8 default NULL,
	  `company` varchar(50) character set utf8 default NULL,
	  `isVerified` tinyint(1) NOT NULL default '0'	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tpermissions` (	  `ContentID` char(35) character set utf8 NOT NULL,
	  `GroupID` char(35) character set utf8 NOT NULL,
	  `SiteID` varchar(25) character set utf8 NOT NULL,
	  `Type` varchar(50) character set utf8 NOT NULL,
	PRIMARY KEY  (`ContentID`,
`GroupID`,
`SiteID`,
`Type`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tredirects` (	  `redirectID` char(35) NOT NULL default '',
	  `URL` mediumtext,
	  `created` datetime default NULL,
	  PRIMARY KEY  (`redirectID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tsessiontracking` (	  `trackingID` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	  `contentID` char(35) character set utf8 default NULL,
	  `siteID` varchar(25) character set utf8 default NULL,
	  `userid` char(35) character set utf8 default NULL,
	  `remote_addr` varchar(50) character set utf8 default NULL,
	  `server_name` varchar(50) character set utf8 default NULL,
	  `query_string` mediumtext,
	  `referer` varchar(255) character set utf8 default NULL,
	  `user_agent` varchar(200) character set utf8 default NULL,
	  `script_name` varchar(200) character set utf8 default NULL,
	  `urlToken` varchar(130) character set utf8 NOT NULL default '',
	  `entered` datetime NOT NULL,
	  `country` varchar(50) character set utf8 default NULL,
	  `lang` varchar(50) character set utf8 default NULL,
	  `locale` varchar(50) character set utf8 default NULL,
	  `keywords` varchar(200) character set utf8 default NULL,
	  `originalUrlToken` varchar(130) character set utf8 default NULL,
	  PRIMARY KEY  (`trackingID`),
	  KEY `IDX_ENTERED` (`entered`),
	  KEY `IX_TSessionTracking` (`siteID`),
	  KEY `IX_TSessionTracking_1` (`contentID`),
	  KEY `IX_TSessionTracking_2` (`urlToken`),
	  KEY `IX_TSessionTracking_3` (`userID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tsettings` (	  `SiteID` varchar(25) character set utf8 default NULL,
	  `Site` varchar(50) character set utf8 default NULL,
	  `MaxNestLevel` int(10) default NULL,
	  `PageLimit` int(10) default NULL,
	  `Locking` varchar(50) character set utf8 default NULL,
	  `Domain` varchar(100) character set utf8 default NULL,
	  `exportLocation` varchar(100) character set utf8 default NULL,
	  `FileDir` varchar(50) character set utf8 default NULL,
	  `Contact` varchar(50) character set utf8 default NULL,
	  `MailserverIP` varchar(50) character set utf8 default NULL,
	  `MailServerUsername` varchar(50) character set utf8 default NULL,
	  `MailServerPassword` varchar(50) character set utf8 default NULL,
	  `EmailBroadcaster` int(10) default NULL,
	  `Extranet` int(10) default NULL,
	  `ExtranetPublicReg` int(10) default NULL,
	  `ExtranetPublicRegNotify` varchar(50) character set utf8 default NULL,
	  `ExtranetSSL` int(10) default NULL,
	  `Cache` int(10) default NULL,
	  `ViewDepth` int(10) default NULL,
	  `NextN` int(10) default NULL,
	  `DataCollection` int(10) default NULL,
	  `columnCount` int(10) default NULL,
	  `columnNames` varchar(255) character set utf8 default NULL,
	  `primaryColumn` int(10) default NULL,
	  `publicSubmission` int(10) default NULL,
	  `AdManager` int(10) default NULL,
	  `archiveDate` datetime default NULL,
	  `contactName` varchar(50) character set utf8 default NULL,
	  `contactAddress` varchar(50) character set utf8 default NULL,
	  `contactCity` varchar(50) character set utf8 default NULL,
	  `contactState` varchar(50) character set utf8 default NULL,
	  `contactZip` varchar(50) character set utf8 default NULL,
	  `contactEmail` varchar(100) character set utf8 default NULL,
	  `contactPhone` varchar(50) character set utf8 default NULL,
	  `privateUserPoolID` varchar(50) character set utf8 default NULL,
	  `publicUserPoolID` varchar(50) character set utf8 default NULL,
	  `advertiserUserPoolID` varchar(50) character set utf8 default NULL,
	  `orderNo` int(10) default NULL,
	  `emailBroadcasterLimit` int(10) NOT NULL default '0',
	  `feedManager` int(10) default NULL,
	  `displayPoolID` varchar(50) character set utf8 default NULL,
	  `galleryMainScaleBy` varchar(50) character set utf8 default NULL,
	  `galleryMainScale` int(10) default NULL,
	  `gallerySmallScaleBy` varchar(50) character set utf8 default NULL,
	  `gallerySmallScale` int(10) default NULL,
	  `galleryMediumScaleBy` varchar(50) character set utf8 default NULL,
	  `galleryMediumScale` int(10) default NULL,
	  `sendLoginScript` longtext,
	  `mailingListConfirmScript` longtext,
	  `publicSubmissionApprovalScript` longtext,
	  `reminderScript` longtext,
	  `loginURL` varchar(255) default NULL,
	  `editProfileURL` varchar(255) default NULL,
	  `CommentApprovalDefault` tinyint(3) default NULL,
	  `deploy` tinyint(3) default NULL,
	  `lastDeployment` datetime default NULL,
	  `accountActivationScript` longtext,
	  `googleAPIKey` varchar(100) default NULL,
	  `useDefaultSMTPServer` tinyint(3) default NULL,
	  `theme` varchar(50) default NULL,
	  `mailserverSMTPPort` varchar(5) default NULL,
	  `mailserverPOPPort` varchar(5) default NULL,
	  `mailserverTLS` varchar(5) default NULL,
	  `mailserverSSL` varchar(5) default NULL	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tsystemobjects` (	  `Object` varchar(50) character set utf8 default NULL,
	  `SiteID` varchar(25) character set utf8 default NULL,
	  `Name` varchar(50) character set utf8 default NULL,
	  `OrderNo` int(10) default NULL	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tuseraddresses` (	  `addressID` char(35) NOT NULL default '',
	  `userID` char(35) default NULL,
	  `siteID` varchar(25) character set utf8 default NULL,
	  `addressName` varchar(50) character set utf8 default NULL,
	  `address1` varchar(50) character set utf8 default NULL,
	  `address2` varchar(50) character set utf8 default NULL,
	  `city` varchar(50) character set utf8 default NULL,
	  `state` varchar(50) character set utf8 default NULL,
	  `zip` varchar(50) character set utf8 default NULL,
	  `country` varchar(50) character set utf8 default NULL,
	  `phone` varchar(50) character set utf8 default NULL,
	  `fax` varchar(50) character set utf8 default NULL,
	  `isPrimary` tinyint(3) default NULL,
	  `addressNotes` longtext,
	  `addressURL` varchar(200) character set utf8 default NULL,
	  `longitude` float default NULL,
	  `latitude` float default NULL,
	  `addressEmail` varchar(100) character set utf8 default NULL,
	  `hours` longtext,
	  PRIMARY KEY  (`addressID`),
	  INDEX `Index_2`(`longitude`),
	  INDEX `Index_3`(`latitude`),
	  INDEX `Index_4`(`userID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tusers` (	  `UserID` char(35) character set utf8 NOT NULL default '',
	  `GroupName` varchar(255) character set utf8 default NULL,
	  `Fname` varchar(50) character set utf8 default NULL,
	  `Lname` varchar(50) character set utf8 default NULL,
	  `UserName` varchar(255) character set utf8 default NULL,
	  `Password` varchar(50) character set utf8 default NULL,
	  `PasswordCreated` datetime default NULL,
	  `Email` varchar(255) character set utf8 default NULL,
	  `Company` varchar(50) character set utf8 default NULL,
	  `JobTitle` varchar(50) character set utf8 default NULL,
	  `mobilePhone` varchar(50) character set utf8 default NULL,
	  `Website` varchar(255) character set utf8 default NULL,
	  `Type` int(10) default NULL,
	  `subType` varchar(50) character set utf8 default NULL,
	  `Ext` int(10) default NULL,
	  `ContactForm` longtext,
	  `Admin` int(10) default NULL,
	  `S2` int(10) default NULL,
	  `LastLogin` datetime default NULL,
	  `LastUpdate` datetime default NULL,
	  `LastUpdateBy` varchar(50) character set utf8 default NULL,
	  `LastUpdateByID` varchar(35) character set utf8 default NULL,
	  `Perm` tinyint(3) default NULL,
	  `InActive` tinyint(3) default NULL,
	  `isPublic` int(10) default NULL,
	  `SiteID` varchar(50) character set utf8 default NULL,
	  `Subscribe` int(10) default NULL,
	  `notes` longtext,
	  `description` longtext,
	  `interests` longtext,
	  `keepPrivate` tinyint(3) default NULL,
	  `photoFileID` varchar(35) default NULL,
	  `IMName` varchar(100) character set utf8 default NULL,
	  `IMService` varchar(50) character set utf8 default NULL,
	  `created` timestamp NULL default CURRENT_TIMESTAMP,
	  `remoteID` varchar(35) default NULL,
	  `tags` longtext,
	   PRIMARY KEY  (`userID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tusersfavorites` (	  `favoriteID` char(35) NOT NULL default '',
	  `userID` char(35) NOT NULL default '',
	  `favoriteName` varchar(255) default NULL,
	  `favorite` mediumtext,
	  `type` varchar(30) NOT NULL default '',
	  `siteID` varchar(35) default NULL,
	  `dateCreated` timestamp NOT NULL default CURRENT_TIMESTAMP,
	  `columnNumber` int(10) default NULL,
	  `rowNumber` int(10) default NULL,
	  `maxRSSItems` int(10) default NULL,
	  PRIMARY KEY  (`favoriteID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tusersinterests` (	  `userID` char(35) character set utf8  NOT NULL default '',
	  `categoryID` char(35) character set utf8 NOT NULL default '',
	  PRIMARY KEY (`userID`,
`categoryID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tusersmemb` (	  `UserID` char(35) character set utf8 NOT NULL default '',
	  `GroupID` char(35) character set utf8 NOT NULL default '',
	  PRIMARY KEY  (`UserID`,
`GroupID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE  `tcontentpublicsubmissionapprovals` (	  `contentID` char(35) NOT NULL default '',
	  `isApproved` int(10) unsigned NOT NULL,
	  `email` varchar(150) NOT NULL,
	  `siteID` varchar(25) NOT NULL,
	  PRIMARY KEY  USING BTREE (`contentID`,
`siteID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tcontenttags` (	  `tagID` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	  `contentID` CHAR(35) NOT NULL,
	  `contentHistID` CHAR(35) NOT NULL,
	  `siteID` VARCHAR(25) NOT NULL,
	  `tag` VARCHAR(100) NOT NULL,
	  PRIMARY KEY (`tagID`),
	  INDEX `Index_2`(`contentHistID`),
	  INDEX `Index_3`(`siteID`),
	  INDEX `Index_4`(`contentID`),
	  INDEX `Index_5`(`tag`)	)	ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tuserstags` (	  `tagID` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	  `userID` CHAR(35) NOT NULL,
	  `siteID` VARCHAR(25) NOT NULL,
	  `tag` VARCHAR(100) NOT NULL,
	  PRIMARY KEY (`tagID`),
	  INDEX `Index_2`(`userID`),
	  INDEX `Index_3`(`siteID`),
	  INDEX `Index_4`(`tag`)	)	ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tclassextenddatauseractivity`  (	  `dataID` INTEGER NOT NULL AUTO_INCREMENT,
	  `baseID` char (35)  NOT NULL ,
	  `attributeID`INTEGER NOT NULL ,
	  `siteID` varchar (25)  NULL ,
	  `attributeValue` longtext,
	  INDEX `Index_2`(`baseID`),
	  INDEX `Index_3`(`attributeID`),
	  PRIMARY KEY (`dataID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tclassextenddata`  (	  `dataID` INTEGER NOT NULL AUTO_INCREMENT,
	  `baseID` char (35)  NOT NULL ,
	  `attributeID` INTEGER NOT NULL ,
	  `siteID` varchar (25)  NULL ,
	  `attributeValue` longtext,
	  INDEX `Index_2`(`baseID`),
	  INDEX `Index_3`(`attributeID`),
	  PRIMARY KEY (`dataID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tclassextend` (	  `subTypeID` char (35)  NOT NULL ,
	  `siteID` varchar (25)  NULL ,
	  `baseTable` varchar (50) NULL ,
	  `baseKeyField` varchar (50) NULL ,
	  `dataTable` varchar (50) NULL ,
	  `type` varchar (50) NULL ,
	  `subType` varchar (50) NULL ,
	  `isActive` tinyint(3) NULL ,
	  `notes` longtext ,
	  `lastUpdate` datetime NULL ,
	  `dateCreated` datetime NULL ,
	  `lastUpdateBy` varchar (100)  NULL ,
	  PRIMARY KEY (`subTypeID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tclassextendattributes` (	  `attributeID` INTEGER NOT NULL AUTO_INCREMENT,
	  `extendSetID` char (35)  NULL ,
	  `siteID` varchar (25) NULL ,
	  `name` varchar (100) NULL ,
	  `label` text  NULL ,
	  `hint` text  NULL ,
	  `type` varchar (100) NULL ,
	  `orderno` int NULL ,
	  `isActive` tinyint(3) NULL ,
	  `required` varchar(50) NULL ,
	  `validation` varchar (50) NULL ,
	  `regex` text  NULL ,
	  `message` text  NULL ,
	  `defaultValue` varchar (100) NULL ,
	  `optionList` longtext ,
	  `optionLabelList` longtext,
	  INDEX `Index_2`(`extendSetID`),
	  PRIMARY KEY (`attributeID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tclassextendsets` (	  `extendSetID` char(35) NOT NULL ,
	  `subTypeID` char(35) NULL ,
	  `categoryID` longtext ,
	  `siteID` varchar (25) NULL ,
	  `name` varchar(50)  NULL ,
	  `orderno` int NULL ,
	  `isActive` tinyint(3) NULL,
	  INDEX `Index_2`(`subTypeID`),
	  PRIMARY KEY (`extendSetID`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

