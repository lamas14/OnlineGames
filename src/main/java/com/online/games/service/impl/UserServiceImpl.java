package com.online.games.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.online.games.constant.SpringMvcNavigationCont;
import com.online.games.dao.UserDao;
import com.online.games.entity.UserEntity;
import com.online.games.form.UserForm;
import com.online.games.service.UserService;

@Service("UserServiceImpl")
public class UserServiceImpl implements UserService {

	@Autowired
	@Qualifier("UserDaoImpl")
	private UserDao userDao;
	
	public String addUser(UserForm userForm) {
		UserEntity userEntity = new UserEntity();
		BeanUtils.copyProperties(userForm, userEntity);
		userDao.addUser(userEntity);
		return SpringMvcNavigationCont.SUCCESS;
	}

	public List<UserForm> findUsers() {
		
		return null;
	}

	public UserForm loginCheck(String username, String password) {
		UserEntity userEntity = userDao.loginCheck(username, password);
		if(userEntity!=null){
			UserForm userForm = new UserForm();
			BeanUtils.copyProperties(userEntity, userForm);
			return userForm;
		}
		return null;
	}

	@Override
	public UserForm findUserByUsername(String username) {
		UserEntity userEntity=userDao.findUserByUsername(username);
		UserForm userForm= null;
		if (userEntity!=null) {
			userForm= new UserForm();
			BeanUtils.copyProperties(userEntity, userForm);
		}
		return userForm;
	}

}
