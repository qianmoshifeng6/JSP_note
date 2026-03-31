<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP登录验证</title>
</head>
<body>
    <%
        // 1. 获取用户提交的用户名和密码
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 2. 判断是否有表单提交（username和password不为空）
        if (username != null && password != null) {
            // 3. 进行登录验证
            if ("admin".equals(username) && "123456".equals(password)) {
                // 验证成功：使用<jsp:forward>跳转到欢迎页面
    %>
                <jsp:forward page="welcome.jsp" />
    <%
            } else {
                // 验证失败：设置错误标志，继续显示本页面
                request.setAttribute("error", "用户名或密码错误");
            }
        }
    %>

    <h2>用户登录</h2>
    
    <%-- 显示错误消息 --%>
    <%
        String error = (String) request.getAttribute("error");
        if (error != null) {
    %>
        <p style="color:red;"><%= error %></p>
    <%
        }
    %>

    <form method="post" action="">
        用户名：<input type="text" name="username" value="<%= username != null ? username : "" %>"><br><br>
        密码：<input type="password" name="password"><br><br>
        <input type="submit" value="登录">
    </form>
</body>
</html>