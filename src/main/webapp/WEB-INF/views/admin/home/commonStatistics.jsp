<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="admin.dashboard.commonStatistics" var="msgCommonStatistics" />
<spring:message code="admin.dashboard.numberOfOrders" var="msgNumberOfOrders" />
<spring:message code="admin.dashboard.moreInfo" var="msgMoreInfo" />
<spring:message code="admin.dashboard.numberOfPendingReturnRequests" var="msgNumberOfPendingReturnRequests" />
<spring:message code="admin.dashboard.numberOfCustomers" var="msgNumberOfCustomers" />
<spring:message code="admin.dashboard.numberOfLowStockProducts" var="msgNumberOfLowStockProducts" />

<div class="box box-info" id="common-statistics-box">
    <div class="box-header with-border clearfix">
        <div class="box-title">
            <i class="fa ion-stats-bars"></i>
            ${msgCommonStatistics}
        </div>
        <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                <text><i class="fa fa-minus"></i></text>
            </button>
        </div>
    </div>
    <div class="box-body">
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>1</h3>
                    <p>${msgNumberOfOrders}</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="<c:url value="/" />" class="small-box-footer">
                    ${msgMoreInfo}
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>2</h3>
                    <p>${msgNumberOfPendingReturnRequests}</p>
                </div>
                <div class="icon">
                    <i class="ion ion-refresh"></i>
                </div>
                <a href="<c:url value="/" />" class="small-box-footer">
                    ${msgMoreInfo}
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-green">
                <div class="inner">
                    <h3>3</h3>
                    <p>${msgNumberOfCustomers}</p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                <a href="<c:url value="/" />" class="small-box-footer">
                    ${msgMoreInfo}
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-red">
                <div class="inner">
                    <h3>4</h3>
                    <p>${msgNumberOfLowStockProducts}</p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="<c:url value="/" />" class="small-box-footer">
                    ${msgMoreInfo}
                    <i class="fa fa-arrow-circle-right"></i>
                </a>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#common-statistics-box').on('click', 'button[data-widget="collapse"]', function () {
                    var collapsed = !$('#common-statistics-box').hasClass('collapsed-box');
                    // If you need to save this setting, do it here
                });
            });
        </script>
    </div>
</div>