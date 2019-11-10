<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
		<link rel="stylesheet" href="style/Loginstyle.css" type="text/css">
		<title>用户登录界面</title>
	</head>
	<script src="JavaScript/Login.js"></script>
	<body>
			<div id="img-1">
				<img src="image/Loginimage/img/QQ截图20190507215345.png" onmouseover='src="image/Loginimage/img/QQ截图20190507215420.png"' onmouseout='src="image/Loginimage/img/QQ截图20190507215345.png"' >
			</div>
			<div id="img-3">
				<img src="image/Loginimage/img/timg.jpg" height="500" width="100%">
			</div>
			<div id="word">
				<h2 style="margin-top: 45px;">欢迎登录</h2>
			</div>

			<form name="submitForm" action="${pageContext.request.contextPath}/LoginServlet" method="get">
			<div id="background">
					<table height="250">
						<tr>
							<td><input name="username" id="username" type="text" maxlength="10" placeholder="用户名" style="width: 300px;height: 40px;margin-top: 130px;margin-left: 77px"></td>
						</tr>
						<tr>
							<td><input name="userpassword" id="userpassword" type="password" placeholder="密码"  maxlength="20" style="width: 300px;height: 40px;margin-left: 78px"></td>
						</tr>
					</table>
			</div>
			<div id="img-4">
				<img src="image/Loginimage/img/QQ截图20190508090241.png" width="45" height="44">
			</div>
			<div id="img-5">
				<img src="image/Loginimage/img/QQ截图20190508090257.png" width="45" height="46" >
			</div>
			<div id="register-password">
				<table>
					<tr>
						<td width="120"><a href="">忘记密码</a></td>
					</tr>
				</table>
			</div>
			<a onclick="login()">
			<div id="background-2">
				<p align="center" id="logon" >登录</p>
			</div>
			</a>

			</form>
			<div id="register">
				<table width="200" align="center">
					<tr>
						<td>
							<nobr><a href="register.jsp"><img src="image/Loginimage/img/QQ截图20190508122513.png"><h3 style="color: gray;margin-top: -25px;margin-left: 45px;font-weight: 400;">立即注册</h3></a></nobr>
						</td>
					</tr>
				</table>
			</div>
			<div id="register-Questionnaire">
				<table width="200">
					<tr>
						<td><a href="#" style="color: gray;"><img src="image/Loginimage/img/QQ截图20190508123113.png">关于此模块</a></td>
					</tr>
				</table>
			</div>
			<div id="user-register">
			</div>
			<div id="daohanglan">
				<table width="900" align="center">
					<tr>
						<td><a href="">用户协议</a></td>
						<td><a href="">开放平台</a></td>
						<td><a href="">联系我们</a></td>
						<td><a href="">客服中心</a></td>
						<td><a href="">手机易班</a></td>
						<td><a href="">校园招聘</a></td>
						<td><a href="">社会招聘</a></td>
						<td><a href="">合作伙伴</a></td>
						<td><a href="">函件查询</a></td>
						<td><a href="">证件查询</a></td>
					</tr>
				</table>
			</div>
			<div id="table-userredister">
				<table width="450" height="50" style="color:#DC143C; font-family: '黑体'; font-size: 24px;">
					<tr>
						<td>账户登录</td>
					</tr>
				</table>
			</div>
			<div id="hr"></div>
			<div id="hr-2"></div>
			<div id="page-bottom-word">
				<p align="center">Copyright©2019 1024团队制作</p>
			</div>
	</body>		
</html>
