<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="pageContent">
	<form method="post" action="user_save.html"
		class="pageForm required-validate"
		onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<input name="id" type="hidden" size="30" value="${user.id }" />
			<p>
				<label>组名：</label> 
				<select class="combox" name="team.id">
					<option value="0">选择小组……</option>
					<c:forEach var="t" items="${teams}">
					<option value="${t.id }">${t.name }</option>
					</c:forEach>
				</select>
			</p>
			<p>
				<label>用户名：</label> <input name="username" class="required"
					type="text" size="30" value="${user.username }" alt="请输入用户名" />
			</p>
			<p>
				<label>密码：</label> <input name="password" class="required"
					type="password" size="30" value="${user.password }" alt="请输入密码" />
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
