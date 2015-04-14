package com.qdgs.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Board implements Serializable {

	private int boardId; //°æ¿éID
    private String boardTitle;  //°æ¿é±êÌâ
    private int parentId; //Ö÷°æID
    private Set<Topic> topic=new HashSet<Topic>();
    
	public Board() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Board(int boardId, String boardTitle, int parentId, Set<Topic> topic) {
		super();
		this.boardId = boardId;
		this.boardTitle = boardTitle;
		this.parentId = parentId;
		this.topic = topic;
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
	public Set<Topic> getTopic() {
		return topic;
	}
	public void setTopic(Set<Topic> topic) {
		this.topic = topic;
	}
	
	@Override
	public String toString() {
		return "Board [boardId=" + boardId + ", boardName=" + boardTitle
				+ ", parentId=" + parentId + ", topic=" + topic + "]";
	}
}
