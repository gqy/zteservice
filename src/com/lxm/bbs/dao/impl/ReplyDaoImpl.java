package com.lxm.bbs.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.lxm.bbs.dao.BaseDao;
import com.lxm.bbs.dao.ReplyDao;
import com.lxm.bbs.dao.entity.Reply;

public class ReplyDaoImpl extends BaseDao implements ReplyDao{

	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	public int addReply(Reply reply) {
		// TODO Auto-generated method stub
		String time = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss")
				.format(new Date());
		String sql = "insert into reply(title,content,publishTime,modifyTime,userId,topicId) values(?,?,?,?,?,?)";
		String[] getValue = { reply.getTitle(), reply.getContent(), time, time,
				reply.getUserId() + "", reply.getTopicId() + "" };
		return this.executeSQL(sql, getValue);
	}

	public int deleteReply(int ReplyId) {
		// TODO Auto-generated method stub
		String sql = "delete from reply where replyId=?";
		String[] getValue = { ReplyId + "" };
		return this.executeSQL(sql, getValue);
	}

	public List findListReply(int page, int TopicId) {
		// TODO Auto-generated method stub
		// List list=new LinkedList();
		// for (int i = 0; i < 10; i++) {
		// Reply reply=new Reply();
		// reply.setTopicId(i+1);
		// reply.setTitle("回复:"+i+"标题");
		// reply.setContent("回复"+i+"内容");
		// reply.setPublishTime("2009-07-30 11:47:00");
		// reply.setReplyId(i);
		// list.add(reply);
		// }
		List list = new ArrayList();
		int rowBegin = 0;
		if (page > 1) {
			rowBegin = 10 * (page - 1);
		}
		String sql = "select * from reply where topicId=?  order by publishTime  limit "+rowBegin+",10";
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, TopicId);
			//pstmt.setInt(2, TopicId);
//			pstmt.setInt(3, TopicId);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				Reply reply=new Reply();
				reply.setTitle(rs.getString("title"));
				reply.setContent(rs.getString("content"));
				reply.setPublishTime(rs.getString("publishTime"));
				reply.setModifyTime(rs.getString("modifyTime"));
				reply.setUserId(rs.getInt("userId"));
				reply.setTopicId(rs.getInt("topicId"));
				reply.setReplyId(rs.getInt("replyId"));
				list.add(reply);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findListReply方法出现异常");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}

	public int updateReply(Reply reply) {
		// TODO Auto-generated method stub
		String time = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss")
		.format(new Date());
		String sql="update reply set title=?,content=?,modifyTime=? where replyId=?";
		String [] getValue={reply.getTitle(),reply.getContent(),time,reply.getReplyId()+""};
		return this.executeSQL(sql, getValue);
	}

	public int findCountReply(int topicId) {  //查找回复数
		// TODO Auto-generated method stub
		int flag=0;
		String sql="select count(*) from reply where topicId="+topicId;
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				flag=rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findCountReply方法异常");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return flag;
	}

	public Reply findReply(int replyId) {
		// TODO Auto-generated method stub
		Reply reply=null;
		String sql="select * from reply where replyId=?";
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, replyId);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				reply=new Reply();
				reply.setReplyId(rs.getInt("replyId"));
				reply.setTitle(rs.getString("title"));
				reply.setContent(rs.getString("content"));
				reply.setPublishTime(rs.getString("publishTime"));
				reply.setModifyTime(rs.getString("modifyTime"));
				reply.setUserId(rs.getInt("userId"));
				reply.setTopicId(rs.getInt("topicId"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("通过replyId查找主题出异常");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return reply;
	}

	public int findUserCountReply(int id) {
		// TODO Auto-generated method stub
		String sql="select count(*) from reply where userId="+id;
		int count=0;
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return count;
	}

}
