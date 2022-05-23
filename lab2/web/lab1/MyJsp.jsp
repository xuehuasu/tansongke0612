<%--
  Created by IntelliJ IDEA.
  User: xuehuasu
  Date: 16/5/2022
  Time: 上午11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<form method="post" action="<%=request.getContextPath()%>/parameters" >
    i am MyJsp.jsp<br>
    name
    <input type="text" name="cname" >
    <br>
    class
    <input type="text" name="clas">
    <br>
    ID
    <input type="text" name="cid">
    <br>

    <button type="submit" name="button"  value="Send data to server">Send data to server</button>
</form>

<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
