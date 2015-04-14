package com.qdgs.bean;

import java.io.Serializable;



public class Reply  implements Serializable{
	private int replyId;  //»Ø¸´ID
	private String title;
	private String content;
	private String publishTime;
	private String modifyTime;
	private UserInfo userInfo;
	private Topic topic;
	private int topicId;  //Ö÷ÌâID
	public Reply() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reply(int replyId, String title, String content, String publishTime,
			String modifyTime, UserInfo userInfo, Topic topic, int topicId) {
		super();
		this.replyId = replyId;
		this.title = title;
		this.content = content;
		this.publishTime = publishTime;
		this.modifyTime = modifyTime;
		this.userInfo = userInfo;
		this.topic = topic;
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
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public Topic getTopic() {
		return topic;
	}
	public void setTopic(Topic topic) {
		this.topic = topic;
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
				+ modifyTime + ", userInfo=" + userInfo + ", topic=" + topic
				+ ", topicId=" + topicId + "]";
	}
	
	
}
