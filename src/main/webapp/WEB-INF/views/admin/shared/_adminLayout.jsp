<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<tiles:importAttribute name="headCssFiles" />
<tiles:importAttribute name="headScripts" />
<tiles:importAttribute name="footCssFiles" />
<tiles:importAttribute name="footScripts" />

<spring:message code="common.wait" var="msgWait" />
<spring:message code="admin.header.publicStore" var="msgPublicStore" />
<spring:message code="admin.menu.search" var="msgSearch" />

<!DOCTYPE html>
<html>
<head>
    <title><tiles:getAsString name="title" /></title>
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
    <meta name="description" content="<tiles:getAsString name="description" />" />
    <meta name="keywords" content="<tiles:getAsString name="keywords" />" />
    <meta name="generator" content="<tiles:getAsString name="generator" />" />
    <meta name="author" content="<tiles:getAsString name="author" />" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />

    <c:forEach var="css" items="${headCssFiles}">
        <link href="<c:url value="${css}" />" rel="stylesheet" type="text/css" />        
    </c:forEach>

    <c:forEach var="script" items="${headScripts}">
        <script src="<c:url value="${script}" />" type="text/javascript"></script>        
    </c:forEach>
</head>

<body class="hold-transition skin-blue sidebar-mini">
    <div class="throbber">
        <div class="curtain"></div>
        <div class="curtain-content">
            <div>
                <h1 class="throbber-header">${msgWait}</h1>
                <p>
                    <img src="<c:url value="/WEB-RES/admin/content/images/throbber-synchronizing.gif" />" alt="" />
                </p>
            </div>
        </div>
    </div>
    <div id="ajaxBusy">
        <span>&nbsp;</span>
    </div>
    <div class="wrapper">
        <div class="main-header">
            <a href="<c:url value="/admin" />" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"></span>
            </a>
            <div class="navbar navbar-static-top" role="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">&nbsp;</span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <li>
                            <div style="padding: 7px 12px 0 12px;">
                                <select class="form-control" id="customerlanguage" name="customerlanguage" onchange="setLocation(this.value);">
                                    <option value="?lang=en"${"vi" == locale ? "" : "selected"}>English</option>
                                    <option value="?lang=vi"${"vi" == locale ? "selected" : ""}>Việt Nam</option>
                                </select>
                            </div>
                        </li>
                        <li class="account-info">
                            ADMIN
                        </li>
                        <li>
                            <a href="<c:url value="/logout" />">
                                Logout
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/home" />">
                                ${msgPublicStore}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="main-sidebar">
            <div class="sidebar">
                <div class="sidebar-form">
                    <div id="search-box">
                        <input type="text" class="form-control admin-search-box typeahead" placeholder="${msgSearch}">
                    </div>
                </div>
                <script>
                    $(document).ready(function () {
                        Admin.Search.init();
                    });
                </script>
                <tiles:insertAttribute name="menu" />
            </div>
        </div>

        <div class="content-wrapper">
            <tiles:insertAttribute name="notifications" />
            <div>
                <tiles:insertAttribute name="body" />
            </div>
        </div>

        <div class="main-footer clearfix">
            <div class="pull-left">
                Powered by <a href="#" target="_blank">HTFeeds</a>
            </div>
            <div class="pull-right hidden-xs">
                <b>ecommerce version 1.0</b>
            </div>
            <div class="text-center">
                Monday, October 16, 2017 10:01 PM
            </div>
        </div>
    </div>

    <script>
        var AdminLTEOptions = {
            boxWidgetOptions: {
                boxWidgetIcons: {
                    collapse: 'fa-minus',
                    open: 'fa-plus'
                }
            }
        };
    </script>

    <c:forEach var="css" items="${footCssFiles}">
        <link href="<c:url value="${css}" />" rel="stylesheet" type="text/css" />        
    </c:forEach>

    <c:forEach var="script" items="${footScripts}">
        <script src="<c:url value="${script}" />" type="text/javascript"></script>        
    </c:forEach>

    <a id="backTop" class="btn btn-back-top bg-teal"></a>
    <script>
        $(document).ready(function () {
            $('#backTop').backTop();

            $('a.sidebar-toggle').on('click', function () {
                var collapsed = $('body').hasClass('sidebar-collapse');
                // If you need to save this setting, do it here
            });
        });
    </script>
</body>
</html>