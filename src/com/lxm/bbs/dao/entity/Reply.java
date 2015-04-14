package com.lxm.bbs.dao.entity;


public class Reply  {
	private int replyId;  //»Ø¸´ID
	private String title;
	private String content;
	private String publishTime;
	private String modifyTime;
	private int userId;
	private int topicId;
	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reply(int replyId, String title, String content, String publishTime,
			String modifyTime, int userId, int topicId) {
		super();
		this.replyId = replyId;
		this.title = title;
		this.content = content;
		this.publishTime = publishTime;
		this.modifyTime = modifyTime;
		this.userId = userId;
		this.topicId = topicId;
	}
	public int getReplyId() {
		return replyId;
	}
	public void setReplyId(int replyId) {
		this.replyId = replyId;
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
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}
	@Override
	public String toString() {
		return "Reply [replyId=" + replyId + ", title=" + title + ", content="
				+ content + ", publishTime=" + publishTime + ", modifyTime="
				+ modifyTime + ", userId=" + userId + ", topicId=" + topicId
				+ "]";
	}
	
	
	
	
}
