<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 22.05.2021
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MWbud - DIY store</title>
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

<main><!-- hero slider area start -->
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/index"><i class="fa fa-home"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- breadcrumb area end --><!-- cart main wrapper start -->
    <div class="service-policy section-padding">
        <div class="container">
            <div class="row mtn-30">
                <div class="col-sm-6 col-lg-3">
                    <div class="policy-item">
                        <div class="policy-icon"><i class="pe-7s-help2"></i></div>
                        <div class="policy-content"><h6>Wsparcie 24/7</h6>
                            <p>Wsparcie 24 godziny na dobę</p></div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="policy-item">
                        <div class="policy-icon"><i class="pe-7s-credit"></i></div>
                        <div class="policy-content"><h6>100% bezpieczeństwa płatności</h6>
                            <p>Zapewniamy bezpieczeństwo płatności</p></div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- service policy area end -->
    <!-- product area start -->
    <section class="product-area section-padding-homepage-products">
        <div class="container">
            <div class="row">
                <div class="col-12"><!-- section title start -->
                    <div class="section-title text-center"><h2 class="title">Nasze produkty</h2>
                        <p class="sub-title">Nasze wybrane produkty</p></div><!-- section title start -->
                </div>
            </div>
        </div>
    </section><!-- product area end --><!-- product banner statistics area start -->
    <section class="product-banner-statistics">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="product-banner-carousel slick-row-10"><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="/shop/productdetails/1"><img src="<c:url value="/Corano-template/assets/img/products/kosiarka_spalinowa.jpg"/>"
                                                                               alt="kosiarka spalinowa banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Kosiarka spalinowa</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start --><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="/shop/productdetails/14"><img src="<c:url value="/Corano-template/assets/img/products/welna_skalna.jpg"/>"
                                                                               alt="Wełna skalna banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Wełna skalna</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start --><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="/shop/productdetails/2"><img src="<c:url value="/Corano-template/assets/img/products/fotel_ogrodowy.jpg"/>"
                                                                               alt="fotel ogrodowy banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Fotel ogrodowy</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start --><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="/shop/productdetails/8"><img src="<c:url value="/Corano-template/assets/img/products/drzwi_dab.jpg"/>"
                                                                               alt="drzwi dąb banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Drzwi dąb</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start --><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="/shop/productdetails/16"><img src="<c:url value="/Corano-template/assets/img/products/zestaw_toaletowy.jpg"/>"
                                                                               alt="zestaw toaletowy banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Zestaw toaletowy</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start -->
                    </div>
                </div>
            </div>
        </div>
    </section><!-- product banner statistics area end -->
    <!-- about us area start -->
    <section class="about-us section-padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="about-thumb"><img src="<c:url value="/Corano-template/assets/img/products/grill_beton.jpg"/>" alt="O nas"></div>
                </div>
                <div class="col-lg-7">
                    <div class="about-content"><h2 class="about-title">O nas</h2><h5 class="about-sub-title">Założony w 2021 roku market
                        budowlany MWbud jest cenionym i nagradzanym dostawcą asortymentu z sektora budowlanego "dom i ogród"
                    </h5>
                        <p>Kupujący głównie klienci detaliczni cenią sobie możliwość zakupów zarówno w markecie w Jelczu-Laskowicach,
                            jak i w sklepie internetowym. Jako jeden z celów naszej działalności jest zapewnienie możliwości
                        dostawy pod konkretny adres wskazany przez klienta</p>
                        <p>Nasz market posiada obecnie w ofercie już 23 pozycje asortymentowe potrzebne do remontu jak i
                        utrzymania domu, ogrodu oraz wyposażenia budowy.</p>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- about us area end --><!-- choosing area start -->
    <div class="choosing-area section-padding pt-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title text-center"><h2 class="title">Dlaczego nas wybrać</h2>
                        </div>
                </div>
            </div>
            <div class="row mbn-30">
                <div class="col-lg-4 col-md-4">
                    <div class="single-choose-item text-center mb-30"><i class="fa fa-plane"></i><h4>Szybka dostawa</h4>
                        <p>Zapewniamy możliwość szybiej dostawy w przeciągu 72 godzin w całej Polsce.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="single-choose-item text-center mb-30"><i class="fa fa-comments"></i><h4>Wsparcie klienta</h4>
                        <p>Zapewniamy doradztwo przy wyborze produktów.</p>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- choosing area end -->
</main><!-- Scroll to top start -->
<div class="scroll-top not-visible"><i class="fa fa-angle-up"></i></div><!-- Scroll to Top End -->

<!-- footer area start -->
<%@ include file="footer.jsp"%>

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