package com.service.mybatis.mapper;

import java.util.ArrayList;

public interface BoardMapper {
	public void insertBoard(Object obj);
	public void updateBoard(Object obj);
	public void deleteBoard(Object obj);
	public Object selectBoard(Object obj);
	public ArrayList<Object> selectAllBoard();
	public ArrayList<Object> search(Object obj);

}
