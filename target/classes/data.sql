create table person
(
   id integer not null,
   name varchar(255) not null,
   location varchar(255),
   birth_date timestamp,
   primary key(id)
);

INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10001,  'Mulji Jani', 'Bhadra',{ts '2012-09-17 18:47:52.69'});
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10002,  'Pragji Bhakt', 'Mahuva',{ts '2012-09-17 18:47:52.69'});
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10003,  'Dungar Patel', 'Mahelav',{ts '2012-09-17 18:47:52.69'});
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10004,  'Jina Vasani', 'Dhari',{ts '2012-09-17 18:47:52.69'});
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10005,  'Shantilal Patel', 'Chansad',{ts '2012-09-17 18:47:52.69'});
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10006,  'Vinu Patel', 'Jabalpur',{ts '2012-09-17 18:47:52.69'});