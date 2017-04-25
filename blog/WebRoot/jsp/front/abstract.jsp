<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="bean.Article" %>
<%@ page import="dao.ArticleDao" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>right</title>
<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet">

</head>
<body>
	<div class="right">
<%
ArticleDao dao = new ArticleDao();
ArrayList<Article> list = new ArrayList<Article>();
dao.show(list);
for(int i=0;i<list.size();i++)
{
%>

		<div class="right_list">
			<div class="right_list_head">
				<img src="${pageContext.request.contextPath}/img/list_front.png">
				<span>[置顶]</span>
				<p><a href="${pageContext.request.contextPath}/jsp/front/details.jsp?id=<%=list.get(i).getId() %>" style="text-decoration: none"><%=list.get(i).getTitle() %></a></p>
			</div>
			<p>&nbsp;&nbsp;<%=list.get(i).getB_intro() %></p>
			<div class="right_list_bottom">
				<ul>
					<li><%=list.get(i).getTime() %></li>
					<li>阅读:20</li>
					<li>评论:96</li>
				</ul>
			</div>
		</div>
<%} %>


	</div>
</body>
</html>