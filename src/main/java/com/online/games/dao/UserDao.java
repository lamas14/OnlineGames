package com.online.games.dao;

import com.online.games.entity.UserEntity;

public interface UserDao {

	public String addUser(UserEntity userEntity);

	public UserEntity loginCheck(String username, String password);

	public UserEntity findUserByUsername(String userid);
}
