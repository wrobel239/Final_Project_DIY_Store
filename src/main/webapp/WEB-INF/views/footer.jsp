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
                <div class="minicart-button"><a href="/shop/cart"><i class="fa fa-shopping-cart"></i>Koszyk</a><a
                        href="cart.html"><i class="fa fa-share"></i>Dane zamawiającego i płatności</a></div>
            </div>
        </div>
    </div>
</div><!-- offcanvas mini cart end --><!-- JS============================================ --><!-- Modernizer JS -->