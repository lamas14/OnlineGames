package com.online.games.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.online.games.constant.SpringMvcNavigationCont;
import com.online.games.form.UserForm;
import com.online.games.service.UserService;

@Controller
@RequestMapping("/users")
@Scope("request")
public class UserController {

	@Autowired
	@Qualifier("UserServiceImpl")
	private UserService userService;

	@RequestMapping(value = "logout.htm", method = RequestMethod.GET)
	public String logOut(HttpSession session) {
		session.invalidate();
		return SpringMvcNavigationCont.LOGIN;
	}

	@RequestMapping(value = "addUser.htm", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("signUpForm") UserForm userForm,
			HttpSession session) {
		userForm.setRole("user");
		System.out.println(userForm);
		userService.addUser(userForm);
		return SpringMvcNavigationCont.LOGIN;
	}

	@RequestMapping(value = "loginCheck.htm", method = RequestMethod.POST)
	public String loginCheck(HttpServletRequest request, HttpSession session,
			Model model) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserForm userForm = userService.loginCheck(username, password);
		if (userForm != null) {
			session.setAttribute("user", userForm);
			return SpringMvcNavigationCont.USER_HOME;
		}
		model.addAttribute("error", "Invalid username or password");
		return SpringMvcNavigationCont.LOGIN;
	}

	@RequestMapping(value = "checkUsername.htm", method = RequestMethod.GET)
	public @ResponseBody
	String findUserByUsername(@RequestParam("username") String username) {
		UserForm userForm = null;
		userForm = userService.findUserByUsername(username);
		if (userForm != null) {
			return "1";
		}
		return "0";
	}
}
