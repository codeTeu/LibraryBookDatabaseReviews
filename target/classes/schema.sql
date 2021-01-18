
create table books (
  id       INT NOT NULL Primary Key AUTO_INCREMENT,
  title    VARCHAR(128) NOT NULL,
  author   VARCHAR(128) NOT NULL 
);


create table reviews (
  id       INT NOT NULL Primary Key AUTO_INCREMENT,
  bookId   LONG NOT NULL,	
  text     VARCHAR(1024) NOT NULL UNIQUE
);



alter table reviews
  add constraint book_review_fk foreign key (bookId)
  references books (id);

insert into books (title, author)
values ('The Intelligent Investor', 'Benjamin Graham');
 
insert into books (title, author)
values ('How to Win Friends and Influence People', 'Dale Carnegie'); 

insert into books (title, author)
values ('Think and Grow Rich', 'Napoleon Hill'); 
 
insert into reviews (text, bookId)
values ('An intereting book about investing.', 1);
 
insert into reviews (text, bookId)
values ('Helpful book about how to build relationships with others.', 2);

insert into reviews (text, bookId)
values ('Highly recommended! ', 3);
