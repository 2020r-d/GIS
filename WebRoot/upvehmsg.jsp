<%@ page import="com.model.User"%><%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 17-5-11
  Time: 下午4:23
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>login</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<!--[if IE]>
	<script src="js/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header">
				<canvas id="demo-canvas"></canvas>
				<div class="logo_box">
					<%
    					/*获取提示信息*/
    					String info = (String) request.getAttribute("info");
    					String flag = (String) request.getAttribute("flag");
    					
    					if (info != null) {
    				%>
							<h3><%=info%></h3>
					<%
						}
    					/*获取用户的登录信息*/
    					User user = (User) session.getAttribute("user");
    					if (flag!=null && flag.equals("1")){
					%>
								<div class="mb2">
									<h3><%=user.getUsername()%>分配车辆成功！</h3>
									<a href="front.jsp" class="act-but submit" style="color: #FFFFFF" id="jump">返回主界面</a>
								</div>
					<%
						//session.invalidate();
    					}
    					else {
    						out.println("<div class='mb2'>");
    						out.println("<h3>对不起车辆没有分配成功！</h3>");
        					out.println("<a href='allocation_driver.jsp' class='act-but submit' style='color: #FFFFFF'>重新分配车辆</a>");
        					out.println("<a href='front.jsp'  class='act-but submit' style='color: #FFFFFF'>放弃分配车辆</a>");
        					out.println("</div>");
						}
						
					%>
				</div>
			</div>
		</div>
	</div>
	<!-- /container -->
	<script src="js/TweenLite.min.js"></script>
	<script src="js/EasePack.min.js"></script>
	<script src="js/rAF.js"></script>
	<script src="js/demo-1.js"></script>
</body>
</html>