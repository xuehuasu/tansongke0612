<<<<<<< HEAD
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 4/5/2021
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="header.jsp"%>
<h1> Login</h1>
<%
    if(!(request.getAttribute("message")==null)){

        //error
        out.println(request.getAttribute("message"));
    }
%>
<form method="post" action="login">
    Username : <input type="text" name="username"><br/>
    Password : <input type="password" name="password"><br/>
    <input type="submit" value="Submit"/>
</form>
<%@include file="footer.jsp"%>
=======
<%@ page import="jakarta.servlet.http.Cookie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
					<h2>Login to your account</h2>	<%
    if(!(request.getAttribute("message")==null)){
    out.println("<h2>"+request.getAttribute("message")+"</h2>");
}%>
<%
    Cookie[] cookies=request.getCookies();
    String username="";
    String password="";
    String rememberMe="";
    if (cookies!=null){
        for (Cookie cookie:cookies){
            if (cookie.getName().equals("cUsername")){
                username=cookie.getValue();
            }
            if (cookie.getName().equals("cPassword")){
                password=cookie.getValue();
            }
            if (cookie.getName().equals("cRememberMe")){
                rememberMe=cookie.getValue();
            }
        }
    }
    //update 5 user basepath
%>

<form method="post" action="<%=request.getContextPath()+"/login"%>">
    <input type="text" name="username" placeholder="Username" value="<%=username%>"><br>
   <input type="password" name="password" placeholder="password" value="<%=password%>">
    <br/>
    <span>
		<input type="checkbox" class="checkbox" name="remember" value="1" <%="1".equals(rememberMe)? "checked":""%>/> Keep me signed in
   </span>
    <button type="submit" class="btn btn-default">Login</button>
</form>	
					</div><!--/login form-->
				</div>
				
				
			</div>
		</div>
	</section><!--/form-->
<%@include file="footer.jsp"%>
>>>>>>> f7edf40d7e3ca4929dd7a23124b075a64559554d
