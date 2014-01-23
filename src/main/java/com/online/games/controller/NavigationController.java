package com.online.games.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.online.games.constant.SpringMvcNavigationCont;
import com.online.games.form.GameForm;
import com.online.games.service.GameService;
import com.online.games.service.UserService;

@Controller
@RequestMapping("/nav")
@Scope("request")
public class NavigationController {

	@Autowired
	@Qualifier("UserServiceImpl")
	private UserService userService;
	
	@Autowired
	@Qualifier("GameServiceImpl")
	private GameService gameService;

	// this page is called when we are displaying our initial registration form
	@RequestMapping(value = "login.htm", method = RequestMethod.GET)
	public String loginPage() {
		return SpringMvcNavigationCont.LOGIN;
	}
	
	@RequestMapping(value = "index.htm", method = RequestMethod.GET)
	public String indexPage(Model model) {
		List<GameForm> gameList = gameService.getTopGames();
		model.addAttribute("games",gameList);
		return SpringMvcNavigationCont.INDEX;
	}

	@RequestMapping(value = "loadImageById.htm", method = RequestMethod.GET)
	public void loadImageById(HttpServletRequest request,
			HttpServletResponse response) {
		String id = request.getParameter("id");
		byte[] byteArray = gameService.findGameImageById(Integer.parseInt(id));
		response.setContentType("image/jpeg");
		try {
			ServletOutputStream out = response.getOutputStream();
			if (byteArray != null)
				out.write(byteArray);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "signup.htm", method = RequestMethod.GET)
	public String signUp() {
		return SpringMvcNavigationCont.SIGN_UP;
	}
	@RequestMapping(value = "deals.htm", method = RequestMethod.GET)
	public String dealsPage() {
		return SpringMvcNavigationCont.DEALS;
	}
	@RequestMapping(value = "help.htm", method = RequestMethod.GET)
	public String helpPage() {
		return SpringMvcNavigationCont.HELP;
	}

}
