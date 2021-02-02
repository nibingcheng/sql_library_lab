-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
select *
from books
inner join authors
on authors.id = books.author_id
where name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
select *
from books
inner join authors
on authors.id = books.author_id
where name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
select *
from books
inner join authors
on authors.id = books.author_id
where nationality = 'China' or nationality = 'United Kingdom';

-- Find out how many books Albert Camus wrote.
select count(*)
from books
inner join authors
on authors.id = books.author_id
where authors.name = 'Albert Camus';

-- Find out how many books were written by US authors.
select count(*)
from books
inner join authors
on authors.id = books.author_id
where authors.nationality like 'United States%';

-- Find all books written after 1930 by authors from Argentina.
select *
from books
inner join authors
on authors.id = books.author_id
where authors.nationality like 'Argen%'
AND publication_date > 1930;

-- Find all books written before 1980 by authors not from the US.
select *
from books
inner join authors
on authors.id = books.author_id
where NOT authors.nationality = 'United States of America';

-- Find all authors whose names start with 'J'.
select name from authors where name like 'J%';

-- Find all books whose titles contain 'the'.
select * from books where title like '% the %';

-- Find all authors who have written books with that start with the letter 'N'.
select authors.name
from books
inner join authors
on authors.id = books.author_id
where title like 'N%';