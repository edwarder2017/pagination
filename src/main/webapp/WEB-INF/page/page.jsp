<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>分页</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/page.css">
	</head>
	<body>
		<table>
			<caption>分页列表</caption>
			<tr>
				<th>ID</th>
				<th>CODE</th>
				<th>NAME</th>
			</tr>
			<c:forEach items="${provinces }" var="province">
				<tr>
					<td>${province.id }</td>
					<td>${province.code }</td>
					<td>${province.name }</td>
				</tr>
			</c:forEach>
			
		</table>
		<div>
			<c:if test="${currentPage ne 1 }">
				<a href="${pageContext.servletContext.contextPath }/province/getPage?page=${currentPage - 1 }">上一页</a>
			</c:if>
			
			<c:forEach begin="1" end="${totalPage }" var="page">
				<a href="${pageContext.servletContext.contextPath }/province/getPage?page=${page }">${page }</a>
			</c:forEach>
			
			<c:if test="${currentPage ne totalPage }">
				<a href="${pageContext.servletContext.contextPath }/province/getPage?page=${currentPage + 1 }">下一页</a>
			</c:if>
			
		</div>
	</body>
</html>