package com.som.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.som.db.SqlSessionManager;

public class ProductsDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public List<ProductsVO> showProducts() {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<ProductsVO> productsList = sqlSession.selectList("showProducts");
		sqlSession.close();
		
		return productsList;
	}
}
