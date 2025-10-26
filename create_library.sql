-- Schema
CREATE DATABASE IF NOT EXISTS LibraryManagement
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_0900_ai_ci;
USE LibraryManagement;

-- Authors
CREATE TABLE authors (
  author_id   INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  author_name VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- Genres
CREATE TABLE genres (
  genre_id    INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  genre_name  VARCHAR(128) NOT NULL
) ENGINE=InnoDB;

-- Books
CREATE TABLE books (
  book_id          INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  title            VARCHAR(255) NOT NULL,
  publication_year YEAR NOT NULL,
  author_id        INT UNSIGNED NOT NULL,
  genre_id         INT UNSIGNED NOT NULL,
  CONSTRAINT fk_books_author
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_books_genre
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  KEY ix_books_author (author_id),
  KEY ix_books_genre  (genre_id)
) ENGINE=InnoDB;

-- Users
CREATE TABLE users (
  user_id  INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(128) NOT NULL,
  email    VARCHAR(255) NOT NULL,
  UNIQUE KEY uq_users_email (email)
) ENGINE=InnoDB;

-- Borrowed books
CREATE TABLE borrowed_books (
  borrow_id   INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  book_id     INT UNSIGNED NOT NULL,
  user_id     INT UNSIGNED NOT NULL,
  borrow_date DATE NOT NULL,
  return_date DATE NULL,
  CONSTRAINT fk_borrow_book
    FOREIGN KEY (book_id) REFERENCES books(book_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_borrow_user
    FOREIGN KEY (user_id) REFERENCES users(user_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  KEY ix_borrow_book (book_id),
  KEY ix_borrow_user (user_id),
  KEY ix_borrow_dates (borrow_date, return_date)
) ENGINE=InnoDB;
