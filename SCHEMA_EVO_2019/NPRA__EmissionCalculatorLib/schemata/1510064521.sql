CREATE TABLE IF NOT EXISTS `SEGMENT` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

CREATE TABLE IF NOT EXISTS `ROADSLOPE` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

CREATE TABLE IF NOT EXISTS `PRIMARYKEY` (	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	`SUPER`	INTEGER,
	`MAX`	INTEGER,
	PRIMARY KEY(`ENT`)	);

CREATE TABLE IF NOT EXISTS `POLLUTANT` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

CREATE TABLE IF NOT EXISTS `PARAMETERS` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`ALPHA`	FLOAT,
	`BETA`	FLOAT,
	`DELTA`	FLOAT,
	`EPSILON`	FLOAT,
	`GAMMA`	FLOAT,
	`HTA`	FLOAT,
	`MAXSPEED`	FLOAT,
	`MINSPEED`	FLOAT,
	`REDUCTIONFACTOR`	FLOAT,
	`SPEED`	FLOAT,
	`ZITA`	FLOAT,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

CREATE TABLE IF NOT EXISTS `MODE` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

CREATE TABLE IF NOT EXISTS `MAPSLOPELOAD` (	`IDSLOPE`	INTEGER,
	`IDLOAD`	INTEGER,
	PRIMARY KEY(`IDSLOPE`,
`IDLOAD`)	);

CREATE TABLE IF NOT EXISTS `MAPSEGMENTEUROSTD` (	`IDSEGMENT`	INTEGER,
	`IDEUROSTD`	INTEGER,
	PRIMARY KEY(`IDSEGMENT`,
`IDEUROSTD`)	);

CREATE TABLE IF NOT EXISTS `MAPPOLLUTANTMODE` (	`IDPOLLUTANT`	INTEGER,
	`IDMODE`	INTEGER,
	PRIMARY KEY(`IDPOLLUTANT`,
`IDMODE`)	);

CREATE TABLE IF NOT EXISTS `MAPMODESLOPE` (	`IDSLOPE`	INTEGER,
	`IDMODE`	INTEGER,
	PRIMARY KEY(`IDSLOPE`,
`IDMODE`)	);

CREATE TABLE IF NOT EXISTS `MAPLOADPARAMETERS` (	`IDPARAMETERS`	INTEGER,
	`IDLOAD`	INTEGER,
	PRIMARY KEY(`IDPARAMETERS`,
`IDLOAD`)	);

CREATE TABLE IF NOT EXISTS `MAPFUELSEGMENT` (	`IDSEGMENT`	INTEGER,
	`IDFUEL`	INTEGER,
	PRIMARY KEY(`IDSEGMENT`,
`IDFUEL`)	);

CREATE TABLE IF NOT EXISTS `MAPEUROSTDPOLLUTANT` (	`IDPOLLUTANT`	INTEGER,
	`IDEUROSTD`	INTEGER,
	PRIMARY KEY(`IDPOLLUTANT`,
`IDEUROSTD`)	);

CREATE TABLE IF NOT EXISTS `MAPCATEGORYFUEL` (	`IDCATEGORY`	INTEGER,
	`IDFUEL`	INTEGER,
	PRIMARY KEY(`IDCATEGORY`,
`IDFUEL`)	);

CREATE TABLE IF NOT EXISTS `LOAD` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

CREATE TABLE IF NOT EXISTS `FUEL` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

CREATE TABLE IF NOT EXISTS `EUROSTD` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

CREATE TABLE IF NOT EXISTS `CATEGORY` (	`ID`	INTEGER,
	`ENT`	INTEGER,
	`NAME`	VARCHAR,
	PRIMARY KEY(`ID`)	);

