<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Merchant List</title>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="mvc">
	<h1>All Merchants List</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Charge</th>
			<th>Minimum sum</th>
			<th>Bank</th>
		</tr>
		<c:forEach var="merchant" items="${merchantList}">
			<tr>
				<td><c:out value="${merchant.id}" /></td>
				<td><c:out value="${merchant.name}" /></td>
				<td><c:out value="${merchant.charge}" /></td>
				<td><c:out value="${merchant.minSum}" /></td>
				<td><c:out value="${merchant.bankName}" /></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>
