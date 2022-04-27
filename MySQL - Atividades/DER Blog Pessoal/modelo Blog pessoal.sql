-- MySQL Script generated by MySQL Workbench
-- Wed Apr 27 10:09:59 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_blogPessoal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_blogPessoal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_blogPessoal` DEFAULT CHARACTER SET utf8 ;
USE `db_blogPessoal` ;

-- -----------------------------------------------------
-- Table `db_blogPessoal`.``
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blogPessoal`.`` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blogPessoal`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blogPessoal`.`tb_temas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(255) NOT NULL,
  `col` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blogPessoal`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blogPessoal`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  `tipo` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blogPessoal`.`tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blogPessoal`.`tb_postagens` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `texto` VARCHAR(255) NOT NULL,
  `data` DATETIME NULL,
  `tb_usuarios_id` BIGINT NOT NULL,
  `tb_temas_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_postagens_tb_usuarios_idx` (`tb_usuarios_id` ASC) VISIBLE,
  INDEX `fk_tb_postagens_tb_temas1_idx` (`tb_temas_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagens_tb_usuarios`
    FOREIGN KEY (`tb_usuarios_id`)
    REFERENCES `db_blogPessoal`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagens_tb_temas1`
    FOREIGN KEY (`tb_temas_id`)
    REFERENCES `db_blogPessoal`.`tb_temas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;