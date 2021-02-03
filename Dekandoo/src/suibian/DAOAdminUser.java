package suibian;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAOAdminUser {
	public static int insert(BeanUser u) {
		String sql="insert into user values(?,?,?,?,?,?,?)";
		//DATE_FORMAT(?,%d-%m-%Y %H:%i:%S)
		
		Object[] params= {u.getId(),
		u.getUser_name(),
		u.getPwd(),
		u.getEmail(),
		u.getLastLoginTime(),
		u.getRole(),
		u.getNationality(),
		
		};
		 return DAOBase.executeIUD(sql, params);

	}
	public static int SeletByName(String name, String pwd) {
		int count = 0;
		
		Connection conn = DAOBase.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql= "select * from user where user_name=? and pwd=?";
			
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
	/*search a user by his username and userpwd
	 * return a user 
	 * */
	public static BeanUser SeletAllInfos(String name, String pwd) {
		BeanUser admin =null;
		
		Connection conn = DAOBase.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String sql="select *from user where user_name=? and pwd=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, pwd);
			
			rs=ps.executeQuery();
		//DATE_FORMAT(?,%d-%m-%Y %H:%i:%S)
			while(rs.next()) {
				admin = new BeanUser(
					rs.getInt("id"),
					rs.getString("user_name"),
					rs.getString("pwd"),
					rs.getString("email"),
					rs.getString("lastLoginTime"),
					rs.getString("nationality"),
					rs.getString("role"));
			}
		
		 }catch (Exception e) {
				e.printStackTrace();
			}finally {
				DAOBase.closeConnection(rs, ps, conn);
			}
		 return admin;
		
		
	}


}
