<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 30.05.2021
  Time: 16:20
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
    <title>MWbud - wybór dostawy</title>
    <meta name="robots" content="noindex, follow"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><!-- Favicon -->
    <!-- CSS	============================================ --><!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/vendor/bootstrap.min.css"/>">
    <!-- Pe-icon-7-stroke CSS -->
    <link rel="stylesheet"
          href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/vendor/pe-icon-7-stroke.css"/>">
    <!-- Font-awesome CSS -->
    <link rel="stylesheet"
          href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/vendor/font-awesome.min.css"/>">
    <!-- Slick slider css -->
    <link rel="stylesheet"
          href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/plugins/slick.min.css"/>">
    <!-- animate css -->
    <link rel="stylesheet"
          href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/plugins/animate.css"/>">
    <!-- Nice Select css -->
    <link rel="stylesheet"
          href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/plugins/nice-select.css"/>">
    <!-- jquery UI css -->
    <link rel="stylesheet"
          href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/plugins/jqueryui.min.css"/>">
    <!-- main style css -->
    <link rel="stylesheet"
          href="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/css/style.css"/>">
</head>
<%--<style>--%>
<%--    .errors {--%>
<%--        color: red;--%>
<%--    }--%>
<%--</style>--%>
<body><!-- Start Header Area -->
<%@ include file="header.jsp" %>

<main><!-- breadcrumb area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/index"><i class="fa fa-home"></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">Wybór dostawy</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- breadcrumb area end --><!-- cart main wrapper start -->
    <div class="cart-main-wrapper section-padding">
        <div class="container">
            <div class="section-bg-color">
                <div class="row">
                    <div class="col-lg-12"><!-- Cart Table Area -->
                        <div class="cart-table table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th class="pro-thumbnail">Pole wyboru dostawy</th>
                                </tr>
                                </thead>
                            </table>
                        </div><!-- Cart Update Option -->
                        <div class="cart-update-option d-block d-md-flex justify-content-between">
                            <div class="apply-coupon-wrapper">
                                <form method="post" action="/shop/chooseShipping" class=" d-block d-md-flex">
                                    <ul class="shipping-type">
                                        <li>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" value="false" name="shipping" class="custom-control-input" id="shipping_false"/>
                                                <label class="custom-control-label" for="shipping_false">Bez dostawy</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="custom-control custom-radio">
                                                <input type="radio" value="true" name="shipping" class="custom-control-input" id="shipping_true"/>
                                                <label class="custom-control-label" for="shipping_true">Dostawa 50 zł</label>
                                            </div>
                                        </li>
                                    </ul>
                                    <button type="submit" class="btn btn-sqr">Potwierdź dostawę</button>
                                </form>

<%--                                Formularz z bindowaniem z radiobutton lub checkbox nie działał, chyba kwestia szablonu--%>

<%--                                <form:form method="post" action="/shop/chooseShipping" modelAttribute="shippingPojo"--%>
<%--                                           class=" d-block d-md-flex">--%>
<%--                                    <form:radiobutton path="isShipping" value="true"/>--%>
<%--                                    <form:radiobutton path="isShipping" value="false"/>--%>

<%--                                    <form:checkbox path="isShipping"/>--%>
<%--                                    <form:errors path="isShipping" cssClass="errors"/>--%>
<%--                                    <button type="submit" class="btn btn-sqr">Potwierdź dostawę</button>--%>
<%--                                </form:form>--%>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5 ml-auto"><!-- Cart Calculation Area -->
                        <div class="cart-calculator-wrapper">
                            <div class="cart-calculate-items"><h6>Podsumowanie koszyka</h6>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <td>Cena całkowita koszyka</td>
                                            <td>${shoppingCart.totalPrice} zł</td>
                                        </tr>
                                        <tr>
                                            <td>Dostawa</td>
                                            <td>${shoppingCart.totalPriceWithShipping - shoppingCart.totalPrice} zł</td>
                                        </tr>
                                        <tr class="total">
                                            <td>Cena całkowita koszyka z dostawą</td>
                                            <td class="total-amount">${shoppingCart.totalPriceWithShipping} zł</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <a href="/shop/chooseShipping" class="btn btn-sqr d-block">Przejdź do danych zamawiającego i
                                płatności</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- cart main wrapper end -->
</main><!-- Scroll to top start -->
<div class="scroll-top not-visible"><i class="fa fa-angle-up"></i></div><!-- Scroll to Top End -->

<!-- footer area start -->
<%@ include file="footer.jsp" %>

<!-- JS============================================ -->
<!-- Modernizer JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/vendor/modernizr-3.6.0.min.js"/>"></script>
<!-- jQuery JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/vendor/jquery-3.3.1.min.js"/>"></script>
<!-- Popper JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/vendor/popper.min.js"/>"></script>
<!-- Bootstrap JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/vendor/bootstrap.min.js"/>"></script>
<!-- slick Slider JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/slick.min.js"/>"></script>
<!-- Countdown JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/countdown.min.js"/>"></script>
<!-- Nice Select JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/nice-select.min.js"/>"></script>
<!-- jquery UI JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/jqueryui.min.js"/>"></script>
<!-- Image zoom JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/image-zoom.min.js"/>"></script>
<!-- Imagesloaded JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/imagesloaded.pkgd.min.js"/>"></script>
<!-- Instagram feed JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/instagramfeed.min.js"/>"></script>
<!-- mailchimp active js -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/ajaxchimp.js"/>"></script>
<!-- contact form dynamic js -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/ajax-mail.js"/>"></script>
<!-- google map api -->
<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
<!-- google map active js -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/plugins/google-map.js"/>"></script>
<!-- Main JS -->
<script src="<c:url value="${pageContext.request.contextPath}/Corano-template/assets/js/main.js"/>"></script>
</body>
</html>