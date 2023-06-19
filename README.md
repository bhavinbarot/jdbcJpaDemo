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
