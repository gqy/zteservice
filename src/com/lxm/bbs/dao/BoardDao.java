package com.lxm.bbs.dao;

import java.util.Map;

import com.lxm.bbs.dao.entity.Board;


public interface BoardDao {
	//public int addBoard(Board board);  //���Ӱ��
	public Map findBoard();
	public Board findBoard(int boardId);  //ͨ�����ID�ҵ���Ӧ��������Ϣ
}
