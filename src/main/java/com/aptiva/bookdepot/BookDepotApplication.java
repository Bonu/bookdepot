package com.aptiva.bookdepot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableAutoConfiguration
public class BookDepotApplication {

    public static void main(String[] args) {
        SpringApplication springBootApplication = new SpringApplication(BookDepotApplication.class);
        springBootApplication.run(args);
    }

}