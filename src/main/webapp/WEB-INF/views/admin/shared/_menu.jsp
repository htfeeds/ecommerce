<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<ul class="sidebar-menu">
    <!-- Dashboard -->
	<li>
	    <a href="<c:url value="/admin" />" class="menu-item-link">
	        <i class="fa fa-desktop"></i>
	        <span class="menu-item-title">Dashboard</span>
	    </a>
	</li>
	<!-- Catalog -->
    <li class="treeview">
        <a href="#">
            <i class="fa fa-book"></i>
            <span>Catalog</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
        <!-- Catalog items -->
        <ul class="treeview-menu">
            <li>
                <a href="#" class="menu-item-link">
                    <i class="fa fa-dot-circle-o"></i>
                    <span class="menu-item-title">Products</span>
                </a>
            </li>
            <li>
                <a href="#" class="menu-item-link">
                    <i class="fa fa-dot-circle-o"></i>
                    <span class="menu-item-title">Categories</span>
                </a>
            </li>
            <li>
                <a href="#" class="menu-item-link">
                    <i class="fa fa-dot-circle-o"></i>
                    <span class="menu-item-title">Manufacturers</span>
                </a>
            </li>
        </ul>
    </li>
    <!-- Sales -->
    <li class="treeview">
        <a href="#">
            <i class="fa fa-shopping-cart"></i>
            <span>Sales</span>
            <i class="fa fa-angle-left pull-right"></i>
        </a>
        <!-- Sales items -->
        <ul class="treeview-menu">
            <li>
                <a href="#" class="menu-item-link">
                    <i class="fa fa-dot-circle-o"></i>
                    <span class="menu-item-title">Orders</span>
                </a>
            </li>
        </ul>
    </li>
</ul>