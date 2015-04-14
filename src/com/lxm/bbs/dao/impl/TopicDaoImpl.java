package com.lxm.bbs.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.lxm.bbs.dao.BaseDao;
import com.lxm.bbs.dao.TopicDao;
import com.lxm.bbs.dao.entity.Topic;

public class TopicDaoImpl extends BaseDao implements TopicDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public List findListTopic(int page, int boardId) {
	
	    System.out.println("1");
		int rowBegin = 0;
		
		if (page > 1) {
			rowBegin = 20 * (page - 1);
			
		}
		List list = new ArrayList(); // 用来保存主题对象的列表
		String sql = "select * from topic where boardId=" + boardId
				+ " order by publishTime desc limit "+rowBegin+",20";
		try {
			 System.out.println("2"+"page"+page+",boardId"+boardId);
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
		while (rs.next()) {
			Topic topic=new Topic();
			 System.out.println("3");
			topic.setTopicId(rs.getInt("topicId"));
			topic.setTitle(rs.getString("title"));
			topic.setContent(rs.getString("content"));
			topic.setPublishTime(rs.getString("publishTime"));
			topic.setModifyTime(rs.getString("modifyTime"));
			topic.setUserId(rs.getInt("userId"));
			topic.setBoardId(rs.getInt("boardId"));
			System.out.println("topic:"+topic.toString());
			list.add(topic);
		}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findListTopic方法出现异常");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		
		return list;
	}
	@Override
	public int addTopic(Topic topic) {
		// TODO Auto-generated method stub

		String time=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date());
		String sql="insert into topic(title,content,publishTime,modifyTime,userId,boardId) values(?,?,?,?,?,?)";
		String[] getValue={topic.getTitle(),topic.getContent(),time,time,topic.getUserId()+"",topic.getBoardId()+""};
		return this.executeSQL(sql, getValue);
	}

	public int deleteTopic(int topicId) {
		// TODO Auto-generated method stub
		String sql="delete from topic where topicId=?";
		String [] getValue={topicId+""};
		return this.executeSQL(sql, getValue);
	}

	public Topic findTopic(int topicId) { //通过主题ID查找对应的主题信息
		// TODO Auto-generated method stub
		Topic topic=null;
		String sql="select * from topic where topicId=?";
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, topicId);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				topic=new Topic();
				topic.setTopicId(rs.getInt("topicId"));
				topic.setTitle(rs.getString("title"));
				topic.setContent(rs.getString("content"));
				topic.setPublishTime(rs.getString("publishTime"));
				topic.setModifyTime(rs.getString("modifyTime"));
				topic.setUserId(rs.getInt("userId"));
				topic.setBoardId(rs.getInt("boardId"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findTopic方法通过主题ID出异常");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return topic;
	}

	public int updateTopic(Topic topic) {
		// TODO Auto-generated method stub
		String time=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date());
		String sql="update topic set title=?,content=?,modifyTime=? where topicId=?";
		String[] getValue={topic.getTitle(),topic.getContent(),time,topic.getTopicId()+""};
		return this.executeSQL(sql, getValue);
	}

	

	public int findCountTopic(int boardId) {
		// TODO Auto-generated method stub
		int flag=0;  //主题数
		String sql="select count(*) from topic where boardId=?";
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, boardId);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				flag=rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findCountTopic方法出异常");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return flag;
	}
	public static void main(String[] args){
		TopicDao topicdao=new TopicDaoImpl();
		System.out.print(topicdao.findListTopic(1,4));
	}
}

	


