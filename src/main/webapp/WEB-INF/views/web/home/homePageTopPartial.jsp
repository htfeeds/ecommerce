<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<div class="slider-wrapper theme-custom">
    <div id="nivo-slider" class="nivoSlider">
        <a href="<c:url value="/" />">
            <img src="<c:url value="/WEB-RES/web/content/images/upload/sliders/0000001_banner_1.jpg" />" data-thumb="<c:url value="/WEB-RES/web/content/images/upload/sliders/0000001_banner_1.jpg" />" data-transition="" alt="" title="" />
        </a>
        <!-- NO LINK -->
        <img src="<c:url value="/WEB-RES/web/content/images/upload/sliders/0000002_banner_2.jpg" />" data-thumb="<c:url value="/WEB-RES/web/content/images/upload/sliders/0000002_banner_2.jpg" />" data-transition="" alt="" title="" />
    </div>
</div>
<script type="text/javascript">
    $(window).load(function () {
        $('#nivo-slider').nivoSlider();
    });
</script>
