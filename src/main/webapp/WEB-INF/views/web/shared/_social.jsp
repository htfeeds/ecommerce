<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="footer.facebook" var="msgFacebook" />
<spring:message code="footer.twitter" var="msgTwitter" />
<spring:message code="footer.youtube" var="msgYoutube" />

<ul class="networks">
	<li class="facebook"><a href="http://www.facebook.com" target="_blank">${msgFacebook}</a></li>
	<li class="twitter"><a href="https://twitter.com" target="_blank">${msgTwitter}</a></li>
	<li class="youtube"><a href="http://www.youtube.com" target="_blank">${msgYoutube}</a></li>
</ul>