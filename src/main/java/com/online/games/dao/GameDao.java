package com.online.games.dao;

import java.util.List;

import com.online.games.entity.GameEntity;

public interface GameDao {

	public String uploadGame(GameEntity gameEntity);

	public List<GameEntity> getTopGames();

	public byte[] findGameImageById(int id);

}
