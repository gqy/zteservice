package com.lxm.bbs.dao;

import java.util.List;

import com.lxm.bbs.dao.entity.Reply;

public interface ReplyDao {
	public int addReply(Reply reply);  //���ӻظ�
	public int deleteReply(int ReplyId);  //ɾ���ظ�
	public int updateReply(Reply reply);  //�޸Ļظ�
	public List findListReply(int page,int TopicId);  //����ĳ������ʾ�ڼ�ҳ�Ļظ��б�
	public Reply findReply(int replyId);  //ͨ���ظ�ID�ҵ���Ӧ�ظ���Ϣ
	public int findCountReply(int topicId);  //��������ID�ҵ���ǰ�ظ���
	public int findUserCountReply(int uId);  //ͳ���û��Ļ�����
}