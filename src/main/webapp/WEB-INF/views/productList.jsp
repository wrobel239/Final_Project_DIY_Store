<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 25.05.2021
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MWbud - lista produktów</title>
    <meta name="robots" content="noindex, follow"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><!-- Favicon -->
    <!-- CSS	============================================ --><!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/vendor/bootstrap.min.css"/>"><!-- Pe-icon-7-stroke CSS -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/vendor/pe-icon-7-stroke.css"/>"><!-- Font-awesome CSS -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/vendor/font-awesome.min.css"/>"><!-- Slick slider css -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/plugins/slick.min.css"/>"><!-- animate css -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/plugins/animate.css"/>"><!-- Nice Select css -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/plugins/nice-select.css"/>"><!-- jquery UI css -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/plugins/jqueryui.min.css"/>"><!-- main style css -->
    <link rel="stylesheet" href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/style.css"/>">
</head>
<body><!-- Start Header Area -->
<%@ include file="header.jsp"%>

<main><!-- breadcrumb area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/index"><i class="fa fa-home"></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">Lista produktów</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- breadcrumb area end --><!-- page main wrapper start -->
    <div class="shop-main-wrapper section-padding">
        <div class="container">
            <div class="row"><!-- shop main wrapper start -->
                <div class="col-lg-12">
                    <div class="shop-product-wrapper"><!-- shop product top wrap start -->
                        <div class="shop-top-bar">
                            <div class="row align-items-center">
                                <div class="col-lg-7 col-md-6 order-2 order-md-1">
                                    <div class="top-bar-left">
                                        <div class="product-view-mode"><a class="active" href="#"
                                                                          data-target="grid-view" data-toggle="tooltip"
                                                                          title="Grid View"><i class="fa fa-th"></i></a><a
                                                href="#" data-target="list-view" data-toggle="tooltip"
                                                title="List View"><i class="fa fa-list"></i></a></div>
                                        <div class="product-amount"><p>Pokazuje ${productsLength} produktów</p></div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- shop product top wrap start --><!-- product item list wrapper start -->
                        <div class="shop-product-wrap grid-view row mbn-30"><!-- product single item start -->
                            <c:forEach items="${products}" var="product">
                            <div class="col-md-4 col-sm-6"><!-- product grid start -->
                                <div class="product-item">
                                    <figure class="product-thumb">
                                        <a href="/shop/productdetails/${product.id}">
                                            <img class="pri-img" src="${product.srcImage}" alt="${product.altImage}">
                                            <img class="sec-img" src="${product.srcImage}" alt="${product.altImage}">
                                        </a>
                                        <div class="cart-hover">
                                            <button class="btn btn-cart">dodaj do koszyka</button>
                                        </div>
                                    </figure>
                                    <div class="product-caption text-center">
                                        <h6 class="product-name">
                                            <a href="/shop/productdetails/${product.id}">${product.name}</a>
                                        </h6>
                                        <div class="price-box"><span class="price-regular">${product.price} zł</span>
                                        </div>
                                    </div>
                                </div><!-- product grid end --><!-- product list item end -->
                                <div class="product-list-item">
                                    <figure class="product-thumb">
                                        <a href="/shop/productdetails/${product.id}">
                                            <img class="pri-img" src="${product.srcImage}" alt="${product.altImage}">
                                            <img class="sec-img" src="${product.srcImage}" alt="${product.altImage}">
                                        </a>
                                        <div class="cart-hover">
                                            <button class="btn btn-cart">dodaj do koszyka</button>
                                        </div>
                                    </figure>
                                    <div class="product-content-list">
                                        <h5 class="product-name">
                                            <a href="/shop/productdetails/${product.id}">${product.name}</a>
                                        </h5>
                                        <div class="price-box"><span class="price-regular">${product.price} zł</span>
                                        </div>
                                        <p>${product.description}</p>
                                    </div>
                                </div><!-- product list item end -->
                            </div><!-- product single item start -->
                            </c:forEach>
                        </div>
                        <!-- product item list wrapper end --><!-- start pagination area -->
<%--                        <div class="paginatoin-area text-center">--%>
<%--                            <ul class="pagination-box">--%>
<%--                                <li><a class="previous" href="#"><i class="pe-7s-angle-left"></i></a></li>--%>
<%--                                <li class="active"><a href="#">1</a></li>--%>
<%--                                <li><a href="#">2</a></li>--%>
<%--                                <li><a href="#">3</a></li>--%>
<%--                                <li><a class="next" href="#"><i class="pe-7s-angle-right"></i></a></li>--%>
<%--                            </ul>--%>
<%--                        </div><!-- end pagination area -->--%>
                    </div>
                </div><!-- shop main wrapper end -->
            </div>
        </div>
    </div><!-- page main wrapper end -->
</main><!-- Scroll to top start -->
<div class="scroll-top not-visible"><i class="fa fa-angle-up"></i></div><!-- Scroll to Top End -->

<!-- footer area start -->
<%@ include file="footer.jsp"%>

<!-- JS============================================ -->
<!-- Modernizer JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/vendor/modernizr-3.6.0.min.js"/>"></script><!-- jQuery JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/vendor/jquery-3.3.1.min.js"/>"></script><!-- Popper JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/vendor/popper.min.js"/>"></script><!-- Bootstrap JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/vendor/bootstrap.min.js"/>"></script><!-- slick Slider JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/slick.min.js"/>"></script><!-- Countdown JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/countdown.min.js"/>"></script><!-- Nice Select JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/nice-select.min.js"/>"></script><!-- jquery UI JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/jqueryui.min.js"/>"></script><!-- Image zoom JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/image-zoom.min.js"/>"></script><!-- Imagesloaded JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/imagesloaded.pkgd.min.js"/>"></script><!-- Instagram feed JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/instagramfeed.min.js"/>"></script><!-- mailchimp active js -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/ajaxchimp.js"/>"></script><!-- contact form dynamic js -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/ajax-mail.js"/>"></script><!-- google map api -->
<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
<!-- google map active js -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/google-map.js"/>"></script><!-- Main JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/main.js"/>"></script>
</body>
</html>
