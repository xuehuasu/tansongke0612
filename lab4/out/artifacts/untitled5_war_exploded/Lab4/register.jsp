<%--
  Created by IntelliJ IDEA.
  User: xuehuasu
  Date: 6/6/2022
  Time: 上午9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<form action="register.jsp">
    Username <input type="text" name="username"><br/>
    Password <input type="password" name="password"><br/>
    Email <input type="text" name="email"><br/>
    Gender <input type="radio" name="gender" value="male">Male<input type="radio" name="female">female<br/>
    Date of Birth <input type="text" name="birthdate"><br/>
    <input type="submit" value="Register">
</form>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="myDS" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
   url="jdbc:sqlserver://localhost:1433;database=userdb;encrypt=false" user="sa" password="123456"/>

<c:if test="${!empty param.username}">
    <sql:update var="newUser" dataSource="${myDS}">
        insert into usertable values(?,?,?,?,?);
        <sql:param value="${param.username}"/>
        <sql:param value="${param.password}"/>
        <sql:param value="${param.email}"/>
        <sql:param value="${param.gender}"/>
        <sql:param value="${param.birthdate}"/>
    </sql:update>
</c:if>

<sql:query var="selectUsers" dataSource="${myDS}">
    select * from usertable
</sql:query>

<table>
    <tr>

    </tr>
    <c:forEach var="row" items="${selectUsers.rows}">
        <tr>
            <td><c:out value="${row.id}"/> </td>
            <td><c:out value="${row.username}"/> </td>
            <td><c:out value="${row.password}"/> </td>
            <td><c:out value="${row.email}"/> </td>
            <td><c:out value="${row.gender}"/> </td>
            <td><c:out value="${row.birthdate}"/> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
