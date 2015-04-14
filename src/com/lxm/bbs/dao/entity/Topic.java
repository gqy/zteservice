package com.lxm.bbs.dao.entity;
public class Topic  {
	private int topicId;  //主题ID
	private String title;
	private String content;
	private String publishTime;
	private String modifyTime;
	private int userId;
	private int boardId;
	public Topic() {
		this.title="暂无主题信息";
		this.content="";
		this.publishTime="";
		this.modifyTime="2018-8-8 20:00:00.0";
		// TODO Auto-generated constructor stub
	}
	public Topic(int topicId, String title, String content, String publishTime,
			String modifyTime, int userId, int boardId) {
		super();
		this.topicId = topicId;
		this.title = title;
		this.content = content;
		this.publishTime = publishTime;
		this.modifyTime = modifyTime;
		this.userId = userId;
		this.boardId = boardId;
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
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	@Override
	public String toString() {
		return "Topic [topicId=" + topicId + ", title=" + title + ", content="
				+ content + ", publishTime=" + publishTime + ", modifyTime="
				+ modifyTime + ", userId=" + userId + ", boardId=" + boardId
				+ "]";
	}
	
}
