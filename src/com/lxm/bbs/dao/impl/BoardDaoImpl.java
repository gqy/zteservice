package com.lxm.bbs.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.lxm.bbs.dao.BaseDao;
import com.lxm.bbs.dao.BoardDao;
import com.lxm.bbs.dao.entity.Board;

public class BoardDaoImpl extends BaseDao implements BoardDao {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private int parentId=0;  //主版块ID
	@Override
	public Map findBoard() {
		// TODO Auto-generated method stub
		Map map=new HashMap();
		List list=new ArrayList();
		String sql="select * from board order by parentId";
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				if (parentId!=rs.getInt("parentId")) {
					map.put(parentId+"", list);  //实现存子版块的map
					list=new ArrayList();
					parentId=rs.getInt("parentId");
				}
				Board board=new Board();
				board.setBoardId(rs.getInt("boardId"));
				board.setBoardTitle(rs.getString("boardTitle"));
				list.add(board);
			}
			map.put(parentId+"", list);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findBoard的Map方法出异常");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		
		return map;
	}

	@Override
	public Board findBoard(int boardId) {  //通过版块ID查找对应的版块信息
		// TODO Auto-generated method stub
		String sql="select * from board where boardId=?";
		Board board=null;
		try {
			conn=this.getConn();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, boardId);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				board=new Board();
				board.setBoardId(rs.getInt("boardId"));
				board.setBoardTitle(rs.getString("boardTitle"));
				board.setParentId(rs.getInt("parentId"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("findBoard方法使用boardId找版块出异常");
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return board;
	}
public static void main(String[] args){
	BoardDao boderdao=new BoardDaoImpl();
	boderdao.findBoard();
	System.out.println(boderdao.findBoard());
}
}
