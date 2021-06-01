<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 25.05.2021
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
                        <div class="logo"><a href="/index"><img src="<c:url value="/Corano-template/assets/img/logo/MWbud.jpg"/>" alt="MWbud Logo"></a>
                        </div>
                    </div><!-- start logo area --><!-- main menu area start -->
                    <div class="col-lg-6 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu"><!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li class="active"><a href="/index">Strona główna</a>
                                        </li>
                                        <li class="position-static"><a>Strony <i
                                                class="fa fa-angle-down"></i></a>
                                            <ul class="megamenu dropdown">
                                                <li class="mega-title"><span>Kolumna 01</span>
                                                    <ul>
                                                        <li><a href="/shop/productlist">Lista produktów</a></li>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><span>Kolumna 02</span>
                                                    <ul>
                                                        <li><a href="/shop/productdetails/1">Detale produktu</a></li>
                                                    </ul>
                                                </li>
                                                <li class="mega-title"><span>Kolumna 03</span>
                                                    <ul>
                                                        <li><a href="/shop/cart">Koszyk</a></li>
                                                        <li><a href="/shop/chooseShipping">Wybór dostawy</a></li>
                                                        <li><a href="/shop/checkout">Dane zamawiającego i płatności</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="/shop/productlist">Sklep <i class="fa fa-angle-down"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="/shop/productlist">lista produktów <i class="fa fa-angle-right"></i></a>
                                                    <ul class="dropdown">
                                                        <li><a href="/shop/productlist">Lista produktów</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="/shop/productdetails/1">Detale produktu <i class="fa fa-angle-right"></i></a>
                                                    <ul class="dropdown">
                                                        <li><a href="/shop/productdetails/1">Detale produktu</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav><!-- main menu navbar end -->
                            </div>
                        </div>
                    </div><!-- main menu area end --><!-- mini cart area start -->
                    <div class="col-lg-4">
                        <div class="header-right d-flex align-items-center justify-content-lg-end">
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end">
                                    <li><a href="#" class="minicart-btn"><i class="pe-7s-shopbag"></i>
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                    </div><!-- mini cart area end -->
                </div>
            </div>
        </div><!-- header middle area end -->
    </div><!-- main header start -->
</header><!-- end Header Area -->