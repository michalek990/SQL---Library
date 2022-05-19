-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Library
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Library
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `Library`;
CREATE SCHEMA IF NOT EXISTS `Library` DEFAULT CHARACTER SET utf8 ;
USE `Library` ;

-- -----------------------------------------------------
-- Table `Library`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`language` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`cover_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`cover_type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`country` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`city` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(190) NOT NULL,
  `country_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_city_country1_idx` (`country_id` ASC) VISIBLE,
  CONSTRAINT `fk_city_country1`
    FOREIGN KEY (`country_id`)
    REFERENCES `Library`.`country` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`publisher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`publisher` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL,
  `city_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_publisher_city1_idx` (`city_id` ASC) VISIBLE,
  CONSTRAINT `fk_publisher_city1`
    FOREIGN KEY (`city_id`)
    REFERENCES `Library`.`city` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`original_book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`original_book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `original_title` VARCHAR(255) NOT NULL,
  `first_published` DATE NULL,
  `original_language_id` INT NULL,
  `original_publisher_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_book_language1_idx` (`original_language_id` ASC) VISIBLE,
  INDEX `fk_book_publisher1_idx` (`original_publisher_id` ASC) VISIBLE,
  CONSTRAINT `fk_book_language1`
    FOREIGN KEY (`original_language_id`)
    REFERENCES `Library`.`language` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_publisher1`
    FOREIGN KEY (`original_publisher_id`)
    REFERENCES `Library`.`publisher` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`book_edition`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`book_edition` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idbn` CHAR(13) NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `published` DATE NOT NULL,
  `pages` INT(5) NOT NULL,
  `description` VARCHAR(1000) NULL,
  `cover` BLOB NULL,
  `copies_all` INT(4) NOT NULL,
  `copies_available` INT(4) NOT NULL,
  `book_id` INT NOT NULL,
  `language_id` INT NOT NULL,
  `cover_type_id` INT NOT NULL,
  `publisher_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_book_language_idx` (`language_id` ASC) VISIBLE,
  INDEX `fk_book_edition_cover_type1_idx` (`cover_type_id` ASC) VISIBLE,
  INDEX `fk_book_edition_publisher1_idx` (`publisher_id` ASC) VISIBLE,
  INDEX `fk_book_edition_book1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_book_language`
    FOREIGN KEY (`language_id`)
    REFERENCES `Library`.`language` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_edition_cover_type1`
    FOREIGN KEY (`cover_type_id`)
    REFERENCES `Library`.`cover_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_edition_publisher1`
    FOREIGN KEY (`publisher_id`)
    REFERENCES `Library`.`publisher` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_edition_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `Library`.`original_book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`genre` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`series`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`series` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`book_in_series`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`book_in_series` (
  `series_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  `number` DECIMAL(4,1) NOT NULL,
  PRIMARY KEY (`series_id`, `book_id`),
  INDEX `fk_series_has_book_book1_idx` (`book_id` ASC) VISIBLE,
  INDEX `fk_series_has_book_series1_idx` (`series_id` ASC) VISIBLE,
  CONSTRAINT `fk_series_has_book_series1`
    FOREIGN KEY (`series_id`)
    REFERENCES `Library`.`series` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_series_has_book_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `Library`.`original_book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`author` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(50) NOT NULL,
  `lastname` VARCHAR(50) NULL,
  `description` VARCHAR(1000) NULL,
  `birth_date` DATE NOT NULL,
  `death_date` DATE NULL,
  `country_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_author_country1_idx` (`country_id` ASC) VISIBLE,
  CONSTRAINT `fk_author_country1`
    FOREIGN KEY (`country_id`)
    REFERENCES `Library`.`country` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`book_authorship`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`book_authorship` (
  `author_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  PRIMARY KEY (`author_id`, `book_id`),
  INDEX `fk_author_has_book_book1_idx` (`book_id` ASC) VISIBLE,
  INDEX `fk_author_has_book_author1_idx` (`author_id` ASC) VISIBLE,
  CONSTRAINT `fk_author_has_book_author1`
    FOREIGN KEY (`author_id`)
    REFERENCES `Library`.`author` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_author_has_book_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `Library`.`original_book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`book_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`book_genre` (
  `book_id` INT NOT NULL,
  `genre_id` INT NOT NULL,
  PRIMARY KEY (`book_id`, `genre_id`),
  INDEX `fk_book_has_genre_genre1_idx` (`genre_id` ASC) VISIBLE,
  INDEX `fk_book_has_genre_book1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_book_has_genre_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `Library`.`original_book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_has_genre_genre1`
    FOREIGN KEY (`genre_id`)
    REFERENCES `Library`.`genre` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`account_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`account_status` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`account_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`account_details` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(30) NOT NULL,
  `password` CHAR(60) NOT NULL,
  `firstname` VARCHAR(50) NOT NULL,
  `lastname` VARCHAR(50) NOT NULL,
  `email` VARCHAR(254) NOT NULL,
  `phone` VARCHAR(11) NOT NULL,
  `city` VARCHAR(90) NOT NULL,
  `zipcode` CHAR(5) NOT NULL,
  `street` VARCHAR(100) NOT NULL,
  `house` VARCHAR(5) NOT NULL,
  `flat` VARCHAR(5) NULL,
  `created` DATETIME NOT NULL,
  `is_active` BIT(1) NOT NULL,
  `last_active` DATETIME NOT NULL,
  `account_status_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) VISIBLE,
  INDEX `fk_account_details_account_status1_idx` (`account_status_id` ASC) VISIBLE,
  CONSTRAINT `fk_account_details_account_status1`
    FOREIGN KEY (`account_status_id`)
    REFERENCES `Library`.`account_status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`employee` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `role_id` INT NOT NULL,
  `account_details_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_employee_role1_idx` (`role_id` ASC) VISIBLE,
  INDEX `fk_employee_account_details1_idx` (`account_details_id` ASC) VISIBLE,
  CONSTRAINT `fk_employee_role1`
    FOREIGN KEY (`role_id`)
    REFERENCES `Library`.`role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_account_details1`
    FOREIGN KEY (`account_details_id`)
    REFERENCES `Library`.`account_details` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `account_details_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_customer_account_details1_idx` (`account_details_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer_account_details1`
    FOREIGN KEY (`account_details_id`)
    REFERENCES `Library`.`account_details` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`rental_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`rental_status` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`book_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`book_status` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`book` (
  `id` INT NOT NULL,
  `barcode` VARCHAR(12) NOT NULL,
  `book_edition_id` INT NOT NULL,
  `book_status_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_book_book_edition1_idx` (`book_edition_id` ASC) VISIBLE,
  INDEX `fk_book_book_status1_idx` (`book_status_id` ASC) VISIBLE,
  CONSTRAINT `fk_book_book_edition1`
    FOREIGN KEY (`book_edition_id`)
    REFERENCES `Library`.`book_edition` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_book_status1`
    FOREIGN KEY (`book_status_id`)
    REFERENCES `Library`.`book_status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`rental` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `booking_date_start` DATETIME NULL,
  `booking_date_end` DATETIME NULL,
  `rental_date_start` DATETIME NULL,
  `rental_till` DATETIME NULL,
  `rental_date_end` DATETIME NULL,
  `customer_id` INT NOT NULL,
  `rental_status_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_rental_customer1_idx` (`customer_id` ASC) VISIBLE,
  INDEX `fk_rental_rental_status1_idx` (`rental_status_id` ASC) VISIBLE,
  INDEX `fk_rental_book1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_rental_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `Library`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rental_rental_status1`
    FOREIGN KEY (`rental_status_id`)
    REFERENCES `Library`.`rental_status` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rental_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `Library`.`book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Library`.`review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Library`.`review` (
  `book_edition_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `content` VARCHAR(1000) NULL,
  `rate` ENUM('1', '2', '3', '4', '5') NOT NULL,
  `published` DATETIME NOT NULL,
  PRIMARY KEY (`book_edition_id`, `customer_id`),
  INDEX `fk_review_book_edition1_idx` (`book_edition_id` ASC) VISIBLE,
  INDEX `fk_review_customer1_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_review_book_edition1`
    FOREIGN KEY (`book_edition_id`)
    REFERENCES `Library`.`book_edition` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_review_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `Library`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
