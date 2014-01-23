package com.online.games.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.online.games.dao.GameDao;
import com.online.games.entity.GameEntity;
import com.online.games.form.GameForm;
import com.online.games.service.GameService;

@Service("GameServiceImpl")
public class GameServiceImpl implements GameService {

	@Autowired
	@Qualifier("GameDaoImpl")
	private GameDao gameDao;
	
	@Override
	public String uploadGame(GameForm gameForm) {
		GameEntity gameEntity = new GameEntity();
		BeanUtils.copyProperties(gameForm, gameEntity);
		String result = gameDao.uploadGame(gameEntity);
		return result;
	}

	@Override
	public List<GameForm> getTopGames() {
		List<GameEntity> gameEntities = gameDao.getTopGames();
		if(gameEntities!=null && gameEntities.size()>0){
			List<GameForm> gameForms = new ArrayList<GameForm>();
			for (GameEntity gameEntity : gameEntities) {
				GameForm gameForm = new GameForm();
				BeanUtils.copyProperties(gameEntity, gameForm);
				gameForms.add(gameForm);
			}
			return gameForms;
		} else{
			return null;
		}
		
	}

	@Override
	public byte[] findGameImageById(int id) {
		return gameDao.findGameImageById(id);
	}

}
