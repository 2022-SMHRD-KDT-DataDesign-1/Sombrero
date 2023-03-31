package com.som.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.som.db.SqlSessionManager;

public class returnDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<returnVO> showAllReturn(){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<returnVO> returnList = sqlSession.selectList("showAllReturn");
		sqlSession.close();
		
		return returnList;
	}
}
