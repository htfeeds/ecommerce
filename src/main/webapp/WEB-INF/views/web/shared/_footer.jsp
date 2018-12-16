<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="footer.information" var="msgInformation" />
<spring:message code="footer.customerService" var="msgCustomerService" />
<spring:message code="footer.followus" var="msgFollowUs" />
<spring:message code="footer.copyright" var="msgCopyright" />
<spring:message code="shippingAndReturns" var="msgShippingAndReturns" />
<spring:message code="aboutUs" var="msgAboutUs" />
<spring:message code="contactUs" var="msgContactUs" />
<spring:message code="search" var="msgSearch" />
<spring:message code="news" var="msgNews" />
<spring:message code="products.recentlyViewedProducts" var="msgRecentlyViewedProducts" />
<spring:message code="account.myAccount" var="msgMyAccount" />
<spring:message code="account.customerOrders" var="msgCustomerOrders" />
<spring:message code="account.customerAddresses" var="msgCustomerAddresses" />

<div class="footer">
    <div class="footer-upper">
        <div class="footer-block information">
            <div class="title">
                <strong>${msgInformation}</strong>
            </div>
            <ul class="list">
                <li><a href="/shipping-returns">${msgShippingAndReturns}</a></li>
                <li><a href="/about-us">${msgAboutUs}</a></li>
                <li><a href="/contact-us">${msgContactUs}</a></li>
            </ul>
        </div>
        <div class="footer-block customer-service">
            <div class="title">
                <strong>${msgCustomerService}</strong>
            </div>
            <ul class="list">
                <li><a href="/search">${msgSearch}</a> </li>
                <li><a href="/news">${msgNews}</a></li>
                <li><a href="/recently-viewed-products">${msgRecentlyViewedProducts}</a></li>
            </ul>
        </div>
        <div class="footer-block my-account">
            <div class="title">
                <strong>${msgMyAccount}</strong>
            </div>
            <ul class="list">
                <li><a href="/customer/info">${msgMyAccount}</a></li>
                <li><a href="/customer/orders">${msgCustomerOrders}</a></li>
                <li><a href="/customer/addresses">${msgCustomerAddresses}</a></li>
            </ul>
        </div>
        <div class="footer-block follow-us">
            <div class="social">
                <div class="title">
                    <strong>${msgFollowUs}</strong>
                </div>
                <tiles:insertAttribute name="social" />
            </div>
            <tiles:insertAttribute name="newsLetterBox" />
        </div>
    </div>
    <div class="footer-lower">
        <div class="footer-info">
            <span class="footer-disclaimer">${msgCopyright}</span>
        </div>
		<div class="footer-powered-by">
		    Powered by <a href="https://www.facebook.com/htfeeds">HTFeeds</a>
		</div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('.footer-block .title').click(function () {
            var e = window, a = 'inner';
            if (!('innerWidth' in window)) {
                a = 'client';
                e = document.documentElement || document.body;
            }
            var result = { width: e[a + 'Width'], height: e[a + 'Height'] };
            if (result.width < 769) {
                $(this).siblings('.list').slideToggle('slow');
            }
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $('.block .title').click(function () {
            var e = window, a = 'inner';
            if (!('innerWidth' in window)) {
                a = 'client';
                e = document.documentElement || document.body;
            }
            var result = { width: e[a + 'Width'], height: e[a + 'Height'] };
            if (result.width < 1001) {
                $(this).siblings('.listbox').slideToggle('slow');
            }
        });
    });
</script>