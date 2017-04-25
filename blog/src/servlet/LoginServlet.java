package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Admin;
import dao.AdminDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username;
		String password;
		username=request.getParameter("username");
		password=request.getParameter("password");
		System.out.println(username+"  "+password);
		AdminDao ad = new AdminDao();
		Admin admin = new Admin();
		admin.setName(username);
		admin.setPassword(password);
		String message="请输入正确的用户名密码";
		request.getSession().setAttribute("message",message);
		
		if(ad.valiadmin(admin)){
			System.out.println("hello");
			request.getRequestDispatcher("/jsp/behind/modifyAritle.jsp").forward(request, response);
		}
		else{
			request.getRequestDispatcher("/jsp/front/login.jsp").forward(request, response);
		}
		
		
	}

}
