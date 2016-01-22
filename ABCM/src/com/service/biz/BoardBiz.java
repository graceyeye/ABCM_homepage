package com.service.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.service.frame.Biz;
import com.service.frame.Dao;

@Service("boardbiz")
public class BoardBiz implements Biz {

	@Resource(name="boarddao")
	Dao dao;

	@Override
	public void register(Object obj) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(obj);
	}

	@Override
	public void modify(Object obj) throws Exception {
		// TODO Auto-generated method stub
		dao.update(obj);
	}

	@Override
	public void remove(Object obj) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(obj);
	}

	@Override
	public Object get(Object obj) throws Exception {
		return dao.select(obj);
	}

	@Override
	public ArrayList<Object> get() throws Exception {
		//System.out.println("bizget«“≤®æﬂ");
		dao.toString();
		return dao.select();
	}

	@Override
	public ArrayList<Object> search(Object obj) throws Exception {
		return dao.search(obj);
	}

	@Override
	public ArrayList<Object> search(int start, int end) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
