package com.online.games.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.online.games.constant.SpringMvcNavigationCont;
import com.online.games.dao.GameDao;
import com.online.games.entity.GameEntity;

@Repository("GameDaoImpl")
public class GameDaoImpl extends HibernateDaoSupport implements GameDao {

	@Autowired
	@Qualifier("psessionFactory")
	public void injectSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public String uploadGame(GameEntity gameEntity) {
		getHibernateTemplate().save(gameEntity);
		return SpringMvcNavigationCont.SUCCESS;
	}

	@Override
	public List<GameEntity> getTopGames() {
		@SuppressWarnings("unchecked")
		List<GameEntity> gameEntities = getHibernateTemplate().find("from GameEntity as ge where ge.rating>? order by ge.id ASC", 2);
		return gameEntities;
	}

	@Override
	public byte[] findGameImageById(int id) {
		return getHibernateTemplate().get(GameEntity.class, id).getPicture();
	}

}
