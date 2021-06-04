<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 04.06.2021
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MWbud - panel admina - produkty</title>
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
                                <li class="breadcrumb-item active" aria-current="page">Admin</li>
                                <li class="breadcrumb-item active" aria-current="page">Produkty</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- breadcrumb area end --><!-- my account wrapper start -->
    <div class="my-account-wrapper section-padding">
        <div class="container">
            <div class="section-bg-color">
                <div class="row">
                    <div class="col-lg-12"><!-- My Account Page Start -->
                        <div class="myaccount-page-wrapper"><!-- My Account Tab Menu Start -->
                            <div class="row">
                                <div class="col-lg-3 col-md-4">
                                    <div class="myaccount-tab-menu nav" role="tablist">
                                        <a href="/shop/admin"<%--data-toggle="tab"--%>>
                                            <i class="fa fa-dashboard"></i> Panel admina</a>
                                        <a href="/shop/admin/orders"<%--data-toggle="tab"--%>>
                                            <i class="fa fa-cart-arrow-down"></i> Zamówienia</a>
                                        <a href="/shop/admin/products" class="active" <%--data-toggle="tab"--%>> Produkty</a>
                                        <a href="/shop/admin/addProduct" <%--data-toggle="tab"--%>> Dodaj produkt</a>
                                    </div>
                                </div><!-- My Account Tab Menu End --><!-- My Account Tab Content Start -->
                                <div class="col-lg-9 col-md-8">
                                    <div class="tab-content" id="myaccountContent"><!-- Single Tab Content Start -->
                                        <div <%--class="tab-pane fade"--%> id="orders" role="tabpanel">
                                            <div class="myaccount-content"><h5>Produkty</h5>
                                                <div class="cart-table table-responsive text-center">
                                                    <table class="table table-bordered">
                                                        <thead>
                                                        <tr>
                                                            <th class="pro-thumbnail">Zdjęcie</th>
                                                            <th class="pro-title">Nazwa prodkutu</th>
                                                            <th class="pro-price">Cena</th>
                                                            <th class="pro-title">Dostępność</th>
                                                            <th class="pro-quantity">Edycja</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach items="${products}" var="product">
                                                            <tr>
                                                                <td class="pro-thumbnail">
                                                                    <img class="img-fluid" src="${product.srcImage}" alt="${product.altImage}"/>
                                                                </td>
                                                                <td class="pro-title">
                                                                    <a>${product.name}</a>
                                                                </td>
                                                                <td class="pro-price">
                                                                    <span>${product.price} zł</span>
                                                                </td>
                                                                <td class="pro-title">
                                                                    <span>${product.isAvailable()}</span>
                                                                </td>
                                                                <td class="pro-quantity">
                                                                    <a href="/shop/admin/products/edit/${product.id}" class="btn btn-sqr">Edycja</a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div><!-- Single Tab Content End --><!-- Single Tab Content Start -->

<%--                                        <div &lt;%&ndash;class="tab-pane fade"&ndash;%&gt; id="orders" role="tabpanel">--%>
<%--                                            <div class="myaccount-content"><h5>Zamówienia</h5>--%>
<%--                                                <div class="myaccount-table table-responsive text-center">--%>
<%--                                                    <table class="table table-bordered">--%>
<%--                                                        <thead class="thead-light">--%>
<%--                                                        <tr>--%>
<%--                                                            <th>Dane zamawiającego</th>--%>
<%--                                                            <th>Data zamówienia</th>--%>
<%--                                                            <th>Status</th>--%>
<%--                                                            <th>Cena całkowita</th>--%>
<%--                                                            <th>Detale i edycja</th>--%>
<%--                                                        </tr>--%>
<%--                                                        </thead>--%>
<%--                                                        <tbody>--%>
<%--                                                        <c:forEach items="${shoppingCarts}" var="shoppingCart">--%>
<%--                                                            <tr>--%>
<%--                                                                <td>${shoppingCart.customerDetails.firstName},--%>
<%--                                                                        ${shoppingCart.customerDetails.lastName},--%>
<%--                                                                        ${shoppingCart.customerDetails.postcode},--%>
<%--                                                                        ${shoppingCart.customerDetails.town},--%>
<%--                                                                        ${shoppingCart.customerDetails.streetAddress},--%>
<%--                                                                        ${shoppingCart.customerDetails.email},--%>
<%--                                                                        ${shoppingCart.customerDetails.phone}--%>
<%--                                                                </td>--%>
<%--                                                                <td>${shoppingCart.dateOfOrder}</td>--%>
<%--                                                                <td>${shoppingCart.status}</td>--%>
<%--                                                                <td>${shoppingCart.totalPriceWithShipping} zł</td>--%>
<%--                                                                <td><a href="/shop/admin/orders/details/${shoppingCart.id}" class="btn btn-sqr">Detale</a>--%>
<%--                                                                    <a href="/shop/admin/orders/edit/${shoppingCart.id}" class="btn btn-sqr">Edycja</a>--%>
<%--                                                                </td>--%>
<%--                                                            </tr>--%>
<%--                                                        </c:forEach>--%>
<%--                                                        </tbody>--%>
<%--                                                    </table>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div><!-- Single Tab Content End --><!-- Single Tab Content Start -->--%>
                                    </div>
                                </div><!-- My Account Tab Content End -->
                            </div>
                        </div><!-- My Account Page End -->
                    </div>
                </div>
            </div>
        </div>
    </div><!-- my account wrapper end -->
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
