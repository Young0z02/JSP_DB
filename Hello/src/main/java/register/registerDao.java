package register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class registerDao {

//MySQL 디비 연동 시작 !!
      String id = "root";
      String password = "1111";
      String url ="jdbc:mysql://localhost:3307/jspdb_e?characterEncoding=utf-8";
      
      //디비 연동에 필요한 JDBC 클래스 선언
      Connection conn = null; //java.sql로 import
      PreparedStatement pstmt = null; //java.sql로 import
      ResultSet rs = null; //java.sql로 import
      
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
         
      public void insertRegister(registerDo rdo) {
         System.out.println("insertRegister() 처리 시작!!");
        // connect();
         connect_cp();
         System.out.println(rdo.getName());
         //디비 연동 코드
         //sql문 완성
         String sql = "insert into register values (?,?)";
         try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, rdo.getName());
            pstmt.setString(2, rdo.getEmail());
            //sql 문 실행
            pstmt.executeUpdate();
            
            System.out.println("insertRegister() 처리 완료!! ");
            
         } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
         
         disConnect();
      }
      
      public ArrayList<registerDo> getAllRegister() {
         System.out.println("getAllRegister() 처리 시작!!");
       //  connect();
         connect_cp();
         //디비 처리 코드 !!
         ArrayList<registerDo> aList= new ArrayList<>();
         
         
         String sql = "select * from register";
         
         //sql문 완성!
         try {
            pstmt = conn.prepareStatement(sql);
            //sql문 실행
            rs = pstmt.executeQuery();
            while(rs.next()) {
               registerDo temp = new registerDo();
               temp.setName(rs.getString(1));
               temp.setEmail(rs.getString(2));
               aList.add(temp);
            }
         }
         
         catch (Exception e){
            //TODO Auto-generated catch block
            e.printStackTrace();
         }
         
         
         disConnect();
         return aList;
         
      }
         
}
      