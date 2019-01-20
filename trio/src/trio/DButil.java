	package trio;
	
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	
	public class DButil {
		public static Connection getMySQLConnection(){
			Connection conn = null;
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8&serverTimezone=UTC";
				String user = "yejin";
				String password = "0503";
				conn = DriverManager.getConnection(url,user,password);
			}catch (ClassNotFoundException e){ 
				System.out.println("MYSQL 드라이버 없음.<br>");
			}catch (SQLException e){
				System.out.println("not found user");
			}
			return conn;
		}
		public static void close(Connection conn){
			try{if(conn != null){conn.close();}}catch(Exception e){e.printStackTrace();}
		}
		public static void close(Statement stmt){
			try{if(stmt != null){stmt.close();}}catch(Exception e){e.printStackTrace();}
		}
		public static void close(PreparedStatement pstmt){
			try{if(pstmt != null){pstmt.close();}}catch(Exception e){e.printStackTrace();}
		}
		public static void close(ResultSet rs){
			try{if(rs != null){rs.close();}}catch(Exception e){e.printStackTrace();}
		}
		
	}
