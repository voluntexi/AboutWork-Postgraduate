<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
		<link rel="stylesheet" href="style/registerstyle.css" type="text/css">
		<title>用户注册界面</title>
	</head>
	<script rel="script" src="JavaScript/Register.js"></script>
	<body>
		<div id="bacground"></div>
		<div id="img-1">
			<img src="image/indeximage/img/QQ截图20190507215345.png" onmouseover='src="image/indeximage/img/QQ截图20190507215420.png"' onmouseout='src="image/indeximage/img/QQ截图20190507215345.png"'>
		</div>
		<p id="word-1">账号登录</p>
		<div id="hr"></div>
		<p id="word-2">已有账号？</p>
		<p id="word-3"><a href="index.jsp"><font color="#DC143C">请登录></font></a></p>
		<form name="RegisterForm" action="${pageContext.request.contextPath}/RegisterServlet" method="get">
			<table id="register-username">
				<tr>
					<td><input name="username" type="text" placeholder="输入新账户号/用户名" style="width: 300px; height: 40px;"></td>
				</tr>
			</table>
			<table style="width:70px;height: 40px;" id="word-username">
				<tr>
					<td><p align="center">用户名：</p></td>
				</tr>
			</table>
			<table id="register-password">
				<tr>
					<td><input name="userpassword" type="password" placeholder="6-12位数字、字母或符号组成" value="" style="width: 300px; height:40px;"></td>
				</tr>
			</table>
			<table id="word-password" style="width: 120px;height: 40px;">
				<tr>
					<td><p align="center">请输入新密码：</p></td>
				</tr>
			</table>
			<table id="register-password-check">
				<tr>
					<td><input name="confirmuserpassword" type="password" placeholder="6-12位数字、字母或符号组成" value="" style="width: 300px; height: 40px;"></td>
				</tr>
			</table>
			<table id="word-password-check" style="width: 100px;height: 40px;">
				<tr>
					<td><p align="center">确认密码：</p></td>
				</tr>
			</table>
			<table width="305px" style="height: 43px"  id="colleage">
				<tr>
					<td>
							<select name="select" style="width: 305px;height: 43px">
								<option value="四川大学" selected="selected">四川大学</option>
								<option value="西南交通大学">西南交通大学</option>
								<option value="电子科技大学">电子科技大学</option>
								<option value="西南财经大学">西南财经大学</option>
								<option value="西南民族大学">西南民族大学</option>
								<option value="中国民用航空飞行学院">中国民用航空飞行学院</option>
								<option value="西南石油大学">西南石油大学</option>
								<option value="成都理工大学">成都理工大学</option>
								<option value="西南科技大学">西南科技大学</option>
								<option value="成都信息工程学院">成都信息工程学院</option>
								<option value="西华大学">西华大学</option>
								<option value="四川农业大学">四川农业大学</option>
								<option value="西南医科大学">西南医科大学</option>
								<option value="成都中医药大学">成都中医药大学</option>
								<option value="四川师范大学">四川师范大学</option>
								<option value="西华师范大学">西华师范大学</option>
								<option value="四川轻化工学院">四川轻化工学院</option>
								<option value="西昌学院">西昌学院</option>
								<option value="川北医学院">川北医学院</option>
								<option value="四川文理学院">四川文理学院</option>
								<option value="四川音乐学院">四川音乐学院</option>
								<option value="成都医学院">成都医学院</option>
								<option value="成都大学">成都大学</option>
							</select>
					</td>
				</tr>
			</table>
			<table width="305px" style="height: 43px" id="colleage-occupation">
				<tr>
					<td>
						<form action="index.html" method="post">
							<select name="select" style="width: 305px;height:43px">
								<option value="材料科学与工程" selected="selected">计算机与软件工程</option>
							</select>
						</form>
					</td>
				</tr>
			</table>
			<table id="word-colleage" width="200px">
				<tr>
					<td><p align="center">您所在的大学：</p></td>
				</tr>
			</table>
			<table id="word-colleage-occupation" width="150px">
				<tr>
					<td><p align="center">您的专业：</p></td>
				</tr>
			</table>

			<a onclick="check()" style="cursor: pointer">
				<div id="word-reigister">
					<p  style="cursor: pointer" align="center" id="register">我要注册</p>
				</div>
			</a>

		</form>


		<div id="hr-2">
			<hr>
		</div>
		<div id="daohanglan">
			<table width="1100px" style="font-family: '黑体' 'bodoni mt';font-size: 15px; text-align: center;">
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
					<td><a href="">证书查询</a></td>
				</tr>
			</table>
	</body>
</html>
