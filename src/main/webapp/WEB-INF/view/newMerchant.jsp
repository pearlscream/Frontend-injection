<%@ page language="java" contentType="text/html; 	charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="cf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01   
       Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>New Merchant</title>
	<style>.error{color:red; font-weight:bold;}</style>
</head>
<body>
     <h2>Merchant Information</h2>
     <cf:form method="POST" action="addMerchant" modelAttribute="merchant">
     <table>
	<tr>
	     <td><cf:label path="name">Name</cf:label></td>
	     <td><cf:input path="name" />
	     <cf:errors path="name" cssClass="error"/></td>
	</tr>
	<tr>
	     <td>
		<cf:label path="bankName">Bank Name</cf:label>
	     </td>
	     <td><cf:input path="bankName" />
	     <cf:errors path="bankName" cssClass="error"/></td>
	</tr>
	<tr>
	     <td><cf:label path="swift">SWIFT Code</cf:label></td>
	     <td><cf:input path="swift" />
	     <cf:errors path="swift" cssClass="error"/></td>
	</tr>
	<tr>
	     <td><cf:label path="account">Account</cf:label></td>
	     <td><cf:input path="account" />
	     <cf:errors path="account" cssClass="error"/></td>
	</tr>
	<tr>
	     <td><cf:label path="charge">Charge</cf:label></td>
	     	     <td><cf:input path="charge" />
	     	     <cf:errors path="charge" cssClass="error"/></td>
	</tr><tr>
	     <td><cf:label path="minSum">Minimum sum</cf:label>
	     </td>
	     <td><cf:input path="minSum" /></td>
	</tr><tr>
	     <td colspan="2">
		<input type="submit" value="Submit"/>
	     </td>
	</tr>
     </table> </cf:form>
</body> </html>
	     