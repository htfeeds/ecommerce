<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<div class="page product-details-page">
    <div class="page-body">
        <form action="<c:url value="/" />" id="product-details-form" method="post">
            <div itemscope itemtype="http://schema.org/Product" data-productid="99">
                <div class="product-essential">
                    <!--product pictures-->
                    <tiles:insertAttribute name="productDetailsPictures" />
                    <div class="overview">
                        <div class="product-name">
                            <h1 itemprop="name">
                                Apple MacBook Pro 13-inch
                            </h1>
                        </div>
                        <div class="short-description">
                            A groundbreaking Retina display. A new force-sensing trackpad. All-flash architecture. Powerful dual-core and quad-core Intel processors. Together, these features take the notebook to a new level of performance. And they will do the same for you in everything you create.
                        </div>
                        <!--product reviews-->
                        <!--manufacturers-->
                        <tiles:insertAttribute name="productManufacturers" />
                        <!--availability-->
                        <tiles:insertAttribute name="availability" />
                        <!--SKU, MAN, GTIN, vendor-->
                        <!--delivery-->
                        <!--sample download-->
                        <!--attributes-->
                        <!--gift card-->
                        <!--rental info-->
                        <!--price & add to cart-->
                        <tiles:insertAttribute name="productPrice" />
                        <!--wishlist, compare, email a friend-->
                        <div class="overview-buttons"></div>
                    </div>
                    <div class="full-description" itemprop="description">
                        <p>With fifth-generation Intel Core processors, the latest graphics, and faster flash storage, the incredibly advanced MacBook Pro with Retina display moves even further ahead in performance and battery life.* *Compared with the previous generation.</p>
                        <p>Retina display with 2560-by-1600 resolution</p><p>Fifth-generation dual-core Intel Core i5 processor</p><p>Intel Iris Graphics</p><p>Up to 9 hours of battery life1</p><p>Faster flash storage2</p><p>802.11ac Wi-Fi</p>
                        <p>Two Thunderbolt 2 ports for connecting high-performance devices and transferring data at lightning speed</p><p>Two USB 3 ports (compatible with USB 2 devices) and HDMI</p><p>FaceTime HD camera</p>
                        <p>Pages, Numbers, Keynote, iPhoto, iMovie, GarageBand included</p><p>OS X, the world's most advanced desktop operating system</p>
                    </div>
                </div>
                <div class="product-collateral"></div>
            </div>
        </form>
    </div>
</div>
