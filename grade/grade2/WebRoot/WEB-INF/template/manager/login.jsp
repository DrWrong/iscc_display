<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>成绩管理平台</title>
<link href="style/css/login.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="login">
		<div id="login_header">
			<h1 class="login_logo">
				<a href="./"><img src="style/images/login_logo.gif" /></a>
			</h1>
			<div class="login_headerContent">
				<h2 class="login_title"><img src="style/images/login_title.png" /></h2>
			</div>
		</div>
		<div id="login_content">
			<div class="loginForm">
				<form action="login.html" method="post">
					<p>
						<label>用户名：</label>
						<input type="text" name="username" size="20" class="login_input" />
					</p>
					<p>
						<label>密码：</label>
						<input type="password" name="password" size="20" class="login_input" />
					</p>
					<div class="login_bar">
						<input class="sub" type="submit" value="" />
					</div>
				</form>
			</div>
			<div class="login_banner"><img src="style/images/login_banner.jpg" /></div>
		</div>
		<div id="login_footer">
			Copyright &copy; cc All Rights Reserved.
		</div>
	</div>
</body>
</html>