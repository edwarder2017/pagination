<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>固定页码-分页</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/page.css">
	</head>
	<body>
		<table>
			<caption>固定页码分页</caption>
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
			<%--
				分析:此时我们需要计算begin和end值
				情况一:如果总页数不足6页==>begin=1,end=totalPage
				情况二:总页数大于6页
					1)通过公式计算begin=currentPage-2,end = currendPage + 3
					2)如果begin<1,此时begin=1,end=6
					3)如果end>totalPage,begin=currendPage-5,end=totalPage
			 --%>
			 <!-- 计算begin和end值 -->
			 <c:choose>
			 	<c:when test="${totalPage <=6 }">
			 		<c:set var="begin" value="1"></c:set>
			 		<c:set var="end" value="${totalPage }"></c:set>
			 	</c:when>
			 	<c:otherwise>
			 		<c:set var="begin" value="${currentPage - 2 }"></c:set>
			 		<c:set var="end" value="${currentPage + 3 }"></c:set>
			 		<c:if test="${begin < 1 }">
			 			<c:set var="begin" value="1"></c:set>
			 			<c:set var="end" value="6"></c:set>
			 		</c:if>
			 		<c:if test="${end > totalPage }">
			 			<c:set var="begin" value="${totalPage-5 }"></c:set>
			 			<c:set var="end" value="${totalPage }"></c:set>
			 		</c:if>
			 	</c:otherwise>
			 </c:choose>
			 
			 <c:if test="${currentPage ne begin }">
				<a href="${pageContext.servletContext.contextPath }/province/getFixedPage?page=${currentPage - 1 }">上一页</a>
			</c:if>
			
			<c:forEach begin="${begin }" end="${end }" var="page">
				<c:choose>
					<c:when test="${currentPage eq page }">
						<a href="${pageContext.servletContext.contextPath }/province/getFixedPage?page=${page }">
							<span class="textBold">${page }</span>
						</a>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.servletContext.contextPath }/province/getFixedPage?page=${page }">${page }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<c:if test="${end < totalPage }">
				<span>...</span>
			</c:if>
			
			<c:if test="${currentPage ne end }">
				<a href="${pageContext.servletContext.contextPath }/province/getFixedPage?page=${currentPage + 1 }">下一页</a>
			</c:if>
		</div>
	</body>
</html>