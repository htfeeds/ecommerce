<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<div class="breadcrumb">
    <ul>
        <li>
            <span itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="<c:url value="/" />" itemprop="url">
                    <span itemprop="title">Home</span>
                </a>
            </span>
            <span class="delimiter">/</span>
        </li>
		<li>
		    <span itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
		        <a href="<c:url value="/" />" itemprop="url">
		            <span itemprop="title">Phone</span>
		        </a>
		    </span>
		    <span class="delimiter">/</span>
		</li>
        <li>
            <strong class="current-item">Apple MacBook Pro 13-inch</strong>
        </li>
    </ul>
</div>