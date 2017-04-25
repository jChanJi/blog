package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Article;

public class ArticleDao {
	
	private static Connection conn;
	private static PreparedStatement pstmt;
	public ArticleDao() {
		conn = new util.DbHelp().getCon();
	}
	//insert
	public  boolean ainsert(Article article) {
		int i = 0;
		String sql = "insert into article (title,b_intro,content,time) values(?,?,?,?)";
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
	        pstmt.setString(1,article.getTitle());
	        pstmt.setString(2,article.getB_intro());
	        pstmt.setString(3,article.getContent());
	        pstmt.setString(4,article.getTime());
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
	
	//updata
	public  boolean aupdate( Article article) {
	    int i = 0;
	    String sql = "update article set title='" + article.getTitle() + "',b_intro='" + article.getB_intro() + "',content='" + article.getContent() + "',time='" + article.getTime() + "' where id='" + article.getId() + "'";
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
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
	
	//find
	public boolean aselect(String id,Article article) {
		int i=0;
		try {
			pstmt = conn.prepareStatement("select * from article where id=?");
			pstmt.setString(1,id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				article.setId(rs.getInt("id"));
				article.setTitle(rs.getString("title"));
				article.setB_intro(rs.getString("b_intro"));
				article.setContent(rs.getString("content"));
				article.setTime(rs.getString("time"));
			    i++;
			}
			
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		if (i!=0) {
			return true;
		}
		else
		{
			return false;
		}
	}
	//show
	public boolean show(ArrayList<Article> list)  {
		try {
			pstmt = conn.prepareStatement("select * from article");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				Article article =  new Article();
				article.setId(rs.getInt("id"));
				article.setTitle(rs.getString("title"));
				article.setB_intro(rs.getString("b_intro"));
				article.setContent(rs.getString("content"));
				article.setTime(rs.getString("time"));
				list.add(article);
			}
		}
		 catch (SQLException e) {
	
			e.printStackTrace();
		}
		
		if(list.size()!=0)
		{
			return true;
		}
		else {
			return false;
		}
		
	}
	//delete
	public  boolean mdelete(String id) {
	    int i = 0;
	    String sql = "delete from article where id='" + id + "'";
	    PreparedStatement pstmt;
	    try {
	        pstmt = (PreparedStatement) conn.prepareStatement(sql);
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

}
