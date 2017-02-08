DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `contact_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(150) NOT NULL DEFAULT '',
  `last_name` VARCHAR(250) NOT NULL DEFAULT '',
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `modified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`contact_id`)
) Engine=InnoDb CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS `contact_email`;
CREATE TABLE `contact_email` (
  `contact_email_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `contact_id` INT UNSIGNED NOT NULL,
  `email_address` VARCHAR(250) NOT NULL,
  `primary` TINYINT(1) NOT NULL DEFAULT 0,
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `modified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`contact_email_id`),
  INDEX `contact_id_idx` (`contact_id`),
  UNIQUE KEY `contact_email_uk` (`email_address`)
) Engine=InnoDb CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

DROP TABLE IF EXISTS `contact_address`;
CREATE TABLE `contact_address` (
  `contact_address_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `contact_id` INT UNSIGNED NOT NULL,
  `street_1` VARCHAR(250) NOT NULL DEFAULT '',
  `street_2` VARCHAR(250) NOT NULL DEFAULT '',
  `postcode` VARCHAR(10) NOT NULL DEFAULT '',
  `city` VARCHAR(250) NOT NULL DEFAULT '',
  `province` VARCHAR(250) NOT NULL DEFAULT '',
  `country_code` CHAR(2) NOT NULL DEFAULT '',
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `modified` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`contact_address_id`),
  INDEX `contact_id_idx` (`contact_id`)
) Engine=InnoDb CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';