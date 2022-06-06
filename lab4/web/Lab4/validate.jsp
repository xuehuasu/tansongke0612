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
<body>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="myDS" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                   url="jdbc:sqlserver://localhost:1433;database=userdb;encrypt=false" user="sa" password="123456"/>


<sql:query var="selectUsers" dataSource="${myDS}">
    select * from usertable where username='${param.username}' and password='${param.password}'
</sql:query>

<c:if test="${!empty param.username}">
    <c:choose>
        <c:when test="${!empty selectUsers.rows}">
            <jsp:forward page="welcome.jsp"></jsp:forward>
        </c:when>
        <c:otherwise>
            username or password error!!!
            <jsp:include page="login.jsp" flush="false"/>
        </c:otherwise>
    </c:choose>
</c:if>

</body>
</html>
