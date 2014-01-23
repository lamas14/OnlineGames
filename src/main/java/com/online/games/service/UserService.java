package com.online.games.service;

import java.util.List;

import com.online.games.form.UserForm;


public interface UserService {
	
	public String addUser(UserForm userForm);
	public UserForm loginCheck(String username, String password);
	public List<UserForm> findUsers();
	public UserForm findUserByUsername(String username);
	
}
