<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="account.register" var="msgRegister" />
<spring:message code="account.login" var="msgLogin" />
<spring:message code="account.logout" var="msgLogout" />
<spring:message code="wishlist" var="msgWishlist" />
<spring:message code="shoppingCart" var="msgShoppingCart" />
<spring:message code="shoppingCart.mini.noItems" var="msgCartNoItems" />
<spring:message code="search.searchBox.toolTip" var="msgSearchToolTip" />
<spring:message code="search.button" var="msgSearchButton" />
<spring:message code="search.searchTerms" var="msgSearchTerms" />

<div class="header">
    <div class="header-upper">

        <div class="header-selectors-wrapper">
            <div class="language-selector">
                <select id="customerlanguage" name="customerlanguage" onchange="setLocation(this.value);">
                    <option value="?lang=en"${"vi" == locale ? "" : "selected"}>English</option>
                    <option value="?lang=vi"${"vi" == locale ? "selected" : ""}>Việt Nam</option>
                </select>
            </div>        
        </div>
        <div class="header-links-wrapper">
			<div class="header-links">
			    <ul>
			        <security:authorize access="isAuthenticated()">
			            <li><a href="<c:url value="/customer/info" />" class="ico-account">${accountModel.username}</a></li>
			            <li><a href="<c:url value="/logout" />" class="ico-logout">${msgLogout}</a></li>
			        </security:authorize>
			        <security:authorize access="!isAuthenticated()">
			            <li><a href="<c:url value="/register" />" class="ico-register">${msgRegister}</a></li>
			            <li><a href="<c:url value="/login" />" class="ico-login">${msgLogin}</a></li>
			        </security:authorize>
			        <li>
			            <a href="/wishlist" class="ico-wishlist">
			                <span class="wishlist-label">${msgWishlist}</span>
			                <span class="wishlist-qty">(0)</span>
			            </a>
			        </li>
			        <li id="topcartlink">
			            <a href="/cart" class="ico-cart">
			                <span class="cart-label">${msgShoppingCart}</span>
			                <span class="cart-qty">(0)</span>
			            </a>
			        </li>
			    </ul>
			    <script type="text/javascript">
			        $(document).ready(function () {
			            $('.header').on('mouseenter', '#topcartlink', function () {
			                $('#flyout-cart').addClass('active');
			            });
			            $('.header').on('mouseleave', '#topcartlink', function () {
			                $('#flyout-cart').removeClass('active');
			            });
			            $('.header').on('mouseenter', '#flyout-cart', function () {
			                $('#flyout-cart').addClass('active');
			            });
			            $('.header').on('mouseleave', '#flyout-cart', function () {
			                $('#flyout-cart').removeClass('active');
			            });
			        });
			    </script>
			</div>
			<div id="flyout-cart" class="flyout-cart">
			    <div class="mini-shopping-cart">
			        <div class="count">${msgCartNoItems}</div>
			    </div>
			</div>
        </div>
    </div>

    <div class="header-lower">
        <div class="header-logo">
			<a href="<c:url value="/home" />">
			    <img title="" alt="<tiles:getAsString name="generator" />" src="<c:url value="/WEB-RES/web/themes/defaultClean/content/images/logo.png" />" />
			</a>
        </div>
        <div class="search-box store-search-box">
		<form action="/search" id="small-search-box-form" method="get">
		    <input type="text" class="search-box-text" id="small-searchterms" autocomplete="off" name="q" placeholder="${msgSearchToolTip}" />
		    <input type="submit" class="button-1 search-box-button" value="${msgSearchButton}" />
		    <script type="text/javascript">
		        $("#small-search-box-form").submit(function(event) {
		            if ($("#small-searchterms").val() == "") {
		                alert('${msgSearchTerms}');
		                $("#small-searchterms").focus();
		                event.preventDefault();
		            }
		        });
		    </script>
		    <script type="text/javascript">
		        $(document).ready(function() {
		            $('#small-searchterms').autocomplete({
		                    delay: 500,
		                    minLength: 3,
		                    source: '/catalog/search-term-autocomplete',
		                    appendTo: '.search-box',
		                    select: function(event, ui) {
		                        $("#small-searchterms").val(ui.item.label);
		                        setLocation(ui.item.producturl);
		                        return false;
		                    }
		                })
		                .data("ui-autocomplete")._renderItem = function(ul, item) {
		                    var t = item.label;
		                    //html encode
		                    t = htmlEncode(t);
		                    return $("<li></li>")
		                        .data("item.autocomplete", item)
		                        .append("<a><span>" + t + "</span></a>")
		                        .appendTo(ul);
		                };
		        });
		    </script>
		</form>
        </div>
    </div>
</div>