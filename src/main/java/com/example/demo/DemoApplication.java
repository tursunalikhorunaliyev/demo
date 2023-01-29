package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	@RequestMapping("/")
	public ResponseEntity<Map<String, Object>> basic(){
		final Map<String, Object> result = new HashMap<>();
		result.put("succes", true);
		result.put("message", "Application started...");
		return ResponseEntity.ok(result);
	}
}
