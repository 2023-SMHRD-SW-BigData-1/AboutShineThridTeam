package com.shine.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.RequestScope;

@Controller
public class MainController {

	
	@GetMapping(value="/")
	public String home() {
		
		return "/mainpage/maps-leaflet";
	}
}
