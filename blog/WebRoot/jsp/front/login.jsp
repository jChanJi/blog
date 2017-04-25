<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
</head>
<body>
<div class="register">
 <form action="<%=request.getContextPath() %>/login.do" method="POST">
    <div class="register_content">
    <div class="register_inf">
        <ul>
            <li><p>用户名：</p><input type="text" name="username"></li>
            <li><p>密码：</p><input type="password" name="password"></li>
        </ul>
        <p style="color:red">${message}</p>
    </div>
        <div class="register_submit">
           <button type="submit">提交</button>
            <button>取消</button>
        </div>
    </div>
</form>
</div>

<div class="bottom" style="border: none">
    <p>金陵科技学院</p>
    <p>软件工程（嵌入式培养）（1）班</p>
    <p>作者：吉春</p>
</div>
</body>
</html>