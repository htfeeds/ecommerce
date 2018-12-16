<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<tiles:importAttribute name="headCssFiles" />
<tiles:importAttribute name="headScripts" />
<tiles:importAttribute name="footCssFiles" />
<tiles:importAttribute name="footScripts" />

<!DOCTYPE html>
<html class="<tiles:getAsString name="pageCssClasses" />">

<head>
	<title><tiles:getAsString name="title" /></title>
	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<meta name="description" content="<tiles:getAsString name="description" />" />
	<meta name="keywords" content="<tiles:getAsString name="keywords" />" />
	<meta name="generator" content="<tiles:getAsString name="generator" />" />
	<meta name="author" content="<tiles:getAsString name="author" />" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

    <c:forEach var="css" items="${headCssFiles}">
        <link href="<c:url value="${css}" />" rel="stylesheet" type="text/css" />        
    </c:forEach>

    <c:forEach var="script" items="${headScripts}">
        <script src="<c:url value="${script}" />" type="text/javascript"></script>        
    </c:forEach>

    <link rel="shortcut icon" href="<c:url value="/WEB-RES/favicon.ico" />" />
</head>

<body>
    <tiles:insertAttribute name="root" />

    <c:forEach var="css" items="${footCssFiles}">
        <link href="<c:url value="${css}" />" rel="stylesheet" type="text/css" />        
    </c:forEach>

    <c:forEach var="script" items="${footScripts}">
        <script src="<c:url value="${script}" />" type="text/javascript"></script>        
    </c:forEach>
</body>

</html>