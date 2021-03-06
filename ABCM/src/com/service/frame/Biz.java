package com.service.frame;

import java.util.ArrayList;

import org.springframework.transaction.annotation.Transactional;

public interface Biz {
	
	@Transactional
	public void register(Object obj) throws Exception;
	@Transactional
	public void modify(Object obj) throws Exception;
	@Transactional
	public void remove(Object obj) throws Exception;
	public Object get(Object obj) throws Exception;
	public ArrayList<Object> get() throws Exception;
	public  ArrayList<Object> search(Object obj) throws Exception;
	public  ArrayList<Object> search(int start, int end) throws Exception;
}
