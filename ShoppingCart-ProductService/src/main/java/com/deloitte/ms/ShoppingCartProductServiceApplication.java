package com.deloitte.ms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class ShoppingCartProductServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(ShoppingCartProductServiceApplication.class, args);
	}

}
