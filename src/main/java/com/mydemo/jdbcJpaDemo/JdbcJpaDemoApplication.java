package com.mydemo.jdbcJpaDemo;

import com.mydemo.jdbcJpaDemo.entity.Person;
import com.mydemo.jdbcJpaDemo.jdbc.PersonJbdcDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.Date;

@SpringBootApplication
public class JdbcJpaDemoApplication implements CommandLineRunner {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	PersonJbdcDao dao;
	public static void main(String[] args) {
		SpringApplication.run(JdbcJpaDemoApplication.class, args);
	}

	public void run(String... args) throws Exception {

		logger.info("All users -> {}", dao.findAll());

		logger.info("User id 10001 -> {}", dao.findById(10001));

		logger.info("Deleting 10002 -> No of Rows Deleted - {}",
				dao.deleteById(10002));

		logger.info("Inserting 10007 -> {}",
				dao.insert(new Person(10007, "Tara", "Berlin", new Date())));

		logger.info("Update 10003 -> {}",
				dao.update(new Person(10003, "Pieter", "Utrecht", new Date())));

	}

}
