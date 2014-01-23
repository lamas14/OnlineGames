package com.online.games.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.online.games.constant.SpringMvcNavigationCont;
import com.online.games.form.GameForm;
import com.online.games.form.UserForm;
import com.online.games.service.GameService;

@Controller
@RequestMapping(value = "/admin")
@Scope("request")
public class AdminController {

	@Autowired
	@Qualifier("GameServiceImpl")
	private GameService gameService;

	@RequestMapping(value = "uploadGame.htm", method = RequestMethod.GET)
	public String uploadGamePage(HttpSession session) {
		UserForm user = (UserForm) session.getAttribute("user");
		if(user.getRole().equals("admin")){
			return SpringMvcNavigationCont.UPLOAD_GAME;
		}
		return SpringMvcNavigationCont.INDEX;
	}

	@RequestMapping(value = "uploadGame.htm", method = RequestMethod.POST)
	public String uploadGame(
			@ModelAttribute("uploadGameForm") GameForm gameForm,
			HttpSession session) {
		System.out.println(gameForm);
		session.setAttribute("uploadGameForm", gameForm);
		return SpringMvcNavigationCont.UPLOAD_GAME_IMAGE;
	}

	@RequestMapping(value = "uploadGameImage.htm", method = RequestMethod.POST)
	public String uploadImageGame(
			@RequestParam(value = "photo", required = false) MultipartFile photo,
			HttpSession session) {
		GameForm gameForm = (GameForm) session.getAttribute("uploadGameForm");
		byte[] pphoto = null;
		try {
			pphoto = photo.getBytes();
		} catch (Exception e) {
			e.printStackTrace();
		}
		session.removeAttribute("uploadGameForm");
		String imageName = photo.getOriginalFilename();
		gameForm.setPictureName(imageName);
		gameForm.setPicture(pphoto);

		gameService.uploadGame(gameForm);

		return SpringMvcNavigationCont.INDEX;
	}

}
