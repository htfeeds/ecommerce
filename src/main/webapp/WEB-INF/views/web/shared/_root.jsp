<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="homePage" var="msgHomePage" />
<spring:message code="products.newProducts" var="msgNewProducts" />
<spring:message code="search" var="msgSearch" />
<spring:message code="account.myAccount" var="msgMyAccount" />
<spring:message code="blog" var="msgBlog" />
<spring:message code="contactUs" var="msgContactUs" />

<tiles:insertAttribute name="notifications" />

<div class="master-wrapper-page">
    <security:authorize access="hasRole('ADMIN')">
	    <div class="admin-header-links">
	        <a href="<c:url value="/admin" />" class="administration"><spring:message code="account.administration" /></a>
	    </div>
    </security:authorize>
    <tiles:insertAttribute name="header" />
    <script type="text/javascript">
        AjaxCart.init(false, '.header-links .cart-qty', '.header-links .wishlist-qty', '#flyout-cart');
    </script>

    <div class="header-menu">
		<ul class="top-menu">
		    <li><a href="/home">${msgHomePage}</a></li>
		    <li><a href="/new-products">${msgNewProducts}</a></li>
		    <li><a href="/search">${msgSearch}</a></li>
		    <li><a href="/customer/info">${msgMyAccount}</a></li>
		    <li><a href="/blog">${msgBlog}</a></li>
		    <li><a href="/contact-us">${msgContactUs}</a></li>
		</ul>
	
		<div class="menu-toggle">Menu</div>
		<ul class="top-menu mobile">
			 <li><a href="/home">${msgHomePage}</a></li>
			 <li><a href="/new-products">${msgNewProducts}</a></li>
			 <li><a href="/search">${msgSearch}</a></li>
			 <li><a href="/customer/info">${msgMyAccount}</a></li>
			 <li><a href="/blog">${msgBlog}</a></li>
			 <li><a href="/contact-us">${msgContactUs}</a></li>
		</ul>
	
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('.menu-toggle').click(function () {
		            $(this).siblings('.top-menu.mobile').slideToggle('slow');
		        });
		        $('.top-menu.mobile .sublist-toggle').click(function () {
		            $(this).siblings('.sublist').slideToggle('slow');
		        });
		    });
		</script>
    </div>

    <div class="master-wrapper-content">
        <tiles:insertAttribute name="breadcrumb" />
        <div class="master-column-wrapper">
            <tiles:insertAttribute name="columnsOne" />
        </div>
    </div>

    <tiles:insertAttribute name="footer" />
</div>