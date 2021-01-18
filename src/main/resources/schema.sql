
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
values ('Naruto (manga) Vol 1', 'Masashi Kishimoto'); 
 
insert into reviews (text, bookId)
values ('I started investing because of this book.', 1);
 
insert into reviews (text, bookId)
values ('Definitely worth the read!', 2);

insert into reviews (text, bookId)
values ('My kids love it! Interesting manga about ninjas.', 3);
