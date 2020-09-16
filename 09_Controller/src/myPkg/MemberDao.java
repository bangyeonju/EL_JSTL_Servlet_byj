package myPkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDao {
	
	//싱글톤 객체?
	private static MemberDao dao = null;

	public static MemberDao getInstance() { //static쓰는 이유  멤버다오객체를 만들지 않고도 클래스이름으로 호출하기 위해서?
		if(dao==null) {
			dao= new MemberDao();
		} 
		return dao;
		
	}
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs= null;
	private MemberDao() {
		System.out.println("MemberDao");
		Context initContext;
		try {
			initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/OracleDB");
			conn = ds.getConnection();
			
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void insertData(String id,String passwd,String name) {
		String sql = "insert into member values(m_seq.nextval,?,?,?,default)";
		try {
			System.out.println("id"+id);
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, passwd);
			ps.setString(3, name);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ps!=null) {
					ps.close();
				}
			} catch (Exception e) {
			}
		}
		
	}//insertData()
	public ArrayList<MemberBean> getSelectAll(){
		ArrayList<MemberBean> lists = new ArrayList<MemberBean>();
		String sql = "select * from member order by num asc";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				int num = rs.getInt("num");
				String id = rs.getString("id");
				String passwd= rs.getString("passwd");
				String name = rs.getString("name");
				String register = String.valueOf(rs.getString("register"));
				MemberBean mb = new MemberBean(num, id, passwd, name, register);
				lists.add(mb);
				System.out.println("mb.getId()"+mb.getId());
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null) {
					ps.close();
				}
				if(rs !=null) {
					rs.close();
				}
			} catch (Exception e) {
			}
		
	}
		return lists;

	}//getSelectAll()
}
