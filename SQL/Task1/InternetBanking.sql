-- MySQL Script generated by MySQL Workbench
-- Wed Jun  7 11:42:27 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Client` (
  `idClient` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Surname` VARCHAR(45) NULL,
  `Birthday` DATE NULL,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Account` (
  `idAccount` INT NOT NULL,
  `Amount` DECIMAL(65,2) NULL,
  `idClient` INT NULL,
  PRIMARY KEY (`idAccount`),
  CONSTRAINT `idClient`
    FOREIGN KEY ()
    REFERENCES `mydb`.`Client` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Card` (
  `idCard` INT NOT NULL,
  `idAccount` INT NULL,
  `Name` VARCHAR(45) NULL,
  `ExpireDate` DATE NULL,
  PRIMARY KEY (`idCard`),
  CONSTRAINT `idAccount`
    FOREIGN KEY ()
    REFERENCES `mydb`.`Account` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Transaction` (
  `idTransaction` INT NOT NULL,
  `idCard` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Amount` DECIMAL(65,2) NULL,
  `Info` VARCHAR(45) NULL,
  PRIMARY KEY (`idTransaction`),
  CONSTRAINT `idCard`
    FOREIGN KEY ()
    REFERENCES `mydb`.`Card` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
