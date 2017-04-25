package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import bean.Admin;

public class AdminDao {
	
	private static Connection conn;
	private static PreparedStatement pstmt;
	public AdminDao() {
		conn = new util.DbHelp().getCon();
	}
	//insert
	public  boolean insert(Admin admin) {
		int i = 0;
		String sql = "insert into admin (id,name,password) values(?,?,?)";
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setInt(1,admin.getId());
	        pstmt.setString(2,admin.getName());
	        pstmt.setString(3,admin.getPassword());
	        i = pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    if(i!=0)
	    	return true;
	    else {
			return false;
		}
	}
	
	public boolean valiadmin(Admin admin) {
		try {
			pstmt = conn.prepareStatement("select * from admin where name=? and password =?");
			pstmt.setString(1, admin.getName());
			pstmt.setString(2, admin.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				return true;
			else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
	
//	//updata
//	public  boolean mupdate(New doc) {
//	    int i = 0;
//	    String sql = "update db_new set mtitle='" + doc.getMtitle() + "',mtext='" + doc.getMtext() + "',mtime='" + doc.getMtime() + "' where mid='" + doc.getMid() + "'";
//	    try {
//	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
//	        i = pstmt.executeUpdate();
//	        pstmt.close();
//	        conn.close();
//	    } catch (SQLException e) {
//	        e.printStackTrace();
//	    }
//	    if(i!=0)
//	    	return true;
//	    else {
//			return false;
//		}
//	}
//	
//	//find
//	public boolean mselect(String id,New doc) {
//		int i=0;
//		try {
//			pstmt = conn.prepareStatement("select * from db_new where mid=?");
//			pstmt.setString(1,id);
//			ResultSet rs = pstmt.executeQuery();
//			if (rs.next())
//			{
//				doc.setMid(rs.getInt("mid"));
//			    doc.setMtitle(rs.getString("mtitle"));
//			    doc.setMtext(rs.getString("mtext"));
//			    doc.setMtime(rs.getString("mtime"));
//			    i++;
//			}
//			
//			
//		} catch (SQLException e) {
//
//			e.printStackTrace();
//		}
//		if (i!=0) {
//			return true;
//		}
//		else
//		{
//			return false;
//		}
//	}
//	//show
//	public boolean show(ArrayList<New> list)  {
//		try {
//			pstmt = conn.prepareStatement("select * from db_new");
//			ResultSet rs=pstmt.executeQuery();
//			while(rs.next())
//			{
//				New new1 =  new New();
//				new1.setMid(rs.getInt("mid"));
//				new1.setMtitle(rs.getString("mtitle"));
//				new1.setMtext(rs.getString("mtext"));
//				new1.setMtime(rs.getString("mtime"));
//				list.add(new1);
//			}
//		}
//		 catch (SQLException e) {
//	
//			e.printStackTrace();
//		}
//		
//		if(list.size()!=0)
//		{
//			return true;
//		}
//		else {
//			return false;
//		}
//		
//	}
	//delete
//	public  boolean mdelete(String id) {
//	    int i = 0;
//	    String sql = "delete from db_new where mid='" + id + "'";
//	    PreparedStatement pstmt;
//	    try {
//	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
//	        i = pstmt.executeUpdate();
//	        pstmt.close();
//	        conn.close();
//	    } catch (SQLException e) {
//	        e.printStackTrace();
//	    }
//	    if(i!=0)
//	    	return true;
//	    else {
//			return false;
//		}
//	}
//
//}
