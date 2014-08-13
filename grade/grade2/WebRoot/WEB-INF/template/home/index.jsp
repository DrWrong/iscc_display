<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link rel="shortcut icon" href="favicon.png" type="image/png" />
<title>ISCC2014</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" media="screen"
	href="stylesheets/screen.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="stylesheets/rpm.css" />
<script type="text/javascript" src="js/DOMhelp.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/hover.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<style type="text/css">
	.side{
		margin:0px 20px;
	}
</style>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#reset').click(function() {
					$('#flag').val('');
					$('#host').val('');
				});
				getGrade();
				//setInterval("getGrade()", 10000);
				$("#gg").mouseover(
					function(){$("#sidebar-content").load("rank.html");}
				);
				$("#cj").mouseover(function(){$("#sidebar-content").load("rank.html");});
			});
	function getGrade() {
		$("#grades").load("notice.html");
		$("#sidebar-content").load("rank.html",g2());
	}
	function g2(){
		$("#grades").animate({scrollTop:$("#grades").height()+$("#grades").outerHeight()},400);
	}
</script>

</head>

<body>

	<div id="wrap" class="container">
		<div id="header" class="column span-24 last">
			<h1 class="column span-8 last">ISCC2014</h1>
			<div id="nav" class="column span-16 last">
				<ul>
					<li class="active"><a title="login" href="#"></a></li>
					<%if(session.getAttribute("team")!=null){ %>
					<li style="color:white"><%=session.getAttribute("team") %>:${sign }</li>
					<%}else{ %>
					<li><a title="login" href="ulogin.html" >登陆</a></li>
					<%} %>
				</ul>
			</div>
			<div id="mast" class="column span-24 last">
				<img alt="rpm guys" src="images/logo.png" />
			</div>
			<div id="subheader" class="column span-24 last">
				<h2>渗透比赛</h2>
			</div>
		</div>
		<div id="content" class="column span-16 colborder last">
			<div id="history">
				<img src="images/pic5.jpg" />
				<!-- <span style="position:relative;top:-26px;">公告</span> -->
				<ul id="grades" style="margin-left:5px;overflow:auto;height:260px;">
				
				</ul>
			</div>
			<%
			if(session.getAttribute("team")!=null){
			 %>
			<div id="chat">
			
			<form action="putflag.html" method="post">
				flag:<input type="text" id="flag"  name="flag"/><br /> 
				<input type="submit" id="submit" class="button"	name="submit" value="提交" /> 
				<input type="reset" id="reset"	class="button" name="reset" value="重置" />
			</form>
			</div>
			<%} %>
		</div>
		<div id="sidebar" class="column span-7 last">
			<div class="tm11">
            	         <img  src="images/pic5.jpg" />
                         <span id="cj" class="tm22">成绩排行</span>
                 </div>
                 
                 <div class="tm11">
            	         <img  src="images/pic5.jpg" />
                         
                 </div>
            <div id="tool"></div>
            <div id="sidebar-content">
            
            </div>
		</div>
	</div>
	<div id="footer">
		<p>Copyright &copy; ISCC.</p>
	</div>
</body>
</html>