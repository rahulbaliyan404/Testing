package com.home;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.home.pojo.DemoTest;
//import org.springframework.web.bind.annotation.RequestParam;
import com.home.pojo.UserPojo;

@Controller
public class ControllerTest {

	@Autowired
	DemoTest daoTest;

	@RequestMapping("/login")
	public String loadLoginPage() {
		return "login";
	}

	@RequestMapping("/home")
	public String loadHomePage() {
		return "home";
	}

	@RequestMapping("/")
	public String loadSignupPage() {
		return "signup";
	}

	@RequestMapping(value = "/saveDataAction", method = RequestMethod.POST)
	public String saveData(User user, HttpServletRequest request) {
		UserPojo userPojo=new UserPojo();
		userPojo.setUserName(user.getUserName());
		userPojo.setUserPassword(user.getUserPassword());
		userPojo.setUserEmail(user.getUserEmail());
	    daoTest.save(userPojo);
		return null;
	}
}
