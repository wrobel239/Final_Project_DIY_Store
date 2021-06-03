<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 03.06.2021
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MWbud - panel admina - zamówienia - edycja</title>
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
<style>
    .errors {
        color: red;
    }
</style>
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
                                <li class="breadcrumb-item active" aria-current="page">Zamówienia</li>
                                <li class="breadcrumb-item active" aria-current="page">Edycja</li>
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
                                        <a href="/shop/admin/orders" class="active" <%--data-toggle="tab"--%>>
                                            <i class="fa fa-cart-arrow-down"></i> Zamówienia</a>
                                        <a href="/shop/admin/products" <%--data-toggle="tab"--%>> Produkty</a>
                                        <a href="/shop/admin/addProduct" <%--data-toggle="tab"--%>> Dodaj produkt</a>
                                    </div>
                                </div><!-- My Account Tab Menu End --><!-- My Account Tab Content Start -->
                                <div class="col-lg-9 col-md-8">
                                    <div class="tab-content" id="myaccountContent"><!-- Single Tab Content Start -->
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

                                        <%--                                        to do formularzy--%>

                                        <div <%-- class="tab-pane fade"--%> id="account-info" role="tabpanel">
                                            <div class="myaccount-content"><h5>Edycja danych koszyka</h5>
                                                <div class="account-details-form">
                                                    <form:form method="post" modelAttribute="shoppingCartEditPojo">
<%--                                                        <div class="single-input-item">--%>
<%--                                                            <label for="dateOfRealization">Data realizacji</label>--%>
<%--                                                            <form:input path="dateOfRealization" id="dateOfRealization"/>--%>
<%--                                                            <form:errors path="dateOfRealization" cssClass="errors"/>--%>
<%--                                                        </div>--%>
                                                        <div class="single-input-item">
                                                            <label for="status" class="required">Wybór statusu</label>
                                                            <form:select path="status" items="${statuses}" itemValue="status" itemLabel="description" id="status"/>
                                                            <form:errors path="status" cssClass="errors"/>
                                                        </div>
                                                        <div class="single-input-item">
                                                            <button type="submit" class="btn btn-sqr">Zapisz zmiany</button>
                                                        </div>
                                                    </form:form>

<%--                                                    <form action="#">--%>
<%--                                                        <div class="row">--%>
<%--                                                            <div class="col-lg-6">--%>
<%--                                                                <div class="single-input-item"><label for="first-name"--%>
<%--                                                                                                      class="required">First--%>
<%--                                                                    Name</label><input type="text" id="first-name"--%>
<%--                                                                                       placeholder="First Name"/></div>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="col-lg-6">--%>
<%--                                                                <div class="single-input-item"><label for="last-name"--%>
<%--                                                                                                      class="required">Last--%>
<%--                                                                    Name</label><input type="text" id="last-name"--%>
<%--                                                                                       placeholder="Last Name"/></div>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="single-input-item"><label for="display-name"--%>
<%--                                                                                              class="required">Display--%>
<%--                                                            Name</label><input type="text" id="display-name"--%>
<%--                                                                               placeholder="Display Name"/></div>--%>
<%--                                                        <div class="single-input-item"><label for="email"--%>
<%--                                                                                              class="required">Email--%>
<%--                                                            Addres</label><input type="email" id="email"--%>
<%--                                                                                 placeholder="Email Address"/></div>--%>
<%--                                                        <fieldset>--%>
<%--                                                            <legend>Password change</legend>--%>
<%--                                                            <div class="single-input-item"><label for="current-pwd"--%>
<%--                                                                                                  class="required">Current--%>
<%--                                                                Password</label><input type="password" id="current-pwd"--%>
<%--                                                                                       placeholder="Current Password"/>--%>
<%--                                                            </div>--%>
<%--                                                            <div class="row">--%>
<%--                                                                <div class="col-lg-6">--%>
<%--                                                                    <div class="single-input-item"><label for="new-pwd"--%>
<%--                                                                                                          class="required">New--%>
<%--                                                                        Password</label><input type="password"--%>
<%--                                                                                               id="new-pwd"--%>
<%--                                                                                               placeholder="New Password"/>--%>
<%--                                                                    </div>--%>
<%--                                                                </div>--%>
<%--                                                                <div class="col-lg-6">--%>
<%--                                                                    <div class="single-input-item"><label--%>
<%--                                                                            for="confirm-pwd" class="required">Confirm--%>
<%--                                                                        Password</label><input type="password"--%>
<%--                                                                                               id="confirm-pwd"--%>
<%--                                                                                               placeholder="Confirm Password"/>--%>
<%--                                                                    </div>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </fieldset>--%>
<%--                                                        <div class="single-input-item">--%>
<%--                                                            <button class="btn btn-sqr">Save Changes</button>--%>
<%--                                                        </div>--%>
<%--                                                    </form>--%>
                                                </div>
                                            </div>
                                        </div><!-- Single Tab Content End -->
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
