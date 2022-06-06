<%--
  Created by IntelliJ IDEA.
  User: xuehuasu
  Date: 6/6/2022
  Time: 上午10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="myDS" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                   url="jdbc:sqlserver://localhost:1433;database=userdb;encrypt=false" user="sa" password="123456"/>

<body>
<h2>Welcome,

    <td><c:out value="${param.username}"/> </td>
</h2>
</body>
</html>
