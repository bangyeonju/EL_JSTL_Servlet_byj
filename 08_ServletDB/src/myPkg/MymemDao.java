package myPkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class MymemDao {
	private static MymemDao dao;
	public static MymemDao getInstance() {
		if(dao==null) {
			dao = new MymemDao();
		}
		return dao;
	}
	

	
	private String driver ="oracle.jdbc.driver.OracleDriver";
	private String url ="jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "jspid";
	private String password= "jsppw";
	
	Connection conn= null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	 
	
	
	public MymemDao() {
		
			try {
				Class.forName(driver);
				conn= DriverManager.getConnection(url,user,password);
			} catch (ClassNotFoundException e) {
				System.out.println("driver로딩 실패");
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
	public int insertMymem(MymemBean bean) {
		int cnt = -1;
		String sql = "insert into mymem values(seqmem.nextval,?,?)";
		try {
			System.out.println("1");
			ps= conn.prepareStatement(sql);
			ps.setString(1, bean.getName());
			ps.setString(2, bean.getPassword());
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(ps!=null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return cnt;
	}//insertMymem
	
	
	public ArrayList<MymemBean> getMymemList(){
		ArrayList<MymemBean> list =  new ArrayList<MymemBean>();
		String sql ="select * from mymem order by id";
		try {
			conn.prepareStatement(sql);
			rs= ps.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String password = rs.getString("password");
				MymemBean bean = new MymemBean(id, name, password);
				list.add(bean);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(ps!=null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return list;
		
	}
	
	

}
