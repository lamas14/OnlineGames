package com.online.games.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.online.games.constant.SpringMvcNavigationCont;
import com.online.games.dao.UserDao;
import com.online.games.entity.UserEntity;

@Repository("UserDaoImpl")
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
    
	@Autowired
	@Qualifier("psessionFactory")
	public void injectSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	public String addUser(UserEntity userEntity) {
		getHibernateTemplate().save(userEntity);
		return SpringMvcNavigationCont.SUCCESS;
	}

	public UserEntity loginCheck(String username, String password) {
		@SuppressWarnings("unchecked")
		List<UserEntity> userEntities = getHibernateTemplate().find(
				"from UserEntity as ue where ue.username=? and ue.password=?",
				username, password);
		if(userEntities != null && userEntities.size()!=0){
			return userEntities.get(0);
		} else{
			return null;
		}
	}

	@Override
	public UserEntity findUserByUsername(String username) {
		@SuppressWarnings("unchecked")
		List<UserEntity> entities = getHibernateTemplate().find("from UserEntity where username=?",username);
		if(entities!=null && entities.size()>0){
			return  entities.get(0);
		}else{
			return  null;
		}
	}

}
