<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<div class="page home-page">
    <div class="page-body">
        <tiles:insertAttribute name="homePageTopPartial" />
        <tiles:insertAttribute name="topicBlockPartial" />
        <tiles:insertAttribute name="homePageCategoriesPartial" />
        <tiles:insertAttribute name="homePageProductsPartial" />
    </div>
</div>
