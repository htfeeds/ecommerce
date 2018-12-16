<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="account.register" var="msgRegister" />
<spring:message code="account.login" var="msgLogin" />
<spring:message code="account.logout" var="msgLogin" />

<!DOCTYPE HTML>
<html>
<head>
<script type="text/javascript">
    function changeText(ele){
    	document.getElementById("text").innerHTML = ele.innerHTML;
    } 
</script>
</head>
<body>
<h1>HELLO ME!</h1>
<h2>LONG TIME NO SEE!</h2>

<h2>I'm <b><i>fucking</i></b> miss you so much...</h2>
<a href="?lang=vi" onclick="changeText(this);return true;">VIETNAM</a>
<a href="?lang=en" onclick="changeText(this);return false;">ENGLISH</a>
<p>The selected is ${"en"==locale?"en":"deo phai en"}</p>
<br/>
${msgRegister}
<br/>
<h2 id="text">TAN NGU NGUOI</h2>
<input type="text" name="user"/>
<input type="password" name="pwd"/>
</body>
</html>