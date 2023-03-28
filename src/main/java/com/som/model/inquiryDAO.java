package com.som.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.som.db.SqlSessionManager;

	public class inquiryDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int uploadBoard(InquiryVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("uploadBoard", vo);
		sqlSession.close();
		return cnt;
	}

	public List<InquiryVO> showBoard() {
		List<InquiryVO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = sqlSession.selectList("showBoard");
		sqlSession.close();
		return list;
	}

	// 세부 게시글 조회
	public InquiryVO detailBoard(int num) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		InquiryVO vo = sqlSession.selectOne("detailBoard", num);
		sqlSession.close();

		return vo;
	}

}
