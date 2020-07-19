package com.mbesozzi.example.demo.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloController
{
    @GetMapping(value = {"/",""})
	public String index(){
		return "Hello";
	}

	@GetMapping(value = {"/version"})
	public String version(){
		return "v1";
	}
}


