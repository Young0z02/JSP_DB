package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import login.loginDo;

public class loginDao {
	
	//MySQL 디비 연동 시작 !!
	String id = "root";
	String password = "1111";
	String url ="jdbc:mysql://localhost:3307/jspdb_e?characterEncoding=utf-8";
	
	//디비 연동에 필요한 JDBC 클래스 선언
	Connection conn = null; //java.sql로 import
	PreparedStatement pstmt = null; //java.sql로 import
	ResultSet rs = null; //java.sql로 import
	private String username;
	
	public void connect_cp() {
		  
		 try {
			//컨텍스트 객체 생성
			Context initctx = new InitialContext();
			//context.xml접근
			Context envctx = (Context) initctx.lookup("java:/comp/env");
			//'jdbc/pool; 이름 커넥션 풀에 접근
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			// 커넥션 풀로부터 커넥션 하나 빌려오기
			conn = ds.getConnection();
			
			System.out.println("커넥션 풀로부터 디비 연결 성공 !!");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void connect() {
	   
	   try {
	      //MySQL 드아리버 로딩
	      Class.forName("com.mysql.jdbc.Driver");
	      //디비 연결 
	      conn = DriverManager.getConnection(url, id, password);
	      System.out.println("디비 연결 완료");
	   } catch (Exception e) {
	      e.printStackTrace();
	   }
	   
	}
	
	public void disConnect() {
		 if (conn != null) {
	            try {
	               conn.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
	         
	         if (pstmt != null) {
	            try {
	               pstmt.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
	         if(rs != null) {
	            try {
	               rs.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
		}
	
	 //입력된 데이터 저장 메소드
	public void insertlogin(loginDo ado) {
			System.out.println("insertlogin() 처리 시작 !!");
			
			// 디비 연결
			connect_cp();
			
			//SQL 처리 루틴 ..
			String sql = "insert into login (username, password)"
					+ "values (?,?)";
			
			try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, ado.getUsername());
			pstmt.setString(2, ado.getPassword());
			
			//sql문 실행 : 테이블에 변화가 있으면, executeUpdate..
			pstmt.executeUpdate();
			
			System.out.println("insertlogin() 처리 완료 !!");
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
				
		
			//디비 연결 종료
			disConnect();
		}
	
	// 입력된 전체 데이터 가져오는 메소드
	public ArrayList<loginDo> getAllAddr() {
		System.out.println("getAllAddr() 처리 시작 !!");
		ArrayList<loginDo> aList = new ArrayList<>();
		
		connect_cp();
		//sql문 처리
		String sql = "select * from login";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				loginDo temp = new loginDo();
				temp.setUsername(rs.getString(1));
				temp.setPassword(rs.getString(2));
			
				aList.add(temp);
			}
			System.out.println("getAllAddr(0 처리 완료 !!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		disConnect();
		return aList;
	
    }
}
