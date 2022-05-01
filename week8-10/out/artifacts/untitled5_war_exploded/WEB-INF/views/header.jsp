<<<<<<< HEAD
<html>
 <head>
   <title>My Online Shop</title>
   
 </head>
 <body style="margin:0px;padding:0px;font-family:helvetica;">
 <table width="100%" cellpadding="0" cellspacing="0">
   <tr>
     <td height="78" style="background-color:#788dad;
                            border-width:2px;
                            border-style:solid;
                            border-color:black;
                            padding:0px;
                            margin:0px;" valign="bottom">
      
     <img src="logo.jpg" align="left">
     </td>
   </tr>
   <tr>
     <td height="15" style="color:white;
                            background-color:#444444;
                            border-width:2px;
                            border-style:solid;
                            border-top-width:0px;
                            border-color:black;" align="center">
     <a style="color:white;" href="home">Home</a>
   - <a style="color:white;" href="login">Login</a>
   - <a style="color:white;" href="productList">Product</a>
   - <a style="color:white;" href="#">FAQ</a>
   - <a style="color:white;" href="#">About</a>
   
   </td>
   </tr>
   <tr height="25"><td align="right"><font size="18" color="blue">
   Welcome,<font size="18" color="red"> Guest</font>
   </font></td> </tr>
  <tr height="20"><td align="right">
   <br> <a href="#">Logout</a>
  <br><a href="#">My Cart</a><br/>
<a href="register.jsp">Register Here</a>
  </td></tr>
 </table>
=======
<!DOCTYPE html>
<%@page import="com.tansongke.model.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//.println(basePath);
%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | E-Shopper</title>
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/prettyPhoto.css" rel="stylesheet">
    <link href="<%=basePath%>css/price-range.css" rel="stylesheet">
    <link href="<%=basePath%>css/animate.css" rel="stylesheet">
	<link href="<%=basePath%>css/main.css" rel="stylesheet">
	<link href="<%=basePath%>css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="<%=basePath%>js/html5shiv.js"></script>
    <script src="<%=basePath%>js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="<%=basePath%>images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=basePath%>images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath%>images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=basePath%>images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath%>images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@ecjtu.com</a></li>
								<li><a href="#"><i class="fa fa-user"></i> Welcome,
								<%if(session.getAttribute("user")!=null){
								User user=(User)session.getAttribute("user");
  									 out.print(user.getUsername());
  									 }else{out.print("Guest");} %>
  									</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-md-4 clearfix">
						<div class="logo pull-left">
							<a href="home"><img src="<%=basePath%>images/home/logo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right clearfix">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									CN
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="">Canada</a></li>
									<li><a href="">UK</a></li>
								</ul>
							</div>
							
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									RMB
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="">Canadian Dollar</a></li>
									<li><a href="">Pound</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-8 clearfix">
						<div class="shop-menu clearfix pull-right">
							<ul class="nav navbar-nav">
								<li><a href="<%=basePath%>accountDetails"><i class="fa fa-user"></i> Account</a></li>
								
								
								<li><a href="<%=basePath%>myCart"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="<%=basePath%>register"><i class="fa fa-crosshairs"></i> Register</a></li>
								<li><a href="<%=basePath%>login"><i class="fa fa-lock"></i> Login</a></li>
								<li><a href="<%=basePath%>logout"><i class="fa fa-unlock"></i> Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="<%=basePath%>home" class="active">Home</a></li>
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="<%=basePath%>shop">Products</a></li>
										<!--<li><a href="product-details.html">Product Details</a></li>  -->
										<li><a href="<%=basePath%>myCart">Cart</a></li> 
										<li><a href="<%=basePath%>order">Order</a></li>
										
										<%-- <li><a href="<%=basePath%>login">Login</a></li>  --%>
                                    </ul>
                                </li> 
								
								<!--<li><a href="404.html">404</a></li>-->
								<li><a href="<%=basePath%>contactUs">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
					<form method="get" action="<%=basePath%>search" target='_blank'  style="width: 426px; ">
							<input type="text" name="txt" placeholder="search"/>
							<select name="search" style="width:65px; ">
   										 <option value="baidu">Baidu</option>
  										  <option value="bing">Bing</option>
  										  <option value="google">Google</option>
 									   </select>&nbsp;<button type="submit"><i class="fa fa-search"></i></button>
							 </form>
								<!--<input type="text" placeholder="Search"/>-->
						
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
>>>>>>> f7edf40d7e3ca4929dd7a23124b075a64559554d
