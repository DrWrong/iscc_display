<%@ page language="java"  import = "java.util.*,org.owasp.encoder.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<li style="border-bottom:#CCC 1px dashed;"><span style="padding:0px;margin-left:50px;margin-right:50px;"></span>
	
	<span style="padding:0px;margin-left:130px;">
	公告
	</span></li>
	<c:forEach var="m" items="${ms }">
	<li style="border-bottom:#CCC 1px dashed;">
	${m.content }
	</li>
	</c:forEach>
