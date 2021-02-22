package com.home;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerTest {

	@RequestMapping("/login")
	public String loadLoginPage() {
		return "login";
	}
	
	@RequestMapping("/getLoggedIn")
	public String getLoggedIn() {
		return "home";
	}

	@RequestMapping("/home")
	public String loadHomePage() {
		return "home";
	}

	@RequestMapping("/")
	public String loadSignupPage() {
		return "signup";
	}
}
