package suibian;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import suibian.BeanNormalUser;
public class DAONormalUser {
	public static int insert(BeanNormalUser u) {
		String sql="insert into normaluser values(?,?,?,?,?,?,?,?)";
		//DATE_FORMAT(?,%d-%m-%Y %H:%i:%S)
		
		Object[] params= {u.getUSER_ID(),
		u.getUSER_NAME(),
		u.getUSER_PWD(),
		u.getUSER_SEX(),
		u.getREGISTER_TIME(),
		u.getEMAIL(),
		u.getNATIONALITY(),
		u.getIDENTIFY()
		};
		 return DAOBase.executeIUD(sql, params);
		
	}
	
	//pagination 
	public static int[] totalPage(int count){
		//"0" is number of items, "1" is current page
		int arr[]= {0, 1};
		
		Connection conn = DAOBase.getConnection();
		PreparedStatement ps = null; 
		ResultSet rs = null;
		
		
		try {
			String sql = "select count(*) from normaluser";
			ps = conn.prepareStatement(sql);
			rs= ps.executeQuery();
			
			while(rs.next()) {
				arr[0]=rs.getInt(1);//arr[0]=rs.getInt(1);arr[0]=Integer.parseInt(rs.getString(1));
				if(arr[0]%count==0) {
					arr[1] = arr[0]/count;
				}else {
					arr[1] = arr[0]/count+1;
				}
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DAOBase.closeConnection(rs, ps, conn);
		}
		return arr;
	}
	
	
	public static ArrayList<BeanNormalUser> selectAll( int cpage, int count, String keyword){
		ArrayList<BeanNormalUser> list = new ArrayList<BeanNormalUser>();
		ResultSet rs = null;
		Connection conn = DAOBase.getConnection();
		
		PreparedStatement ps = null; 
		
		
		try {
			String sql = "";
			if(keyword!=null) {
				sql = "select * from normaluser where USER_NAME like ? order by USER_ID desc limit ?,?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%"+keyword+"%");
				ps.setInt(2, (cpage-1)*count);
				ps.setInt(3, count);
			}else {
				 sql = "select * from normaluser order by USER_ID desc limit ?,?";
					ps = conn.prepareStatement(sql);
				
					ps.setInt(1, (cpage-1)*count);
					ps.setInt(2, count);
			}
			
			
			
			rs= ps.executeQuery();
			
			while(rs.next()) {
				BeanNormalUser u = new BeanNormalUser(
						rs.getInt("USER_ID"),
						rs.getString("USER_NAME"),
						rs.getString("USER_PWD"),
						rs.getString("USER_SEX"),
						rs.getString("REGISTER_TIME"),
						rs.getString("EMAIL"),
						rs.getString("NATIONALITY"),
						rs.getString("IDENTIFY")
						);
				list.add(u);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DAOBase.closeConnection(rs, ps, conn);
		}
		return list;
	}
	
	
	public static int SeletByName(String name, String pwd) {
		int count = 0;
		
		Connection conn = DAOBase.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql= "select count(*) from normaluser where USER_NAME=? and USER_PWD=?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pwd);
			rs=ps.executeQuery();
			
			while (rs.next()){
				count=rs.getInt(1);
			}
		}catch (Exception e) {
				e.printStackTrace();
			}finally {
				DAOBase.closeConnection(rs, ps, conn);
			}
			return count;	
	}
	
	
	public static int CheckByName(String name) {
		int have = 0;
		
		Connection conn = DAOBase.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql= "select * from normaluser where USER_NAME=? ";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			rs=ps.executeQuery();
			
			while (rs.next()){
				have=rs.getInt(1);
			}
		}catch (Exception e) {
				e.printStackTrace();
			}finally {
				DAOBase.closeConnection(rs, ps, conn);
			}
			return have;	
	}
	
	
	/*search a user by his username and userpwd
	 * return a user 
	 * */
	public static BeanNormalUser SeletAllInfos(String name, String pwd) {
		BeanNormalUser user =null;
		
		Connection conn = DAOBase.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql="select *from normaluser where USER_NAME=? and USER_PWD=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pwd);
			
			rs=ps.executeQuery();
		//DATE_FORMAT(?,%d-%m-%Y %H:%i:%S)
			while(rs.next()) {
				user = new BeanNormalUser(
					rs.getInt("USER_ID"),
					rs.getString("USER_NAME"),
					rs.getString("USER_PWD"),
					rs.getString("USER_SEX"),
					rs.getString("REGISTER_TIME"),
					rs.getString("EMAIL"),
					rs.getString("NATIONALITY"),
					rs.getString("IDENTIFY"));
			}
		
		 }catch (Exception e) {
				e.printStackTrace();
			}finally {
				DAOBase.closeConnection(rs, ps, conn);
			}
		 return user;
		
		
	}


}
