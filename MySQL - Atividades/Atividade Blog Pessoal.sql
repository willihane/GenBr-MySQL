
CREATE SCHEMA IF NOT EXISTS db_blogPessoal;
USE `db_blogPessoal` ;

CREATE TABLE IF NOT EXISTS `db_blogPessoal`.`tb_temas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(255) NOT NULL,
  `col` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `db_blogPessoal`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  `tipo` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


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
