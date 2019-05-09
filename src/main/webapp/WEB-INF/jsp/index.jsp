<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
<meta charset="ISO-8859-1">
<title>Insert title here</title>	
</head>
<body>


<a href="/changeSessionLanauage?lang=zh_CN">简体中文</a>
<a href="/changeSessionLanauage?lang=en_US">英文</a>
 <img src="default-avatar.png" class="imglogo"/>
<h4><spring:message code="language.welcome"/></h4>
</body>
</html>