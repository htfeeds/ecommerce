<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<div class="gallery">
    <div class="picture">
        <img alt="Picture of Apple MacBook Pro 13-inch" src="<c:url value="/WEB-RES/web/content/images/upload/products/macbook-pro.jpeg" />" title="Picture of Apple MacBook Pro 13-inch" itemprop="image" id="main-product-img-99" />
    </div>
    <div class="picture-thumbs">
	     <div class="thumb-item">
	        <img src="<c:url value="/WEB-RES/web/content/images/upload/products/0000024_apple-macbook-pro-13-inch_100.jpeg" />"
	           alt="Picture of Apple MacBook Pro 13-inch" title="Picture of Apple MacBook Pro 13-inch"
	           data-defaultsize="<c:url value="/WEB-RES/web/content/images/upload/products/0000024_apple-macbook-pro-13-inch_550.jpeg" />"
	           data-fullsize="<c:url value="/WEB-RES/web/content/images/upload/products/0000024_apple-macbook-pro-13-inch.jpeg" />"/>
	     </div>
        <div class="thumb-item">
            <img src="<c:url value="/WEB-RES/web/content/images/upload/products/0000025_apple-macbook-pro-13-inch_100.jpeg" />"
                alt="Picture of Apple MacBook Pro 13-inch" title="Picture of Apple MacBook Pro 13-inch"
                data-defaultsize="<c:url value="/WEB-RES/web/content/images/upload/products/0000025_apple-macbook-pro-13-inch_550.jpeg" />"
                data-fullsize="<c:url value="/WEB-RES/web/content/images/upload/products/0000025_apple-macbook-pro-13-inch.jpeg" />"/>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.thumb-item img').on('click', function () {
                $('#main-product-img-99').attr('src', $(this).attr('data-defaultsize'));
                $('#main-product-img-99').attr('title', $(this).attr('title'));
                $('#main-product-img-99').attr('alt', $(this).attr('alt'));
                $('#main-product-img-lightbox-anchor-99').attr('href', $(this).attr('data-fullsize'));
                $('#main-product-img-lightbox-anchor-99').attr('title', $(this).attr('title'));
            });
        });
    </script>
</div>