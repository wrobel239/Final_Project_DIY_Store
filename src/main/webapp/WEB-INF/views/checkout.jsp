<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 31.05.2021
  Time: 13:59
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
    <title>MWbud - dane zamawiającego i płatność</title>
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
                                <li class="breadcrumb-item active" aria-current="page">Dane zamawiającego i płatności</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- breadcrumb area end --><!-- checkout main wrapper start -->
    <div class="checkout-page-wrapper section-padding">
        <div class="container">
<%--            <div class="row"><!-- Checkout Billing Details -->--%>
            <form:form method="post" modelAttribute="customerDetails" action="/shop/checkout">
                <div class="col-lg-12">
                    <div class="checkout-billing-details-wrap"><h5 class="checkout-title">Dane zamawiającego</h5>
                        <div class="billing-form-wrap">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="single-input-item"><label for="f_name" class="required">Imię</label>
                                            <form:input path="firstName" id="f_name" placeholder="Imię"/>
                                            <form:errors path="firstName" cssClass="errors"/>
<%--                                            <input type="text" id="f_name" placeholder="Imię" required/>--%>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="single-input-item"><label for="l_name" class="required">Nazwisko</label>
                                            <form:input path="lastName" id="l_name" placeholder="Nazwisko"/>
                                            <form:errors path="lastName" cssClass="errors"/>
<%--                                            <input type="text" id="l_name" placeholder="Nazwisko" required/>--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-input-item"><label for="email" class="required">Email</label>
                                    <form:input path="email" id="email" placeholder="Email"/>
                                    <form:errors path="email" cssClass="errors"/>
<%--                                    <input type="email" id="email" placeholder="Email" required/>--%>
                                </div>
                                <div class="single-input-item"><label for="com-name">Nazwa firmy(opcjonalnie)</label>
                                    <form:input path="companyName" id="com-name" placeholder="Nazwa firmy"/>
                                    <form:errors path="companyName" cssClass="errors"/>
<%--                                    <input type="text" id="com-name" placeholder="Nazwa firmy"/>--%>
                                </div>
                                <div class="single-input-item"><label for="country" class="required">Kraj</label>
                                    <form:select path="country" items="${countries}" id="country"/>
                                    <form:errors path="country" cssClass="errors"/>
<%--                                    <select name="country nice-select" id="country">--%>
<%--                                    <option value="Afghanistan">Afghanistan</option>--%>
<%--                                    <option value="Albania">Albania</option>--%>
<%--                                    <option value="Algeria">Algeria</option>--%>
<%--                                    <option value="Armenia">Armenia</option>--%>
<%--                                    <option value="Bangladesh">Bangladesh</option>--%>
<%--                                    <option value="India">India</option>--%>
<%--                                    <option value="Pakistan">Pakistan</option>--%>
<%--                                    <option value="England">England</option>--%>
<%--                                    <option value="London">London</option>--%>
<%--                                    <option value="London">London</option>--%>
<%--                                    <option value="Chaina">China</option>--%>
<%--                                    </select>--%>
                                </div>
                                <div class="single-input-item"><label for="street-address" class="required mt-20">Ulica i numer mieszkania</label>
                                    <form:input path="streetAddress" id="street-address" placeholder="Ulica i numer mieszkania"/>
                                    <form:errors path="streetAddress" cssClass="errors"/>
<%--                                    <input type="text" id="street-address" placeholder="Ulica i numer mieszkania" required/>--%>
                                </div>
                                <div class="single-input-item"><label for="town" class="required">Miasto</label>
                                    <form:input path="town" id="town" placeholder="Miasto"/>
                                    <form:errors path="town" cssClass="errors"/>
<%--                                    <input type="text" id="town" placeholder="Miasto" required/>--%>
                                </div>
                                <div class="single-input-item"><label for="state" class="required">Województwo</label>
                                    <form:input path="voivodeship" id="state" placeholder="Województwo"/>
                                    <form:errors path="voivodeship" cssClass="errors"/>
<%--                                    <input type="text" id="state" placeholder="Województwo"/>--%>
                                </div>
                                <div class="single-input-item"><label for="postcode" class="required">Kod pocztowy</label>
                                    <form:input path="postcode" id="postcode" placeholder="Kod pocztowy"/>
                                    <form:errors path="postcode" cssClass="errors"/>
<%--                                    <input type="text" id="postcode" placeholder="Kod pocztowy" required/>--%>
                                </div>
                                <div class="single-input-item"><label for="phone" class="required">Telefon</label>
                                    <form:input path="phone" id="phone" placeholder="Telefon"/>
                                    <form:errors path="phone" cssClass="errors"/>
<%--                                    <input type="text" id="phone" placeholder="Telefon"/>--%>
                                </div>
                                <div class="single-input-item"><label for="ordernote">Dane dostawy (dodatkowe)</label>
                                    <form:textarea path="orderNote" id="ordernote" cols="30" rows="3" placeholder="Dane dodatkowe na temat zamówienia"/>
                                    <form:errors path="orderNote" cssClass="errors"/>
<%--                                    <textarea name="ordernote" id="ordernote" cols="30" rows="3" placeholder="Dane dodatkowe na temat zamówienia"></textarea>--%>
                                </div>
                        </div>
                    </div>
                </div><!-- Order Summary Details -->
                <div class="col-lg-12">
                    <div class="order-summary-details"><h5 class="checkout-title">Podsumowanie</h5>
                        <div class="order-summary-content"><!-- Order Summary Table -->
                            <div class="order-summary-table table-responsive text-center">
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>Produkt</th>
                                        <th>Cena</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${shoppingCart.cartItems}" var="cartItem">
                                    <tr>
                                        <td>
                                                ${cartItem.product.name} <strong>× ${cartItem.quantity}</strong>
                                        </td>
                                        <td>${cartItem.totalPrice} zł</td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td>Cena całkowita</td>
                                        <td><strong>${shoppingCart.totalPrice} zł</strong></td>
                                    </tr>
                                    <tr>
                                        <td>Dostawa</td>
                                        <td><strong>${shoppingCart.totalPriceWithShipping - shoppingCart.totalPrice} zł</strong></td>
                                    </tr>
                                    <tr>
                                        <td>Cena całkowita koszyka z dostawą</td>
                                        <td><strong>${shoppingCart.totalPriceWithShipping} zł</strong></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div><!-- Order Payment Method -->
                            <div class="order-payment-method">
                                <div class="single-payment-method">
                                    <div class="payment-method-name">
                                        <div class="custom-control custom-radio">
                                            <strong>Wspierane płatności:</strong>
                                            <img src="<c:url value="/Corano-template/assets/img/paypal-card.jpg"/>" class="img-fluid paypal-card" alt="Paypal"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-payment-method show">
                                    <div class="payment-method-name">
                                        <div class="single-input-item"><label for="cashon" class="required">Wybór sposobu płatności</label>
                                            <form:select path="typeOfPayment" items="${payments}" itemValue="payment" itemLabel="description" id="cashon"/>
                                            <form:errors path="typeOfPayment" cssClass="errors"/>
                                        </div>
                                    </div>
                                </div>
<%--                                <div class="single-payment-method show">--%>
<%--                                    <div class="payment-method-name">--%>
<%--                                        <div class="custom-control custom-radio"><input type="radio" id="cashon"--%>
<%--                                                                                        name="paymentmethod"--%>
<%--                                                                                        value="cash"--%>
<%--                                                                                        class="custom-control-input"--%>
<%--                                                                                        checked/><label--%>
<%--                                                class="custom-control-label" for="cashon">Cash On Delivery</label></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="single-payment-method">--%>
<%--                                    <div class="payment-method-name">--%>
<%--                                        <div class="custom-control custom-radio"><input type="radio" id="directbank"--%>
<%--                                                                                        name="paymentmethod"--%>
<%--                                                                                        value="bank"--%>
<%--                                                                                        class="custom-control-input"/><label--%>
<%--                                                class="custom-control-label" for="directbank">Direct Bank--%>
<%--                                            Transfer</label></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="single-payment-method">--%>
<%--                                    <div class="payment-method-name">--%>
<%--                                        <div class="custom-control custom-radio"><input type="radio" id="paypalpayment"--%>
<%--                                                                                        name="paymentmethod"--%>
<%--                                                                                        value="paypal"--%>
<%--                                                                                        class="custom-control-input"/><label--%>
<%--                                                class="custom-control-label" for="paypalpayment">Paypal</label></div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <div class="summary-footer-area">
                                    <button type="submit" class="btn btn-sqr">Złóż zamówienie</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form:form>
<%--            </div>--%>
        </div>
    </div><!-- checkout main wrapper end -->
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
