package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ArticleDao;

/**
 * Servlet implementation class DeleteAritleServlet
 */
@WebServlet("/delete.do")
public class DeleteAritleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		ArticleDao ad = new ArticleDao();
		String inf=null;
		
		if(ad.mdelete(id)){
			System.out.println("success");
			inf="删除成功";
			request.getSession().setAttribute("inf",inf);
			request.getRequestDispatcher("/jsp/behind/modifyAritle.jsp").forward(request, response);
		}
		else{
			System.out.println("fail");
			inf="删除失败";
			request.getSession().setAttribute("inf",inf);
			request.getRequestDispatcher("/jsp/behind/modifyAritle.jsp").forward(request, response);
		}
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
