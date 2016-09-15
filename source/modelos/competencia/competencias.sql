-- MySQL Script generated by MySQL Workbench
-- jue 15 sep 2016 10:41:29 CLST
-- Model: New Model    Version: 1.0
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
-- Table `sgd-modules`.`versionCompetencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`versionCompetencia` (
  `idversionCompetencia` INT NOT NULL,
  `fechaInicio` VARCHAR(45) NOT NULL,
  `fechaFin` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idversionCompetencia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`competencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`competencia` (
  `idCompetencia` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `fechaCreacion` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `versionCompetencia_idversionCompetencia` INT NOT NULL,
  PRIMARY KEY (`idCompetencia`),
  INDEX `fk_competencia_versionCompetencia1_idx` (`versionCompetencia_idversionCompetencia` ASC),
  CONSTRAINT `fk_competencia_versionCompetencia1`
    FOREIGN KEY (`versionCompetencia_idversionCompetencia`)
    REFERENCES `sgd-modules`.`versionCompetencia` (`idversionCompetencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`actividadClave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`actividadClave` (
  `idactividadClave` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idactividadClave`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`criterioDesempeno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`criterioDesempeno` (
  `idcriterioDesempeno` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcriterioDesempeno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`indicadorConducta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`indicadorConducta` (
  `idindicadorConducta` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idindicadorConducta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`competencia_has_indicadorConducta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`competencia_has_indicadorConducta` (
  `competencia_idCompetencia` INT NOT NULL,
  `indicadorConducta_idindicadorConducta` INT NOT NULL,
  PRIMARY KEY (`competencia_idCompetencia`, `indicadorConducta_idindicadorConducta`),
  INDEX `fk_competencia_has_indicadorConducta_indicadorConducta1_idx` (`indicadorConducta_idindicadorConducta` ASC),
  INDEX `fk_competencia_has_indicadorConducta_competencia1_idx` (`competencia_idCompetencia` ASC),
  CONSTRAINT `fk_competencia_has_indicadorConducta_competencia1`
    FOREIGN KEY (`competencia_idCompetencia`)
    REFERENCES `sgd-modules`.`competencia` (`idCompetencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_competencia_has_indicadorConducta_indicadorConducta1`
    FOREIGN KEY (`indicadorConducta_idindicadorConducta`)
    REFERENCES `sgd-modules`.`indicadorConducta` (`idindicadorConducta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`competencia_has_actividadClave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`competencia_has_actividadClave` (
  `competencia_idCompetencia` INT NOT NULL,
  `actividadClave_idactividadClave` INT NOT NULL,
  PRIMARY KEY (`competencia_idCompetencia`, `actividadClave_idactividadClave`),
  INDEX `fk_competencia_has_actividadClave_actividadClave1_idx` (`actividadClave_idactividadClave` ASC),
  INDEX `fk_competencia_has_actividadClave_competencia1_idx` (`competencia_idCompetencia` ASC),
  CONSTRAINT `fk_competencia_has_actividadClave_competencia1`
    FOREIGN KEY (`competencia_idCompetencia`)
    REFERENCES `sgd-modules`.`competencia` (`idCompetencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_competencia_has_actividadClave_actividadClave1`
    FOREIGN KEY (`actividadClave_idactividadClave`)
    REFERENCES `sgd-modules`.`actividadClave` (`idactividadClave`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`actividadClave_has_criterioDesempeno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`actividadClave_has_criterioDesempeno` (
  `actividadClave_idactividadClave` INT NOT NULL,
  `criterioDesempeno_idcriterioDesempeno` INT NOT NULL,
  PRIMARY KEY (`actividadClave_idactividadClave`, `criterioDesempeno_idcriterioDesempeno`),
  INDEX `fk_actividadClave_has_criterioDesempeno_criterioDesempeno1_idx` (`criterioDesempeno_idcriterioDesempeno` ASC),
  INDEX `fk_actividadClave_has_criterioDesempeno_actividadClave1_idx` (`actividadClave_idactividadClave` ASC),
  CONSTRAINT `fk_actividadClave_has_criterioDesempeno_actividadClave1`
    FOREIGN KEY (`actividadClave_idactividadClave`)
    REFERENCES `sgd-modules`.`actividadClave` (`idactividadClave`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actividadClave_has_criterioDesempeno_criterioDesempeno1`
    FOREIGN KEY (`criterioDesempeno_idcriterioDesempeno`)
    REFERENCES `sgd-modules`.`criterioDesempeno` (`idcriterioDesempeno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
