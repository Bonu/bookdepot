package com.aptiva.bookdepot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class BookDepotApplication {

    public static void main(String[] args) {
        SpringApplication springBootApplication = new SpringApplication(BookDepotApplication.class);
        springBootApplication.run(args);
    }

}