package todolist;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import todolist.todoDo;

public class todoDao {
	
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
	public void insertAddr(todoDo ado) {
			System.out.println("insertAddr() 처리 시작 !!");
			
			// 디비 연결
			connect_cp();
			
			//SQL 처리 루틴 ..
			String sql = "insert into todolist (name, passwd, wdate, memo, check_w, share, tdate)"
					+ "values (?,?,?,?,?,?,?)";
			
			try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, ado.getName());
			pstmt.setString(2, ado.getPasswd());
			pstmt.setString(3, ado.getWdate());
			pstmt.setString(4, ado.getMemo());
			pstmt.setString(5, ado.getCheck_w());
			pstmt.setString(6, ado.getShare());
			pstmt.setString(7, ado.getTdate());
			
			//sql문 실행 : 테이블에 변화가 있으면, executeUpdate..
			pstmt.executeUpdate();
			
			System.out.println("insertAddr() 처리 완료 !!");
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
				
		
			//디비 연결 종료
			disConnect();
		}
	
	// 입력된 전체 데이터 가져오는 메소드
	public ArrayList<todoDo> getAllAddr() {
		System.out.println("getAllAddr() 처리 시작 !!");
		ArrayList<todoDo> aList = new ArrayList<>();
		
		connect_cp();
		//sql문 처리
		String sql = "select * from todolist";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				todoDo temp = new todoDo();
				temp.setNum(rs.getInt(1));
				temp.setName(rs.getString(2));
				temp.setPasswd(rs.getString(3));
				temp.setWdate(rs.getString(4));
				temp.setMemo(rs.getString(5));
				temp.setCheck_w(rs.getString(6));
				temp.setShare(rs.getString(7));
				temp.setTdate(rs.getString(8));
				
				
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

	// 전체 데이터에서 하나의 데이터 가져오기 (수정/삭제 이해서)
	public todoDo getOneAddr(int num) {
		System.out.println("getOneAddr() 처리 시작 !! ");
		todoDo ado = new todoDo();
		connect_cp();
		
		//sql 처리
		String sql = "select * from todolist where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ado.setNum(rs.getInt(1));
				ado.setName(rs.getString(2));
				ado.setPasswd(rs.getString(3));
				ado.setWdate(rs.getString(4));
				ado.setMemo(rs.getString(5));
				ado.setCheck_w(rs.getString(6));
				ado.setShare(rs.getString(7));
				ado.setTdate(rs.getString(8));
			}
			System.out.println("getOneAddr() 처리 완료 !! ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disConnect();
		return ado;
	}

	// 선택된 데이터 수정하기
	public void modifyAddr(todoDo ado) {
		System.out.println("modifyAddr() 처리 시작 !!");
		connect_cp();
		
		
		//sql 처리
		String sql ="update todolist set name=?, passwd=?, wdate=?, memo=?, check_w=?, share=?, tdate=? where num=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, ado.getName());
			pstmt.setString(2, ado.getPasswd());
			pstmt.setString(3, ado.getWdate());
			pstmt.setString(4, ado.getMemo());
			pstmt.setString(5, ado.getCheck_w());
			pstmt.setString(6, ado.getShare());
			pstmt.setString(7, ado.getTdate());
			pstmt.setInt(8, ado.getNum());
			
			pstmt.executeUpdate();
			System.out.println("modifyAddr() 처리 완료 !!");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
				
				
		disConnect();
		
	}
	
	// 선택된 데이터 삭제하기
	public void deleteAddr(int num) {
		System.out.println("deleteAddr() 처리 시작 !!");
		connect_cp();
		
		//sql 처리
		String sql = "delete from todolist where num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			System.out.println("deleteAddr() 처리 완료 !!");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disConnect();
		
	}
	
	// 로그인 기능
	public void insertUser(todoDo ado) {
		System.out.println("insertAddr() 처리 시작 !!");
		   connect();

		   String sql = "INSERT INTO login (username, password)" + " VALUES (?, ?)";

		   try {
		      pstmt = conn.prepareStatement(sql);
			  pstmt.setString(1, username);
		      pstmt.setString(2, password);
		      pstmt.executeUpdate();
		   } catch (SQLException e) {
		      e.printStackTrace();
		  	System.out.println("insertAddr() 처리 완료 !!");
		  	
		   }
		      disConnect();
		   }
	
	// 사용자 정보 조희
	public boolean checkUser(String username, String password) {
        connect_cp();

        String sql = "SELECT * FROM login WHERE username=? AND password=?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            // 사용자 정보가 존재하는지 확인
            boolean isValidUser = rs.next();

            disConnect();

            return isValidUser;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

	// 정렬 및 검색 기능
	public ArrayList<todoDo> searchAndSortAddr(String keyword, String sortOption) {
	    System.out.println("searchAndSortAddr() 처리 시작 !!");
	    ArrayList<todoDo> aList = new ArrayList<>();

	    connect_cp();
	    
	    // SQL 쿼리 생성
	    String sql = "SELECT * FROM todolist WHERE name LIKE ? ORDER BY ";
	    if (sortOption != null) {
	    switch (sortOption) {
	        case "name_asc":
	            sql += "name ASC";
	            break;
	        case "name_desc":
	            sql += "name DESC";
	            break;
	        case "date_asc":
	            sql += "wdate ASC";
	            break;
	        case "date_desc":
	            sql += "wdate DESC";
	            break;
	        default:
	            sql += "name ASC"; // 기본적으로 이름 오름차순으로 정렬
	            break;
	    }

	    try {
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, "%" + keyword + "%");
	        rs = pstmt.executeQuery();
	        while (rs.next()) {
	            todoDo temp = new todoDo();
	            temp.setNum(rs.getInt(1));
	            temp.setName(rs.getString(2));
	            temp.setPasswd(rs.getString(3));
	            temp.setWdate(rs.getString(4));
	            temp.setMemo(rs.getString(5));
	            temp.setCheck_w(rs.getString(6));
	            temp.setShare(rs.getString(7));
	            temp.setTdate(rs.getString(8));

	            aList.add(temp);
	        }
	        System.out.println("searchAndSortAddr() 처리 완료 !!");
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    disConnect();
	    return aList;
	}
		return aList;
}

	
	// 완료 기능
	public void setCompleted(int num, boolean completed) {
	    System.out.println("setCompleted() 처리 시작 !!");
	    connect_cp();

	    // SQL 처리
	    String sql = "UPDATE todolist SET check_w=? WHERE num=?";
	    try {
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, completed ? "Y" : "N");
	        pstmt.setInt(2, num);

	        pstmt.executeUpdate();
	        System.out.println("setCompleted() 처리 완료 !!");
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    disConnect();
	}

	}

