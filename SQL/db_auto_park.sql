SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`fuel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`fuel` ;

CREATE TABLE IF NOT EXISTS `mydb`.`fuel` (
  `name_fuel` VARCHAR(20) NOT NULL,
  `type_fuel` SET('diesel', 'petrol') NOT NULL,
  `price_fuel` DOUBLE NOT NULL,
  PRIMARY KEY (`name_fuel`),
  UNIQUE INDEX `name_fuel_UNIQUE` (`name_fuel` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`auto_park`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`auto_park` ;

CREATE TABLE IF NOT EXISTS `mydb`.`auto_park` (
  `name_auto` VARCHAR(20) NOT NULL,
  `auto_number` VARCHAR(5) NOT NULL,
  `auto_type` SET('car', 'truck') NOT NULL,
  `name_drive` VARCHAR(60) NOT NULL,
  `name_fuel` VARCHAR(20) NOT NULL,
  `fuel_compsumption` DOUBLE NOT NULL,
  `mileage_last_month` DOUBLE NOT NULL,
  `mileage_this_month` DOUBLE NOT NULL,
  PRIMARY KEY (`name_auto`),
  UNIQUE INDEX `auto_number_UNIQUE` (`auto_number` ASC),
  CONSTRAINT `name_fuel`
    FOREIGN KEY (`name_fuel`)
    REFERENCES `mydb`.`fuel` (`name_fuel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`fuel`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`fuel` (`name_fuel`, `type_fuel`, `price_fuel`) VALUES ('a95', 'petrol', 27);
INSERT INTO `mydb`.`fuel` (`name_fuel`, `type_fuel`, `price_fuel`) VALUES ('df', 'diesel', 22);

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`auto_park`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto1', 'AB001', 'car', 'user1 user user', 'a95', 12, 840, 654);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto2', 'AS123', 'car', 'user2 user2 user2', 'a95', 12.3, 674, 574);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto3', 'WE123', 'truck', 'user3 user3 user3', 'df', 23, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto4', 'FE432', 'car', 'user4 user4 user4', 'df', 13, 123, 343);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto5', 'FS322', 'car', 'user5', 'df', 15, 1233, 3432);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto6', 'FE992', 'car', 'user6', 'df', 21, 833, 4432);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto7', 'FR122', 'car', 'user7', 'df', 18, 933, 432);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto8', 'WR203', 'truck', 'user8', 'df', 27, 461, 3450);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto9', 'RV123', 'truck', 'user9', 'df', 33, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto10', 'QW523', 'truck', 'user10', 'df', 43, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto11', 'QK723', 'truck', 'user11', 'df', 25, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto12', 'DE543', 'truck', 'user12', 'df', 19, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto13', 'IO568', 'truck', 'user13', 'df', 29, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto14', 'VF238', 'truck', 'user14', 'df', 24, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto15', 'LR503', 'truck', 'user15', 'df', 27, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto16', 'LE236', 'truck', 'user16', 'df', 25, 941, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto17', 'KC480', 'truck', 'user17', 'df', 29.6, 641, 1230);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto18', 'CS235', 'car', 'user18', 'df', 9.5, 2733, 2032);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto19', 'RL992', 'car', 'user19', 'df', 21, 1833, 2332);
INSERT INTO `mydb`.`auto_park` (`name_auto`, `auto_number`, `auto_type`, `name_drive`, `name_fuel`, `fuel_compsumption`, `mileage_last_month`, `mileage_this_month`) VALUES ('auto20', 'ZP342', 'car', 'user20', 'df', 31, 4833, 6132);

COMMIT;

