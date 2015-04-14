package com.lxm.bbs.dao;

import java.util.List;

import com.lxm.bbs.dao.entity.Topic;

public interface TopicDao {
	public Topic findTopic(int topicId);  //��������
	public int addTopic(Topic topic);  //��������
	public int deleteTopic(int topicId);  //ɾ������
	public int updateTopic(Topic topic);  //�޸�����
	public List findListTopic(int page,int boardId);  //��ѯ�����б�
	public int findCountTopic(int boardId);  //���ݰ��ID���Ҷ�Ӧ��������
}
