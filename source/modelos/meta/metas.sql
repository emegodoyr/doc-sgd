-- MySQL Script generated by MySQL Workbench
-- lun 26 sep 2016 10:05:13 CLST
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
-- Table `sgd-modules`.`meta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`meta` (
  `idmeta` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` LONGTEXT NULL,
  `codigo` LONGTEXT NOT NULL,
  PRIMARY KEY (`idmeta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`desempenoMeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`desempenoMeta` (
  `iddesempenoMeta` INT NOT NULL,
  `esperado` VARCHAR(45) NOT NULL,
  `minimo` VARCHAR(45) NOT NULL,
  `maximo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`iddesempenoMeta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`tipoMeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`tipoMeta` (
  `idtipoMeta` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idtipoMeta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`areaMeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`areaMeta` (
  `idareaMeta` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idareaMeta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`cronologiaMeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`cronologiaMeta` (
  `idcronologiaMeta` INT NOT NULL,
  `fechaCreacion` DATE NOT NULL,
  `fechaCumplimiento` VARCHAR(45) NULL,
  PRIMARY KEY (`idcronologiaMeta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`meta_has_areaMeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`meta_has_areaMeta` (
  `meta_idmeta` INT NOT NULL,
  `areaMeta_idareaMeta` INT NOT NULL,
  PRIMARY KEY (`meta_idmeta`, `areaMeta_idareaMeta`),
  INDEX `fk_meta_has_areaMeta_areaMeta1_idx` (`areaMeta_idareaMeta` ASC),
  INDEX `fk_meta_has_areaMeta_meta1_idx` (`meta_idmeta` ASC),
  CONSTRAINT `fk_meta_has_areaMeta_meta1`
    FOREIGN KEY (`meta_idmeta`)
    REFERENCES `sgd-modules`.`meta` (`idmeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_meta_has_areaMeta_areaMeta1`
    FOREIGN KEY (`areaMeta_idareaMeta`)
    REFERENCES `sgd-modules`.`areaMeta` (`idareaMeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`meta_has_cronologiaMeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`meta_has_cronologiaMeta` (
  `meta_idmeta` INT NOT NULL,
  `cronologiaMeta_idcronologiaMeta` INT NOT NULL,
  PRIMARY KEY (`meta_idmeta`, `cronologiaMeta_idcronologiaMeta`),
  INDEX `fk_meta_has_cronologiaMeta_cronologiaMeta1_idx` (`cronologiaMeta_idcronologiaMeta` ASC),
  INDEX `fk_meta_has_cronologiaMeta_meta1_idx` (`meta_idmeta` ASC),
  CONSTRAINT `fk_meta_has_cronologiaMeta_meta1`
    FOREIGN KEY (`meta_idmeta`)
    REFERENCES `sgd-modules`.`meta` (`idmeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_meta_has_cronologiaMeta_cronologiaMeta1`
    FOREIGN KEY (`cronologiaMeta_idcronologiaMeta`)
    REFERENCES `sgd-modules`.`cronologiaMeta` (`idcronologiaMeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`meta_has_tipoMeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`meta_has_tipoMeta` (
  `meta_idmeta` INT NOT NULL,
  `tipoMeta_idtipoMeta` INT NOT NULL,
  PRIMARY KEY (`meta_idmeta`, `tipoMeta_idtipoMeta`),
  INDEX `fk_meta_has_tipoMeta_tipoMeta1_idx` (`tipoMeta_idtipoMeta` ASC),
  INDEX `fk_meta_has_tipoMeta_meta1_idx` (`meta_idmeta` ASC),
  CONSTRAINT `fk_meta_has_tipoMeta_meta1`
    FOREIGN KEY (`meta_idmeta`)
    REFERENCES `sgd-modules`.`meta` (`idmeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_meta_has_tipoMeta_tipoMeta1`
    FOREIGN KEY (`tipoMeta_idtipoMeta`)
    REFERENCES `sgd-modules`.`tipoMeta` (`idtipoMeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sgd-modules`.`meta_has_desempenoMeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sgd-modules`.`meta_has_desempenoMeta` (
  `meta_idmeta` INT NOT NULL,
  `desempenoMeta_iddesempenoMeta` INT NOT NULL,
  PRIMARY KEY (`meta_idmeta`, `desempenoMeta_iddesempenoMeta`),
  INDEX `fk_meta_has_desempenoMeta_desempenoMeta1_idx` (`desempenoMeta_iddesempenoMeta` ASC),
  INDEX `fk_meta_has_desempenoMeta_meta1_idx` (`meta_idmeta` ASC),
  CONSTRAINT `fk_meta_has_desempenoMeta_meta1`
    FOREIGN KEY (`meta_idmeta`)
    REFERENCES `sgd-modules`.`meta` (`idmeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_meta_has_desempenoMeta_desempenoMeta1`
    FOREIGN KEY (`desempenoMeta_iddesempenoMeta`)
    REFERENCES `sgd-modules`.`desempenoMeta` (`iddesempenoMeta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;