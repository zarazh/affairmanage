package com.sanqing.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQlException;

public class DBConnection{
	private static final String DBDRIVER = "com.mysql.jdbc.Driver";
	private static final String BDURL="jdbc:mysql://localhost:3306/db_affairmanage";
	private static final String DBUSER="root";
	private static final String DBPASSWORD="123456"；
	public static Connection getConnection(){
		Connection conn = null;
		try{
			Class.forName(DBDRIVER);	//注册驱动
			conn = DriverManager.getConnection(DBURL,DBUSER,DBPASSWORD)；	//获得连接对象
		} catch(ClassNotFoundException e){
			e.printStackTrace();
		} catch(SQLException e){
			e.printStackTrace();
		}
		return conn;
	}
	public static void close(Connection conn){		//关闭连接对象
		if(conn != null){
			try{
				conn.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	public static void close (PreparedStatement pstmt){		//关闭预处理对象
		if(pstmt != null){
			try{
				pstmt.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	public static void close(ResultSet rs){
		if(rs != null){
			try{
				rd.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}