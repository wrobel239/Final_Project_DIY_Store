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
<header class="header-area header-wide"><!-- main header start -->
    <div class="main-header d-none d-lg-block"><!-- header top start -->
        <div class="header-top bdr-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="welcome-message"><p>Witamy w MWbud markecie budowlanym online</p></div>
                    </div>
                    <div class="col-lg-6 text-right">
                    </div>
                </div>
            </div>
        </div><!-- header top end --><!-- header middle area start -->
        <div class="header-main-area header-main-area-border-bottom sticky">
            <div class="container">
                <div class="row align-items-center position-relative"><!-- start logo area -->
                    <div class="col-lg-2">
                        <div class="logo"><a href="index.html"><img src="<c:url value="/Corano-template/assets/img/logo/MWbud.jpg"/>" alt="MWbud Logo"></a>
                        </div>
                    </div><!-- start logo area --><!-- main menu area start -->
                    <div class="col-lg-6 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu"><!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li class="active"><a href="index.html">Strona główna</a>
                                        </li>
                                        <li class="position-static"><a href="#">Strony <i
                                                class="fa fa-angle-down"></i></a>
                                            <ul class="megamenu dropdown">
                                                <li class="mega-title"><span>Kolumna 01</span>
                                                    <ul>
                                                        <li><a href="shop.html">Lista produktów</a></li>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><span>Kolumna 02</span>
                                                    <ul>
                                                        <li><a href="product-details.html">Detale produktu</a></li>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><span>Kolumna 03</span>
                                                    <ul>
                                                        <li><a href="cart.html">Koszyk</a></li>
                                                        <li><a href="checkout.html">Dane zamawiającego i płatności</a></li>
                                                    </ul>
                                                </li>
<%--                                                <li class="mega-title"><span>column 04</span>--%>
<%--                                                    <ul>--%>
<%--                                                        <li><a href="my-account.html">my-account</a></li>--%>
<%--                                                        <li><a href="login-register.html">login-register</a></li>--%>
<%--                                                    </ul>--%>
<%--                                                </li>--%>
                                            </ul>
                                        </li>
                                        <li><a href="shop.html">Sklep <i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="#">lista produktów <i class="fa fa-angle-right"></i></a>
                                                    <ul class="dropdown">
                                                        <li><a href="shop.html">Lista produktów</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Detale produktu <i class="fa fa-angle-right"></i></a>
                                                    <ul class="dropdown">
                                                        <li><a href="product-details.html">Detale produktu</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav><!-- main menu navbar end --></div>
                        </div>
                    </div><!-- main menu area end --><!-- mini cart area start -->
                    <div class="col-lg-4">
                        <div class="header-right d-flex align-items-center justify-content-lg-end">
<%--                            <div class="header-search-container">--%>
<%--                                <button class="search-trigger d-xl-none d-lg-block"><i class="pe-7s-search"></i>--%>
<%--                                </button>--%>
<%--                                <form class="header-search-box d-lg-none d-xl-block animated jackInTheBox"><input--%>
<%--                                        type="text" placeholder="Search entire store hire" class="header-search-field">--%>
<%--                                    <button class="header-search-btn"><i class="pe-7s-search"></i></button>--%>
<%--                                </form>--%>
<%--                            </div>--%>
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end">
<%--                                    <li class="user-hover"><a href="#"><i class="pe-7s-user"></i></a>--%>
<%--                                        <ul class="dropdown-list">--%>
<%--                                            <li><a href="login-register.html">login</a></li>--%>
<%--                                            <li><a href="login-register.html">register</a></li>--%>
<%--                                            <li><a href="my-account.html">my account</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </li>--%>
                                    <li><a href="#" class="minicart-btn"><i class="pe-7s-shopbag"></i>
<%--                                        <div class="notification">2</div>--%>
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                    </div><!-- mini cart area end --></div>
            </div>
        </div><!-- header middle area end -->
    </div><!-- main header start -->
</header><!-- end Header Area -->
<main><!-- hero slider area start -->
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
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
                            <figure class="banner-statistics"><a href="#"><img src="<c:url value="/Corano-template/assets/img/products/kosiarka_spalinowa.jpg"/>"
                                                                               alt="kosiarka spalinowa banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Kosiarka spalinowa</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start --><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="#"><img src="<c:url value="/Corano-template/assets/img/products/welna_skalna.jpg"/>"
                                                                               alt="Wełna skalna banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Wełna skalna</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start --><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="#"><img src="<c:url value="/Corano-template/assets/img/products/fotel_ogrodowy.jpg"/>"
                                                                               alt="fotel ogrodowy banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Fotel ogrodowy</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start --><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="#"><img src="<c:url value="/Corano-template/assets/img/products/drzwi_dab.jpg"/>"
                                                                               alt="drzwi dąb banner"></a>
                                <div class="banner-content banner-content_style2"><h5 class="banner-text3"><p>Drzwi dąb</p>
                                </h5></div>
                            </figure>
                        </div><!-- banner single slide start --><!-- banner single slide start -->
                        <div class="banner-slide-item">
                            <figure class="banner-statistics"><a href="#"><img src="<c:url value="/Corano-template/assets/img/products/zestaw_toaletowy.jpg"/>"
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
<footer class="footer-widget-area">
    <div class="footer-top section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="widget-item">
                        <div class="widget-title">
                            <div class="widget-logo"><a href="index.html"><img src="<c:url value="/Corano-template/assets/img/logo/MWbud.jpg"/>"
                                                                               alt="MWbud logo"></a></div>
                        </div>
                        <div class="widget-body"><p>Jesteśmy marketem budowlanym stawiającym za cel posiadanie najlepszej jakości
                            asortymentu</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="widget-item"><h6 class="widget-title">Kontakt</h6>
                        <div class="widget-body">
                            <address class="contact-block">
                                <ul>
                                    <li><i class="pe-7s-home"></i>55-220 Jelcz-Laskowice Polska</li>
                                    <li><i class="pe-7s-home"></i>ul. Reagana 77</li>
                                    <li><i class="pe-7s-call"></i>(+48) 000 000 000</li>
                                </ul>
                            </address>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="widget-item"><h6 class="widget-title">Informacje</h6>
                        <div class="widget-body">
                            <ul>
                                <li>Godziny otwarcia: </li>
                                <li>poniedziałek - sobota: 8:00 - 20:00</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center mt-20">
                <div class="col-md-6">
                    <div class="footer-payment"><img src="<c:url value="/Corano-template/assets/img/payment.png"/>" alt="sposoby płatności"></div>
                </div>
            </div>
        </div>
    </div>
</footer><!-- footer area end --><!-- Quick view modal start -->
<%--może się jeszcze kiedyś przyda--%>
<%--<div class="modal" id="quick_view">--%>
<%--    <div class="modal-dialog modal-lg modal-dialog-centered">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <button type="button" class="close" data-dismiss="modal">&times;</button>--%>
<%--            </div>--%>
<%--            <div class="modal-body"><!-- product details inner end -->--%>
<%--                <div class="product-details-inner">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-lg-5">--%>
<%--                            <div class="product-large-slider">--%>
<%--                                <div class="pro-large-img img-zoom"><img--%>
<%--                                        src="assets/img/product/product-details-img1.jpg" alt="product-details"/></div>--%>
<%--                                <div class="pro-large-img img-zoom"><img--%>
<%--                                        src="assets/img/product/product-details-img2.jpg" alt="product-details"/></div>--%>
<%--                                <div class="pro-large-img img-zoom"><img--%>
<%--                                        src="assets/img/product/product-details-img3.jpg" alt="product-details"/></div>--%>
<%--                                <div class="pro-large-img img-zoom"><img--%>
<%--                                        src="assets/img/product/product-details-img4.jpg" alt="product-details"/></div>--%>
<%--                                <div class="pro-large-img img-zoom"><img--%>
<%--                                        src="assets/img/product/product-details-img5.jpg" alt="product-details"/></div>--%>
<%--                            </div>--%>
<%--                            <div class="pro-nav slick-row-10 slick-arrow-style">--%>
<%--                                <div class="pro-nav-thumb"><img src="assets/img/product/product-details-img1.jpg"--%>
<%--                                                                alt="product-details"/></div>--%>
<%--                                <div class="pro-nav-thumb"><img src="assets/img/product/product-details-img2.jpg"--%>
<%--                                                                alt="product-details"/></div>--%>
<%--                                <div class="pro-nav-thumb"><img src="assets/img/product/product-details-img3.jpg"--%>
<%--                                                                alt="product-details"/></div>--%>
<%--                                <div class="pro-nav-thumb"><img src="assets/img/product/product-details-img4.jpg"--%>
<%--                                                                alt="product-details"/></div>--%>
<%--                                <div class="pro-nav-thumb"><img src="assets/img/product/product-details-img5.jpg"--%>
<%--                                                                alt="product-details"/></div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-7">--%>
<%--                            <div class="product-details-des">--%>
<%--                                <div class="manufacturer-name"><a href="product-details.html">HasTech</a></div>--%>
<%--                                <h3 class="product-name">Handmade Golden Necklace</h3>--%>
<%--                                <div class="ratings d-flex"><span><i class="fa fa-star-o"></i></span><span><i--%>
<%--                                        class="fa fa-star-o"></i></span><span><i--%>
<%--                                        class="fa fa-star-o"></i></span><span><i--%>
<%--                                        class="fa fa-star-o"></i></span><span><i class="fa fa-star-o"></i></span>--%>
<%--                                    <div class="pro-review"><span>1 Reviews</span></div>--%>
<%--                                </div>--%>
<%--                                <div class="price-box"><span class="price-regular">$70.00</span><span class="price-old"><del>$90.00</del></span>--%>
<%--                                </div>--%>
<%--                                <h5 class="offer-text"><strong>Hurry up</strong>! offer ends in:</h5>--%>
<%--                                <div class="product-countdown" data-countdown="2019/09/20"></div>--%>
<%--                                <div class="availability"><i class="fa fa-check-circle"></i><span>200 in stock</span>--%>
<%--                                </div>--%>
<%--                                <p class="pro-desc">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam--%>
<%--                                    nonumy eirmod tempor invidunt ut labore et dolore magna.</p>--%>
<%--                                <div class="quantity-cart-box d-flex align-items-center"><h6 class="option-title">--%>
<%--                                    qty:</h6>--%>
<%--                                    <div class="quantity">--%>
<%--                                        <div class="pro-qty"><input type="text" value="1"></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="action_link"><a class="btn btn-cart2" href="#">Add to cart</a></div>--%>
<%--                                </div>--%>
<%--                                <div class="useful-links"><a href="#" data-toggle="tooltip" title="Compare"><i--%>
<%--                                        class="pe-7s-refresh-2"></i>compare</a><a href="#" data-toggle="tooltip"--%>
<%--                                                                                  title="Wishlist"><i--%>
<%--                                        class="pe-7s-like"></i>wishlist</a></div>--%>
<%--                                <div class="like-icon"><a class="facebook" href="#"><i--%>
<%--                                        class="fa fa-facebook"></i>like</a><a class="twitter" href="#"><i--%>
<%--                                        class="fa fa-twitter"></i>tweet</a><a class="pinterest" href="#"><i--%>
<%--                                        class="fa fa-pinterest"></i>save</a><a class="google" href="#"><i--%>
<%--                                        class="fa fa-google-plus"></i>share</a></div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div><!-- product details inner end --></div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div><!-- Quick view modal end -->--%>
<!-- offcanvas mini cart start -->
<div class="offcanvas-minicart-wrapper">
    <div class="minicart-inner">
        <div class="offcanvas-overlay"></div>
        <div class="minicart-inner-content">
            <div class="minicart-close"><i class="pe-7s-close"></i></div>
            <div class="minicart-content-box">
                <%--może się jeszcze kiedyś przyda--%>
<%--                <div class="minicart-item-wrapper">--%>
<%--                    <ul>--%>
<%--                        <li class="minicart-item">--%>
<%--                            <div class="minicart-thumb"><a href="product-details.html"><img--%>
<%--                                    src="assets/img/cart/cart-1.jpg" alt="product"></a></div>--%>
<%--                            <div class="minicart-content"><h3 class="product-name"><a href="product-details.html">Dozen--%>
<%--                                White Botanical Linen Dinner Napkins</a></h3>--%>
<%--                                <p><span class="cart-quantity">1 <strong>&times;</strong></span><span--%>
<%--                                        class="cart-price">$100.00</span></p></div>--%>
<%--                            <button class="minicart-remove"><i class="pe-7s-close"></i></button>--%>
<%--                        </li>--%>
<%--                        <li class="minicart-item">--%>
<%--                            <div class="minicart-thumb"><a href="product-details.html"><img--%>
<%--                                    src="assets/img/cart/cart-2.jpg" alt="product"></a></div>--%>
<%--                            <div class="minicart-content"><h3 class="product-name"><a href="product-details.html">Dozen--%>
<%--                                White Botanical Linen Dinner Napkins</a></h3>--%>
<%--                                <p><span class="cart-quantity">1 <strong>&times;</strong></span><span--%>
<%--                                        class="cart-price">$80.00</span></p></div>--%>
<%--                            <button class="minicart-remove"><i class="pe-7s-close"></i></button>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <div class="minicart-pricing-box">--%>
<%--                    <ul>--%>
<%--                        <li><span>sub-total</span><span><strong>$300.00</strong></span></li>--%>
<%--                        <li><span>Eco Tax (-2.00)</span><span><strong>$10.00</strong></span></li>--%>
<%--                        <li><span>VAT (20%)</span><span><strong>$60.00</strong></span></li>--%>
<%--                        <li class="total"><span>total</span><span><strong>$370.00</strong></span></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
                <div class="minicart-button"><a href="cart.html"><i class="fa fa-shopping-cart"></i>Koszyk</a><a
                        href="cart.html"><i class="fa fa-share"></i>Dane zamawiającego i płatności</a></div>
            </div>
        </div>
    </div>
</div><!-- offcanvas mini cart end --><!-- JS============================================ --><!-- Modernizer JS -->
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