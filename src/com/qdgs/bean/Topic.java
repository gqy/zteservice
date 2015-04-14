package com.qdgs.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Topic  implements Serializable{
	private int topicId;  //Ö÷ÌâID
	private String title;
	private String content;
	private String publishTime;
	private String modifyTime;
	private Set<Reply> reply=new HashSet<Reply>();
	private UserInfo userInfo;
	private Board board;
	public Topic() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Topic(int topicId, String title, String content, String publishTime,
			String modifyTime, Set<Reply> reply, UserInfo userInfo, Board board) {
		super();
		this.topicId = topicId;
		this.title = title;
		this.content = content;
		this.publishTime = publishTime;
		this.modifyTime = modifyTime;
		this.reply = reply;
		this.userInfo = userInfo;
		this.board = board;
	}
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	public String getModifyTime() {
		return modifyTime;
	}
	public void setModifyTime(String modifyTime) {
		this.modifyTime = modifyTime;
	}
	public Set<Reply> getReply() {
		return reply;
	}
	public void setReply(Set<Reply> reply) {
		this.reply = reply;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public Board getBoard() {
		return board;
	}
	public void setBoard(Board board) {
		this.board = board;
	}
	@Override
	public String toString() {
		return "Topic [topicId=" + topicId + ", title=" + title + ", content="
				+ content + ", publishTime=" + publishTime + ", modifyTime="
				+ modifyTime + ", reply=" + reply + ", userInfo=" + userInfo
				+ ", board=" + board + "]";
	}
	
}
