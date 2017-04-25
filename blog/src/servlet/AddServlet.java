package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;

import bean.Article;
import dao.ArticleDao;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/add.do")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String b_intro = request.getParameter("b_intro");
		String content = request.getParameter("test-editormd");
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date d= new Date();
		String data=simpleDateFormat.format(d);
		
		Article aritle = new Article();
		aritle.setTitle(title);
		aritle.setB_intro(b_intro);
		aritle.setContent(content);
		aritle.setTime(data);
		
		ArticleDao ad = new ArticleDao();
		
		if(ad.ainsert(aritle)){
			request.setAttribute("add", "添加成功");
			request.getRequestDispatcher("/jsp/behind/modifyAritle.jsp").forward(request,response);
		}
		else{
			request.setAttribute("add", "添加失败");
			request.getRequestDispatcher("/jsp/behind/modifyAritle.jsp").forward(request,response);
		}
	
	}

}
