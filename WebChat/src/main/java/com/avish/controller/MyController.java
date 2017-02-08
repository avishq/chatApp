package com.avish.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	@RequestMapping("/")
	public String hi() {
		System.out.println("Abhishek");
		return "index";
	}
}
