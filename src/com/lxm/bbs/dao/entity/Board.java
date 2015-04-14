package com.lxm.bbs.dao.entity;

public class Board {
	private int boardId;
	private  String boardTitle;
	private int parentId;
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Board(int boardId, 	String  boardTitle, int parentId) {
		super();
		this.boardId = boardId;
		this.boardTitle = boardTitle;
		this.parentId = parentId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	@Override
	public String toString() {
		return "Board [boardId=" + boardId + ", boardTitle=" + boardTitle
				+ ", parentId=" + parentId + "]";
	}
}
