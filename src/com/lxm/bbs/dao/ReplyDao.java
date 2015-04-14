package com.lxm.bbs.dao;

import java.util.List;

import com.lxm.bbs.dao.entity.Reply;

public interface ReplyDao {
	public int addReply(Reply reply);  //增加回复
	public int deleteReply(int ReplyId);  //删除回复
	public int updateReply(Reply reply);  //修改回复
	public List findListReply(int page,int TopicId);  //根据某主题显示第几页的回复列表
	public Reply findReply(int replyId);  //通过回复ID找到对应回复信息
	public int findCountReply(int topicId);  //根据主题ID找到当前回复数
	public int findUserCountReply(int uId);  //统计用户的回贴数
}