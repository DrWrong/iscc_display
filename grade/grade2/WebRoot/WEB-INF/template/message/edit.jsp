<%@page import="java.text.*,java.util.*,java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
Date rightNow = new Date();    
DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
%>
<div class="pageContent">
	<form method="post" action="m_save.html"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>时间：</label> <input name="ctime" class="required"
					type="text" size="30" value="<%=format1.format(rightNow) %>" readonly="readonly" alt="" />
			</p>
			<div class="unit">
				<label>内容：</label> 
				<textarea class="editor" name="content" rows="10" cols="100" tools="mini"></textarea>
			</div>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive">
						<div class="buttonContent">
							<button type="submit">保存</button>
						</div>
					</div>
				</li>
				<li>
					<div class="button">
						<div class="buttonContent">
							<button type="button" class="close">取消</button>
						</div>
					</div></li>
			</ul>
		</div>
	</form>
</div>
