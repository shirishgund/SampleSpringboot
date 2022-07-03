package com.telusko.SampleTest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController {
	@RequestMapping("/")
	public String home() {
		System.out.println("Calling webpage");
		return "welcome";
		
	}

}
