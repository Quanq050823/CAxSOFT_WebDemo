<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="includes/header.jsp" %>

  <main class="main">


    <div class="vidcontainer">
        <video autoplay loop muted playsinline class="background-clip">
          <source src="assets/video/video-NX.mp4" type="video/mp4">
        </video>
      <div class="content">
        <h1>Siemens NX</h1>
        <h2>Flexible - Highly Effective</h2>
      </div>
    </div>

    <!-- Pagination 2 Section -->
<%--    <section id="pagination-2" class="pagination-2">--%>
<%--      <div class="container">--%>
<%--        <div class="d-flex">--%>
<%--          <div class="box">--%>
<%--            <h1>70%</h1>--%>
<%--            <h5>Giảm 70% thời gian gia công nhờ công nghệ Adaptive Miling</h5>--%>
<%--          </div>--%>
<%--          <div class="box">--%>
<%--            <h1>70%</h1>--%>
<%--            <h5>Giảm 70% thời gian gia công nhờ công nghệ Adaptive Miling</h5>--%>
<%--          </div>--%>
<%--          <div class="box">--%>
<%--            <h1>100%</h1>--%>
<%--            <h5>An toàn dựa trên khả năng mô phỏng NC code tích hợp mô hình máy và hệ điều khiển CNC</h5>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>

<%--    </section>--%>
    <!-- /Pagination 2 Section -->
    <section id="faq" class="faq section">

      <div class="container-fluid">

        <div class="row gy-4">

          <div class="col-lg-7 d-flex flex-column justify-content-center order-2 order-lg-1">

            <div class="content px-xl-5" data-aos="fade-up" data-aos-delay="100">
              <h3><span>Phần mềm </span><strong>NX</strong></h3>
              <p>
                Siemens NX CAD là một công cụ CAD/CAM/CAE toàn diện, hỗ trợ từ thiết kế, gia công đến quản lý dữ liệu sản phẩm và quá trình sản xuất.
              </p>
            </div>

            <div class="faq-container px-xl-5" data-aos="fade-up" data-aos-delay="200">
              <div class="faq-item">
                <i class="faq-icon bi bi-question-circle"></i>
                <h3>NX CAD</h3>
                <div class="faq-content">
                  <p>Công nghệ đồng bộ (Synchronous Technology): Đây là tính năng nổi bật của Siemens NX, giúp người dùng dễ dàng chỉnh sửa mô hình 3D mà không cần phải loại bỏ lịch sử thiết kế. Đồng thời Siemens NX hỗ trợ mô hình hóa thông minh, cho phép người dùng tạo và quản lý các mô hình sản phẩm với độ phức tạp cao.</p>
                </div>
                <i class="faq-toggle bi bi-chevron-right"></i>
              </div><!-- End Faq item-->

              <div class="faq-item">
                <i class="faq-icon bi bi-question-circle"></i>
                <h3>NX MOLD</h3>
                <div class="faq-content">
                  <p>NX MOLD là một công cụ mạnh mẽ trong việc thiết kế, cung cấp các công cụ mô phỏng để đánh giá hiệu suất của khuôn trước khi sản xuất và thư viện khuôn đa dạng.</p>
                </div>
                <i class="faq-toggle bi bi-chevron-right"></i>
              </div><!-- End Faq item-->

              <div class="faq-item">
                <i class="faq-icon bi bi-question-circle"></i>
                <h3>NX</h3>
                <div class="faq-content">
                  <p>NX cung cấp các công cụ mạnh mẽ để lập trình gia công đa trục cho nhiều loại máy khác nhau. Với việc tích hợp mô phỏng NC code với mô hình máy và hệ điều khiển CNC, doanh nghiệp không cần đầu tư thêm giải pháp phần mềm mô phỏng từ bên thứ ba. Thư viện postprocessor và shopdoc phù hợp cho từng dòng máy CNC. </p>
                </div>
                <i class="faq-toggle bi bi-chevron-right"></i>
              </div><!-- End Faq item-->
            </div>
          </div>

          <div class="col-lg-5 order-1 order-lg-2">
            <img src="assets/img/img-NX.jpg" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100">
          </div>
        </div>

      </div>

    </section><!-- /Faq Section -->


  </main>

<%@ include file="includes/footer.jsp" %>