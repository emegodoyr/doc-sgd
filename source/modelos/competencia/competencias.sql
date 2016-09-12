-- MySQL Script generated by MySQL Workbench
-- lun 12 sep 2016 18:28:47 CLST
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
-- Table `sgd-modules`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`tipo` (
  `idtipo` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo`))
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
  `idtipo` INT NOT NULL,
  PRIMARY KEY (`idCompetencia`),
  INDEX `fk_competencia_1_idx` (`idtipo` ASC),
  CONSTRAINT `fk_competencia_1`
    FOREIGN KEY (`idtipo`)
    REFERENCES `sgd-modules`.`tipo` (`idtipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`version`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`version` (
  `idVersion` INT NOT NULL,
  `fechaInicio` VARCHAR(45) NOT NULL,
  `fechaFin` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `idCompetencia` INT NOT NULL,
  PRIMARY KEY (`idVersion`),
  INDEX `fk_version_1_idx` (`idCompetencia` ASC),
  CONSTRAINT `fk_version_1`
    FOREIGN KEY (`idCompetencia`)
    REFERENCES `sgd-modules`.`competencia` (`idCompetencia`)
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
  `idtipo` INT NULL,
  PRIMARY KEY (`idactividadClave`),
  INDEX `fk_actividadClave_1_idx` (`idtipo` ASC),
  CONSTRAINT `fk_actividadClave_1`
    FOREIGN KEY (`idtipo`)
    REFERENCES `sgd-modules`.`tipo` (`idtipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`criterioDesempeno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`criterioDesempeno` (
  `idcriterioDesempeno` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `idactividadClave` INT NULL,
  PRIMARY KEY (`idcriterioDesempeno`),
  INDEX `fk_criterioDesempeno_1_idx` (`idactividadClave` ASC),
  CONSTRAINT `fk_criterioDesempeno_1`
    FOREIGN KEY (`idactividadClave`)
    REFERENCES `sgd-modules`.`actividadClave` (`idactividadClave`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`indicadorConducta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`indicadorConducta` (
  `idindicadorConducta` INT NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,
  `idtipo` INT NULL,
  PRIMARY KEY (`idindicadorConducta`),
  INDEX `fk_indicadorConducta_1_idx` (`idtipo` ASC),
  CONSTRAINT `fk_indicadorConducta_1`
    FOREIGN KEY (`idtipo`)
    REFERENCES `sgd-modules`.`tipo` (`idtipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
