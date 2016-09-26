-- MySQL Script generated by MySQL Workbench
-- lun 26 sep 2016 11:21:11 CLST
-- Model: SGD Modules    Version: 1.0

-- Modelos relacionales modulos:
-- "Sistema gestion de desemepeño"

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema sgd-modules
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sgd-modules
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sgd-modules` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `sgd-modules` ;

-- -----------------------------------------------------
-- Table `sgd-modules`.`resultado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`resultado` (
  `idresultado` INT NOT NULL,
  `identidad` INT NOT NULL,
  `idcomponente` INT NOT NULL,
  PRIMARY KEY (`idresultado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`metrica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`metrica` (
  `idmetrica` INT NOT NULL,
  `valor` INT NOT NULL,
  `observacion` LONGTEXT NULL,
  PRIMARY KEY (`idmetrica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`resultado_has_metrica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`resultado_has_metrica` (
  `resultado_idresultado` INT NOT NULL,
  `metrica_idmetrica` INT NOT NULL,
  PRIMARY KEY (`resultado_idresultado`, `metrica_idmetrica`),
  INDEX `fk_resultado_has_metrica_metrica1_idx` (`metrica_idmetrica` ASC),
  INDEX `fk_resultado_has_metrica_resultado1_idx` (`resultado_idresultado` ASC),
  CONSTRAINT `fk_resultado_has_metrica_resultado1`
    FOREIGN KEY (`resultado_idresultado`)
    REFERENCES `sgd-modules`.`resultado` (`idresultado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_resultado_has_metrica_metrica1`
    FOREIGN KEY (`metrica_idmetrica`)
    REFERENCES `sgd-modules`.`metrica` (`idmetrica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;