package com.github.devlatour.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.github.devlatour.model.User;
import com.github.devlatour.service.UserService;
import com.github.devlatour.support.UserLogin;

@Controller
@SessionAttributes("user")
public class UserController {
	
	List<User> users;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(@ModelAttribute("user") User user, Model model) {
		if (userService.getUserByEmail(user.getEmailAddress())) {
			model.addAttribute("message",
					"User Name exists. Try another user name");
			return "signup";
		} else {
			userService.insertUser(user);
			model.addAttribute("message", "Saved user details");
			return "redirect:login.html";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		UserLogin userLogin = new UserLogin();
		model.addAttribute("userLogin", userLogin);
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("userLogin") UserLogin userLogin) {
		boolean found = userService.getUserByLogin(userLogin.getEmailAddress(),
				userLogin.getPassword());
		if (found) {
			return "success";
		} else {
			return "failure";
		}
	}

	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public ModelAndView renderTable() {
		ModelAndView mv = new ModelAndView("/success");
		mv.addObject("Users", users);
		return mv;
	}
}
