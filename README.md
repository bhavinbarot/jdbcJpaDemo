# jdbcJpaDemo
Samples to create JDBC JPA H2 and Web dependencies

Step 1- Create a Spring Boot project with following dependencies.
Project : Maven
Language - JAVA
Spring Boot - 3.1.0
Dependencies: JDBC API, H2 Database, Spring Web

Step 2 - Run the blank project

Step 3 - 
Note :
H2 database name is randomly generated each time you restart the server.
Data Loading from data.sql needs additional configuration
Use this configuration in  application.properties
spring.datasource.url=jdbc:h2:mem:testdb;NON_KEYWORDS=USER
spring.h2.console.enabled=true
spring.data.jpa.repositories.bootstrap-mode=default
spring.jpa.defer-datasource-initialization=true

Step 4 - Run the project
H2 console available at '/h2-console'. Database available at 'jdbc:h2:mem:testdb'
i.e. http://localhost:8080/h2-console

Saved Settings : Generic H2 (Embedded)
Setting Name : Generic H2 (Embedded)
Driver Class : org.h2.Driver
JDBC URL : jdbc:h2:mem:testdb (By default you would see as jdbc:h2:~/test)
User Name : sa
Password : {Blank}
Click on Connect

You should see H2 DB schema.


Step 4 : 
Create a table in H2 Databse by adding data.sql file in resources.
//Add this query. (make sure the data.sql file is not empty.)
create table person
(
id integer not null,
name varchar(255) not null,
location varchar(255),
birth_date timestamp,
primary key(id)
);

Run the project and h2-console should show the Person Table.

Step 5: Adding rows in the table.
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10001,  'Mulji Jani', 'Bhadra',sysdate());
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10002,  'Pragji', 'Mahuva',sysdate());
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10003,  'Dungar Patel', 'Mahelav',sysdate());
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10003,  'Jina Vasani', 'Dhari',sysdate());
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10003,  'Shantilal Patel', 'Chansad',sysdate());
INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE ) VALUES(10003,  'Vinu Patel', 'Jabalpur',sysdate());

Now, you may get this error. 
Caused by: org.h2.jdbc.JdbcSQLSyntaxErrorException: Function "SYSDATE" not found; SQL statement:

Does Spring embedded database support different SQL dialects?
But also, to use the compatibility mode with H2 and Spring, you just have to set the mode in your JDBC URL (so it is not Spring related) in a classic way, using a DataSource:
jdbc:h2:~/test;MODE=Oracle
jdbc:h2:mem:testdb;MODE=Oracle


You may replace the sysdate with {ts '2012-09-17 18:47:52.69'} for the timestamp format.

Step 6 - Add jdbc package, and then PersonJbdcDao class
This class talks to the database and gets the values from the DB.
Annotate with @Repository from org.springframework.stereotype.Repository;

Step 7 - Add entity package, and add a class for Person

