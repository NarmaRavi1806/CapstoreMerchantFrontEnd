package com.cg.example.ExampleBackEndBoot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.cg.example")
public class ExampleBackEndBootApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(ExampleBackEndBootApplication.class, args);
	}
}
