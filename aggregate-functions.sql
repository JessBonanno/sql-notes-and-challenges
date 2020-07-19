--  * COUNT function
-- ? counts what you tell it to count
SELECT COUNT(*)
FROM books;
SELECT COUNT(author_fname)
FROM books;
SELECT COUNT(DISTINCT author_fname)
FROM books;
SELECT COUNT(DISTINCT author_lname)
FROM books;
SELECT COUNT(DISTINCT author_lname, author_fname)
FROM books;
SELECT COUNT(*)
FROM books
WHERE title LIKE '%the%';
-- * GROUP BY
-- ? groups results of query by summarizing or aggregating identical data into single rows creates 'super rows' containing all SELECTED items belonging to item being grouped by
SELECT title,
    author_lname
FROM books
GROUP BY author_lname;
SELECT author_lname,
    COUNT(*)
FROM books
GROUP BY author_lname;
SELECT title,
    author_fname,
    author_lname
FROM books
GROUP BY author_lname;
SELECT author_fname,
    author_lname,
    COUNT(*)
FROM books
GROUP BY author_lname;
SELECT author_fname,
    author_lname,
    COUNT(*)
FROM books
GROUP BY author_lname,
    author_fname;
SELECT released_year,
    COUNT(*)
FROM books
GROUP BY released_year;
SELECT CONCAT(
        'In ',
        released_year,
        ' ',
        COUNT(*),
        ' book(s) released'
    ) AS year
FROM books
GROUP BY released_year;

-- * Min and Max Basics
-- ? 