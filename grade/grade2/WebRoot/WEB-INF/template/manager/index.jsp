<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>成绩管理web管理</title>

<link href="style/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="style/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="style/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>
<style type="text/css" title="currentStyle">
			@import "css/demo_page.css";
			@import "css/demo_table.css";
</style>
<!--[if IE]>
<link href="style/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->

<!--[if lte IE 9]>
<script src="js/speedup.js" type="text/javascript"></script>
<![endif]-->

<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="js/jquery.cookie.js" type="text/javascript"></script>
<script src="js/jquery.validate.min.js" type="text/javascript"></script>
<script src="js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="xheditor/xheditor-1.2.1.min.js" type="text/javascript"></script>
<script src="xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="uploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>
<script src="js/jquery.dataTables.min.js" type="text/javascript"></script>

<script src="js/dwz.min.js" type="text/javascript"></script>
<script src="js/dwz.radio.js" type="text/javascript"></script>
<script src="js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
$(function(){
	DWZ.init("init.frag.xml", {
		loginUrl:"login_dialog.html", loginTitle:"登录",	// 弹出登录对话框
//		loginUrl:"login.html",	// 跳到登录页面
		statusCode:{ok:200, error:300, timeout:301}, //【可选】
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //【可选】
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
		}
	});
});

</script>
</head>

<body scroll="no">
	<div id="layout">
		<div id="header">
			<div class="headerNav">
				<a class="logo" href="#">logo</a>
				<ul class="nav">
					<li><a href="logout.html">退出</a></li>
				</ul>
			</div>

			<!-- navMenu -->
			
		</div>

		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse"><div></div></div>
				</div>
			</div>
			<div id="sidebar">
				<div class="toggleCollapse"><h2>主菜单</h2><div>收缩</div></div>

				<div class="accordion" fillSpace="sidebar">
				
					<div class="accordionHeader">
						<h2><span>Folder</span>小组管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a>小组管理</a>
								<ul>
									<li><a rel="team_list" href="team_list.html" target="navTab">小组列表</a></li>
									<li><a rel="user_list" href="user_list.html" target="navTab">用户列表</a></li>
								</ul>
							</li>
							<li><a>主机管理</a>
								<ul>
									<li><a rel="host_list" href="host_list.html" target="navTab">主机列表</a></li>
									<li><a rel="host_add" href="host_add.html" target="navTab">添加主机</a></li>
								</ul>
							</li>
							<li><a>flag管理</a>
								<ul>
									<li><a rel="flag_list" href="flag_list.html" target="navTab">flag列表</a></li>
									<li><a rel="flag_add" href="flag_add.html" target="navTab">添加flag</a></li>
								</ul>
							</li>
							<li><a>公告管理</a>
								<ul>
									<li><a rel="message_list" href="m_list.html" target="navTab">公告列表</a></li>
									<li><a rel="message_add" href="m_add.html" target="navTab">添加公告</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>主机管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a>主机管理</a>
								<ul>
									<li><a rel="host_list" href="host_list.html" target="navTab">主机列表</a></li>
									<li><a rel="host_add" href="host_add.html" target="navTab">添加主机</a></li>
								</ul>
							</li>
							<li><a>flag管理</a>
								<ul>
									<li><a rel="flag_list" href="flag_list.html" target="navTab">flag列表</a></li>
									<li><a rel="flag_add" href="flag_add.html" target="navTab">添加flag</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent"><!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span class="home_icon">系统首页</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div><!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div><!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">系统首页</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<div class="accountInfo">
							<p><span>成绩管理系统</span></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer">copyright&nbsp;&copy;&nbsp;cc</div>

</body>
</html>