package com.service.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.service.frame.Dao;
import com.service.mybatis.mapper.BoardMapper;

@Repository("boarddao")
public class BoardDao implements Dao {
	
	@Autowired
	BoardMapper db;

	@Override
	public void insert(Object obj) throws Exception {
		// TODO Auto-generated method stub
		db.insertBoard(obj);
		
	}

	@Override
	public void update(Object obj) throws Exception {
		// TODO Auto-generated method stub
		db.updateBoard(obj);
	}

	@Override
	public void delete(Object obj) throws Exception {
		// TODO Auto-generated method stub
		db.deleteBoard(obj);
	}

	@Override
	public Object select(Object obj) throws Exception {
		// TODO Auto-generated method stub
		return db.selectBoard(obj);
	}

	@Override
	public ArrayList<Object> select() throws Exception {
		// TODO Auto-generated method stub
		//System.out.println("select«œ±∏¿÷");
		db.toString();
		return db.selectAllBoard();
	}

	@Override
	public ArrayList<Object> search(Object obj) throws Exception {
		// TODO Auto-generated method stub
		return db.search(obj);
	}

	@Override
	public ArrayList<Object> search(int start, int end) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	

}
