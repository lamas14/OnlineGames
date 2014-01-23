package com.online.games.service;

import java.util.List;

import com.online.games.form.GameForm;

public interface GameService {

	public String uploadGame(GameForm gameForm);
	
	public List<GameForm> getTopGames();

	public byte[] findGameImageById(int id);

}
