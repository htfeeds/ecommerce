<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="homePage.products" var="msgHomePageProducts" />

<div class="product-grid home-page-product-grid">
    <div class="title">
        <strong>${msgHomePageProducts}</strong>
    </div>
    <div class="item-grid">
        <tiles:insertAttribute name="productBox" />
    </div>
    <div class="view-all">
        <a href="<c:url value="/" />">View More Products</a>
    </div>
</div>