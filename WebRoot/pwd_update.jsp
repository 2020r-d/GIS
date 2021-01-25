<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 17-5-11
  Time: 下午3:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>修改密码</title>
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
				<!-- 这里的action要改 -->
					<form id="pswupdate" action="PasswordUpdate" method="post"
						onsubmit="return reg(this)">
						
						
						
						<h1>修改密码</h1>
							<!-- 用户名 -->
						<div class="input_outer1">
							<input name="username" class="text1"
								style="color: #FFFFFF !important" type="text" placeholder="用户名">
						</div>
						<!-- 邮箱 -->
						<div class="input_outer1">
							<input name="email" class="text1" onkeyup="emailvalidate()"
								id="email" style="color: #FFFFFF !important" type="text"
								placeholder="邮箱"><span id="Email-attention"></span>
						</div>
						<button id="b01" type="button" style="background: pink;color: #fefefe">发送验证码</button>					
						<!-- 验证码-->
						<div class="input_outer1">
							<input name="ver" class="text1"
								id="verification" style="color: #FFFFFF !important" type="text"
								placeholder="验证码"><span id="Verification-attention"></span>
						</div>
							<!-- 密码 -->
						<div class="input_outer1">
							<input name="password1" class="text1" id="pw1"
								style="color: #FFFFFF !important" type="password"
								placeholder="密码">
						</div>
						<!-- 确认密码 -->
						<div class="input_outer1">
							<input name="password2" class="text1" id="pw2"
								style="color: #FFFFFF !important"
								type="password" placeholder="确认密码"> <span
								id="Password-attention"></span>
							</p>
						</div>
						<span id="Submit-attention"></span>
						<div class="mb2" style= "float:left">
								<input type="submit"  value="修改密码" class="act-but1 submit2" 
								style="color: #FFFFFF" onclick="CheckSubmit();">
						</div>
						<div class="mb2" style = "float:right">
							<input type="reset" value="重置输入" class="act-but1 submit2">
						</div> 
					</form>
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
<script>
	var emailflag = true;
	
	function emailvalidate() {
		var email = document.getElementById("email").value;
		if (/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(email)) {
			document.getElementById("Email-attention").innerHTML = "<font color='green'>correct</font>";
			emailflag = true;
		} else {
			document.getElementById("Email-attention").innerHTML = "<font color='red'>incorrect</font>";
			emailflag = false;
		}
	}

	function CheckSubmit() {
		if (emailflag) {
			document.getElementById("Submit-attention").innerHTML = "<font color='green'>Correct information.</font>";
			document:pswupdate.submit();
		} else {
			document.getElementById("Submit-attention").innerHTML = "<font color='red'>Please check your information.</font>";
		}
	}
</script>

<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>                                                                                                                           

<script>
$(document).ready(function(){
	$("#b01").click(function(){
		var email = $('#email').val();
		var pwd = "pwd";
		$.ajax({
			type : "get",
			url : "/XM14/VerificationServlet",
			datatype : "json",
			data:{
				email:email,
				pwd:pwd
			},
		})
	});
});
</script>
<script>
    var time = 60;
    $("#b01").on('click',function () {
        $(this).attr("disabled",true);
        //alert("234");
            var timer = setInterval(function () {
                if(time == 0){
                    $("#b01").removeAttr("disabled");
                    $("#b01").html("重新发送");
                    clearInterval(timer);
                }else {
                    $("#b01").html(time);
                    time--;
                }
            },1000);
    });
</script>
