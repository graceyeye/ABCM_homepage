package com.service.mybatis.mapper;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

public interface CustMapper {
	//DAO���� ��� �� �Լ����� ���� �Ѵ�.
	public void insertCust(Object obj);
	public void updateCust(Object obj);
	public void deleteCust(Object obj);
	public Object selectCust(Object obj);
	public ArrayList<Object> selectAllCust();
	public ArrayList<Object> search(Object obj);
	public ArrayList<Object> selectAllCust(RowBounds rowBounds);
}