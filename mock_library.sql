USE LibraryManagement;

-- authors
INSERT INTO authors (author_name) VALUES
('George Orwell'),
('Jane Austen'),
('J.K. Rowling'),
('Haruki Murakami'),
('Agatha Christie'),
('Isaac Asimov'),
('Toni Morrison'),
('Ernest Hemingway');

-- genres
INSERT INTO genres (genre_name) VALUES
('Dystopian'),
('Romance'),
('Fantasy'),
('Mystery'),
('Science Fiction'),
('Literary');

-- books (assumes IDs start at 1 in the order inserted above)
INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('1984',                       1949, 1, 1),
('Animal Farm',                1945, 1, 1),
('Kafka on the Shore',         2002, 4, 6),
('Murder on the Orient Express', 1934, 5, 4),
('Foundation',                 1951, 6, 5),
('Beloved',                    1987, 7, 6),
('The Old Man and the Sea',    1952, 8, 6),
('Harry Potter and the Chamber of Secrets', 1998, 3, 3);

INSERT INTO users (username, email) VALUES
('ann_k',   'ann.k@example.com'),
('bob_s',   'bob.smith@example.com'),
('cathy_m', 'cathy.m@example.com'),
('dan_r',   'dan.r@example.com'),
('eva_t',   'eva.t@example.com'),
('leo_p',   'leo.p@example.com');


INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(31, 1, '2025-10-01', '2025-10-15'),
(32, 2, '2025-10-03', NULL),
(33, 3, '2025-09-25', '2025-10-05'),
(34, 4, '2025-10-10', NULL),
(35, 5, '2025-09-20', '2025-09-30'),
(36, 2, '2025-10-12', NULL),
(37, 6, '2025-10-02', '2025-10-16'),
(30, 1, '2025-09-28', '2025-10-08');





