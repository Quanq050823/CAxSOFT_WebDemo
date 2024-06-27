<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<footer id="footer" class="footer">

    <div class="footer-top">
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-4 col-md-6 footer-about">
                    <a href="index.html" class="logo d-flex align-items-center">
                        <span class="sitename">CAxSOFT</span>
                    </a>
                    <div class="footer-contact pt-3" style="padding-top: 0rem!important">
                        <p>230 Man Thiện, Phường Tăng Nhơn Phú A</p>
                        <p>Thành Phố Thủ Đức, TP.HCM</p>
                        <p class="mt-3"><strong>Phone:</strong> <span>+84 334 617 828</span></p>
                        <p><strong>Email:</strong> <span>manh.lam@caxsoft.com</span></p>
                    </div>
                </div>

                <div class="col-lg-2 col-md-3 footer-links">
                    <h4>DỊCH VỤ</h4>
                    <ul>
                        <li><a href="businessconsultancy.jsp">Tư vấn doanh nghiệp</a></li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-3 footer-links">
                    <h4>ĐÀO TẠO</h4>
                    <ul>
                        <li><a href="corporatetraining.jsp">Đào tạo doanh nghiệp</a></li>
                    </ul>
                </div>
                <div class="mailbox col-lg-2 col-md-3 footer-links" style="margin-left: 100px">
                    <h4>LIÊN HỆ</h4>
                    <form action="email" method="post">
                        <input type="hidden" name="action" value="send">
                        <div class="group">
                            <input type="text" name="businessname" required>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Tên công ty</label>
                        </div>
                        <div class="group">
                            <input type="text" name="customeremail" required>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Email</label>
                        </div>
                        <div class="group">
                            <input type="text" name="phonenum" required>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Số điện thoại</label>
                        </div>
                        <div class="group">
                            <input type="text" name="content" required>
                            <span class="highlight"></span>
                            <span class="bar"></span>
                            <label>Nội dung</label>
                        </div>
                        <button type="submit">Send</button>
                    </form>
                </div>
<%--                <div class="col-lg-2 col-md-3 footer-links">--%>
<%--                    <h4>FANPAGE</h4>--%>
<%--                    <div class="social-links order-first order-lg-last mb-3 mb-lg-0">--%>
<%--                        <a href=""><i class="bi bi-twitter-x"></i></a>--%>
<%--                        <a href=""><i class="bi bi-facebook"></i></a>--%>
<%--                        <a href=""><i class="bi bi-instagram"></i></a>--%>
<%--                        <a href=""><i class="bi bi-linkedin"></i></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
        </div>
    </div>

</footer>

<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Preloader -->
<div id="preloader"></div>

<!-- Vendor JS Files -->
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>

<!-- Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>