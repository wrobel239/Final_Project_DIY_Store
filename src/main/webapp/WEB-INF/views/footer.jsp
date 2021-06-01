<%--
  Created by IntelliJ IDEA.
  User: michal
  Date: 25.05.2021
  Time: 13:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<footer class="footer-widget-area">
    <div class="footer-top section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="widget-item">
                        <div class="widget-title">
                            <div class="widget-logo"><a href="/index"><img src="<c:url value="/Corano-template/assets/img/logo/MWbud.jpg"/>"
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
<!-- offcanvas mini cart start -->
<div class="offcanvas-minicart-wrapper">
    <div class="minicart-inner">
        <div class="offcanvas-overlay"></div>
        <div class="minicart-inner-content">
            <div class="minicart-close"><i class="pe-7s-close"></i></div>
            <div class="minicart-content-box">
                <div class="minicart-button"><a href="/shop/cart"><i class="fa fa-shopping-cart"></i>Koszyk</a>
                    <a href="/shop/chooseShipping">Wybór dostawy</a>
                    <a href="/shop/checkout"><i class="fa fa-share"></i>Dane zamawiającego i płatności</a>
                </div>
            </div>
        </div>
    </div>
</div><!-- offcanvas mini cart end --><!-- JS============================================ --><!-- Modernizer JS -->