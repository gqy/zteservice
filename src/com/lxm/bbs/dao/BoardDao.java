package com.lxm.bbs.dao;

import java.util.Map;

import com.lxm.bbs.dao.entity.Board;


public interface BoardDao {
	//public int addBoard(Board board);  //增加版块
	public Map findBoard();
	public Board findBoard(int boardId);  //通过版块ID找到对应的主题信息
}
