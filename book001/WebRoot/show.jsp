<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 修改日期时间格式 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<c:set value="${pageContext.request.contextPath}" var="ctx"></c:set>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示数据</title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/show.css">
<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/show.js"></script>
</head>
<body>
	<!-- 通过hidden存放绝对路径的值 -->
	<input type="hidden" value="${ctx}" id="hidd">
	<input type="hidden" value="${lastPage}" id="lastPage">
	<input type="hidden" value="${page}" id="page">
	<div>
		<table id="tab">
			<tr>
				<th colspan="7">书籍数据显示 <input type="button" id="save"
					value="添加书籍">
				</th>
			</tr>
			<tr>
				<td>书籍ID</td>
				<td>书籍名称</td>
				<td>书籍作者</td>
				<td>书籍出版社</td>
				<td>出版时间</td>
				<td>种类</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${books}" var="b">
				<tr class="tr">
					<td>${b.id }</td>
					<td>${b.name }</td>
					<td>${b.author }</td>
					<td>${b.publisher }</td>
					<td><fmt:formatDate value="${b.publishDate }"
							pattern="yyyy-MM-dd" />
					</td>
					<td>${b.category.name }</td>
					<td><input type="button" value="删除"
						onclick="deleteById(${b.id})">
					</td>
				</tr>
			</c:forEach>

			<tr>
				<td colspan="7"><input type="button" value="首页" id="b1">
					<span>第${page }页</span> <input type="button" value="上一页" id="b2">
					<input type="button" value="下一页" id="b3"> <span>共${lastPage
						}页</span> <input type="button" value="尾页" id="b4">
				</td>
			</tr>
		</table>

	</div>
</body>
</html>