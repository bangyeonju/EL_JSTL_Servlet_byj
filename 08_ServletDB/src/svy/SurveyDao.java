package svy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SurveyDao {
//	String driver = "oracle.jdbc.driver.OracleDriver";
//	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
//	String user = "jspid";
//	String password = "jsppw";
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	private String driver;
	private String url;
	private String user;
	private String password;
	
	
	public SurveyDao(String driver, String url, String user, String password) throws SQLException {
		super();
		this.driver = driver;
		this.url = url;
		this.user = user;
		this.password = password;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
/*
	public SurveyDao() throws SQLException {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
*/
	public void insertSurvey(SurveyBean sb) {
		String sql = "insert into survey(no,name,company,email,satisfaction,part,howto,agree) values(seqmy.nextval,?,?,?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, sb.getName());
			ps.setString(2, sb.getCompany());
			ps.setString(3, sb.getEmail());
			ps.setString(4, sb.getSatisfaction());
			ps.setString(5, sb.getPart());
			ps.setString(6, sb.getHowto());
			ps.setInt(7, sb.getAgree());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e) {
			}

		}
	}

	public ArrayList<SurveyBean> getselectAll(){ 
		String sql ="select * from survey order by no";
		ArrayList<SurveyBean> lists = new ArrayList<SurveyBean>();
	try { 
		ps = conn.prepareStatement(sql); 
		rs=ps.executeQuery();
		while(rs.next()) {
			SurveyBean sb = new SurveyBean();
			sb.setNo(rs.getInt("no"));
			sb.setName(rs.getString("name"));
			sb.setCompany(rs.getString("company")); 
			sb.setEmail(rs.getString("email"));
			sb.setSatisfaction(rs.getString("satisfaction"));
			sb.setPart(rs.getString("part"));
			sb.setHowto(rs.getString("howto"));
			sb.setAgree(rs.getInt("agree"));
			lists.add(sb);
	  
	  }
	  
	  }catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
				if(rs != null) {
					rs.close();
				}
			} catch (Exception e) {
			}

		}
	return lists;
	}
	public void deleteSurvey(String no) {
		String sql= "delete from survey where no=?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, no);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e) {
			}

		}
		
		
	}
	public SurveyBean getOneSelect(int no) {
		String sql = "select * from survey where no=?";
		SurveyBean sb = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, no);
			rs = ps.executeQuery();
			if(rs.next()) {
				sb = new SurveyBean();
				sb.setNo(rs.getInt("no"));
				sb.setName(rs.getString("name"));
				sb.setCompany(rs.getString("company"));
				sb.setEmail(rs.getString("email"));
				sb.setSatisfaction(rs.getString("satisfaction"));
				sb.setPart(rs.getString("part"));
				sb.setHowto(rs.getString("howto"));
				sb.setAgree(rs.getInt("agree"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
				if(rs != null) {
					rs.close();
				}
			} catch (Exception e) {
			}

		}
		return sb;
		
	}
	public SurveyBean updateSurvey(SurveyBean sb) {
		String sql = "update survey set name=?,company=?, email=?, satisfaction=?,part=?,howto=?,agree=? where no =?";
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, sb.getName());
			ps.setString(2, sb.getCompany());
			ps.setString(3, sb.getEmail());
			ps.setString(4,sb.getSatisfaction());
			ps.setString(5, sb.getPart());
			ps.setString(6,sb.getHowto());
			ps.setInt(7, sb.getAgree());
			ps.setInt(8, sb.getNo());
			ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (Exception e) {
			}

		}
		return sb;
		
	}
	 
}
