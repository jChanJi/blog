<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ page import="bean.Article"%>
<%@ page import="dao.ArticleDao"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/css/main.css"
	rel="stylesheet">
</head>
<body style="background: #DDDDDD">
	<div class="modify_head">
		<h2>文章修改界面 <a  style="font-size: 10pt;text-decoration: none;float:right" href="${pageContext.request.contextPath}/jsp/front/main.jsp">返回主界面</a></h2>
	</div>
	<div class="modify_content">
	<div style="width: 100%;height: auto;padding: 1px;text-align: center;color:red">${add}</div>

		<table>
			<tbody>

				<tr>
					<th>标题</th>
					<th>时间</th>
					<th>操作</th>
				</tr>
				<%
					ArticleDao dao = new ArticleDao();
					ArrayList<Article> list = new ArrayList<Article>();
					dao.show(list);
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td><%=list.get(i).getTitle()%></td>
					<td><%=list.get(i).getTime()%></td>
					<td>
						<form action="<%=request.getContextPath()%>/delete.do?id=<%=list.get(i).getId()%>" method="post">
							<input type="submit" value="删除">
						</form>
					</td>
				</tr>
				<%
					}
				%>
				<tr style="height: 100px">
					<td style="color:red"></td>
					<form action="<%=request.getContextPath() %>/jsp/behind/add.jsp">
					<td><button class="increase" type="submit">增加</button></td>
					</form>
					<td></td>
				</tr>

			</tbody>
		</table>
	</div>
</body>
</html>