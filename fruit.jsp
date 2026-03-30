<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>JSTL c:forEach 水果列表示例</title>
</head>
<body>
    <% 
        String[] fruits = {"苹果", "香蕉", "橘子"}; 
        request.setAttribute("fruitArray", fruits); // 将数组存入request作用域 
    %>

    <h2>水果列表（无序列表形式）</h2>
    <ul>
        <c:forEach items="${fruitArray}" var="fruit">
            <li>${fruit}</li>
        </c:forEach>
    </ul>
</body>
</html>