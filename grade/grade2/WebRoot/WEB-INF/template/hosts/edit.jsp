<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pageContent">
	<form method="post" action="host_save.html"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<input name="id" type="hidden" size="30" value="${host.id }" />
			<p>
				<label>主机名：</label> <input name="name" class="required"
					type="text" size="30" value="${host.name }" alt="请输入主机名" />
			</p>
			<p>
				<label>IP：</label> <input name="ip" class="required"
					type="text" size="30" value="${host.ip }" alt="请输入IP" />
			</p>
			<p>
				<label>flag：</label> 
				<select class="combox" name="flag.id">
					<option value>选择flag……</option>
					<c:forEach var="f" items="${flags}">
					<option value="${f.id }">${f.value }</option>
					</c:forEach>
				</select>
			</p>
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
