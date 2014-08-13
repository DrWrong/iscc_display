<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form id="pagerForm" method="post" action="flag_list.html">
	<input type="hidden" name="pageNum" value="${pager.pageNum}" />
	<input type="hidden" name="numPerPage" value="${pager.numPerPage}" />
	<input type="hidden" name="orderField" value="" />
</form>


<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="flag_list.html" method="post">
	<div class="searchBar">
		<table class="searchContent">
			<tr>
				<td>
					组名：<input type="text" name="subject" />
				</td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit" >检索</button></div></div></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="flag_add.html" target="navTab"><span>添加</span></a></li>
			<li><a class="edit" href="flag_edit.html?id={id}" target="dialog" mask="true" width="600" height="356"><span>编辑</span></a></li>
			<li><a class="delete" href="flag_del.html?id={id}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li class="line">line</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="10"></th>
				<th width="100">flag</th>
				<th width="100">value</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${flags }" var="f">
			<tr target="id" rel="${f.id} ">
				<td>${f.id }</td>
				<td></td>
				<td>${f.value }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="panelBar">
	<div class="pages">
		<span>Per Page</span>
		<select name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
			<c:forEach begin="10" end="40" step="10" varStatus="s">
				<option value="${s.index}" ${pager.numPerPage eq s.index ? 'selected="selected"' : ''}>${s.index}</option>
			</c:forEach>
		</select>
		<span>Total: ${pager.totalCount}</span>
	</div>
	
	<div class="pagination" targetType="navTab" totalCount="${pager.totalCount}" numPerPage="${pager.numPerPage}" pageNumShown="10" currentPage="${pager.pageNum}"></div>
</div>
