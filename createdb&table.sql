CREATE DATABASE IF NOT EXISTS opt_mb default charset utf8 COLLATE utf8_general_ci;

USE opt_mb;

CREATE TABLE IF NOT EXISTS route (
	mb1 INTEGER UNSIGNED NOT NULL,
	mb2 INTEGER UNSIGNED NOT NULL,
	angle TINYINT UNSIGNED NOT NULL,
	updated TIMESTAMP NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	PRIMARY KEY( mb1, mb2 )
);

CREATE TABLE IF NOT EXISTS ip_mb (
	server INTEGER UNSIGNED NOT NULL PRIMARY KEY,
	mb INTEGER UNSIGNED NOT NULL,
	updated TIMESTAMP NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS mb_mac (
	mb INTEGER UNSIGNED NOT NULL PRIMARY KEY,
	mac BIGINT UNSIGNED NOT NULL
);