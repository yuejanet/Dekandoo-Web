package suibian;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOBase {
   
	protected static final String CLASS_NAME="com.mysql.cj.jdbc.Driver";
	protected static final String URL="jdbc:mysql://localhost/dekandoo?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
	protected static final String USERNAME="root";
	protected static final String PASSWORD="";
	
   	static {
   		try {
   			Class.forName(CLASS_NAME);
   		}catch(ClassNotFoundException ex){
 		   ex.printStackTrace();
 		
 	   }
   		
   	}
   	
   public static Connection getConnection(){
	   //creat a object for conneting  
	   Connection c=null;
	   try{
	     
	      c=DriverManager.getConnection(URL,USERNAME,PASSWORD);
	      return c;
	   }catch(Exception ex){
		   ex.printStackTrace();
		   return c;
	   }
   }
   public static int executeIUD(String sql, Object[] params){
	   int count = 0;
	   Connection c = DAOBase.getConnection();
	   PreparedStatement ps = null;
	   //insert into user('''''', '') value(?,?,?)
	   try {
		ps = c.prepareStatement(sql);
		
		for(int i=0; i<params.length; i++) {
			ps.setObject(i+1, params[i]);
		}
		count=ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return count;
   }
   
   public static void closeConnection(ResultSet rs ,PreparedStatement ps,Connection c){
	   try{
		   if (c!=null){
			   c.close();
		   }
		   if (ps!=null) {
			   ps.close();
		   }
		   if(rs!=null){
			   rs.close();
		   }
	   }catch(Exception ex){
		   ex.printStackTrace();
	   }
   }
}
