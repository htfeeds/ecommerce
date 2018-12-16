<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="admin.dashboard" var="msgDashboard" />

<div class="content-header">
    <h1>
        ${msgDashboard}
    </h1>
</div>

<div class="content">
    <div class="row">
        <div class="col-md-12">
	        <div class="row">
	            <div class="col-md-12">
	                <tiles:insertAttribute name="commonStatistics" />
	            </div>
	        </div>
	        <div class="row">
                <div class="col-md-12">
                    <tiles:insertAttribute name="latestOrders" />
                </div>
	        </div>
        </div>
    </div>
</div>
