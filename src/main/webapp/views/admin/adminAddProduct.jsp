<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>P2TS Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <link rel="stylesheet" href="fonts/hkgrotesk/stylesheet.2e9c9834.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel/assets/owl.carousel.css">
    <!-- Lightbox -->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/glightbox/css/glightbox.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/css/style.default.7acfaf01.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/css/custom.0a822280.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Leaflet CSS - For the map-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.4.0/leaflet.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/solid.css" integrity="sha384-TbilV5Lbhlwdyc4RuIV/JhD8NR+BfMrvz4BL5QFa2we1hQu6wvREr3v6XSRfCTRp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/regular.css" integrity="sha384-avJt9MoJH2rB4PKRsJRHZv7yiFZn8LrnXuzvmZoD3fh1aL6aM6s0BBcnCvBe6XSD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/brands.css" integrity="sha384-7xAnn7Zm3QC1jFjVc1A6v/toepoG3JXboQYzbM0jrPzou9OFXm/fY6Z/XiIebl/k" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/fontawesome.css" integrity="sha384-ozJwkrqb90Oa3ZNb+yKFW2lToAWYdTiF1vt8JiH5ptTGHTGcN7qdoR1F95e0kYyG" crossorigin="anonymous">
  </head>
  <body>
   <!-- Begin Header-->
   <%@ include file="/commons/admin/headerAdmin.jsp" %>;
    <!-- End Header-->
    
    <section class="hero">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/home">Trang chủ</a></li>
          <li class="breadcrumb-item active">Thêm sản phẩm</li>
        </ol>
        <!-- Hero Content-->
        <div class="hero-content text-center">
          <h1 class="hero-heading">Thêm sản phẩm</h1>
          <div class="row">   
            <div class="col-xl-8 offset-xl-2"><p class="lead text-muted">Thêm các thông tin về sản phẩm mới của bạn ở đây</p></div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-5">
      <div class="container">
                <!-- Begin Add products -->
                <div class="tab-pane px-3" id="additional-information" role="tabpanel">
                    <div class="row">
                        <div class="col-md-7 mb-5 mb-md-0">
                            <form class="form" id="edit-form" method="post" action="contact.php">
                                <div class="controls">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="mb-4">
                                                <label class="form-label" for="category">Danh mục</label>
                                                <select class="form-control" name="category" id="category" required>
                                                    <option value="" class="text-muted">Chọn danh mục</option>
                                                    <option value="AKDR">Áo khoác dáng rộng</option>
                                                    <option value="AKDV">Áo khoác dáng vừa</option>
                                                    <option value="AKT">Áo khoác trơn</option>
                                                    <option value="QSJ">Quần Short Jean</option>
                                                    <option value="QSTM">Quần Short thun mát</option>
                                                    <option value="QT">Quần Tây</option>
                                                    <option value="ASMTD">Áo sơ mi tay dài</option>
                                                    <option value="ASMTN">Áo sơ mi tay ngắn</option>
                                                    <option value="APL">Áo Polo</option>
                                                    <option value="AT">Áo thun</option>
                                                </select>
                                            </div>
                                            <div class="mb-4">
                                                <label class="form-label" for="price">Giá *</label>
                                                <input class="form-control" type="text" name="price" id="price" placeholder="Nhập giá sản phẩm" required>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="mb-4">
                                                <label class="form-label" for="productname">Tên sản phẩm *</label>
                                                <input class="form-control" type="text" name="productname" id="productname" placeholder="Nhập tên sản phẩm" required>
                                            </div>
                                            <div class="mb-4">
                                                <label class="form-label" for="color">Màu sắc *</label>
                                                <input class="form-control" type="text" name="color" id="color" placeholder="Nhập màu sắc sản phẩm" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="size-quantity-container"></div>
                                    
                                    <button type="button" class="btn btn-outline-dark my-3" onclick="addSizeQuantity()">Thêm Size</button>
                                    
                                    <div id="notification" class="alert alert-danger d-none" role="alert">
                                        Bạn chỉ có thể thêm tối đa 4 size.
                                    </div>
                
                                    <div class="mb-4">
                                        <label class="form-label" for="description">Mô tả sản phẩm *</label>
                                        <textarea class="form-control" rows="4" name="description" id="description" placeholder="Nhập mô tả sản phẩm" required></textarea>
                                    </div>
                                    <div class="mb-4">
                                        <label class="form-label" for="image">Tải lên tệp hình ảnh sản phẩm *</label>
                                        <input class="form-control" type="file" name="image[]" id="image" accept="image/*" multiple required>
                                    </div>
                                    <div class="d-flex justify-content-center my-lg-5">
                                        <button class="btn btn-outline-dark" type="submit">Lưu thay đổi</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-5">
                            <div class="py-3 order-2 order-lg-1">
                                <div class="owl-carousel owl-theme owl-dots-modern detail-full" data-slider-id="1">
                                    <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-1.jpg) no-repeat; background-size: cover;"></div>
                                    <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-2.jpg) no-repeat; background-size: cover;"></div>
                                    <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-3.jpg) no-repeat; background-size: cover;"></div>
                                    <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-594535-unsplash-detail-3.jpg) no-repeat; background-size: cover;"></div>
                                    <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-594535-unsplash-detail-4.jpg) no-repeat; background-size: cover;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <script>
                    let sizeCount = 0;
                
                    function addSizeQuantity() {
                        const notification = document.getElementById('notification');
                
                        if (sizeCount >= 4) {
                            notification.classList.remove('d-none'); // Hiện thông báo
                            return;
                        } else {
                            notification.classList.add('d-none'); // Ẩn thông báo nếu có
                        }
                
                        sizeCount++;
                        const container = document.getElementById('size-quantity-container');
                
                        const sizeDiv = document.createElement('div');
                        sizeDiv.classList.add('row', 'mb-4');
                        sizeDiv.innerHTML = `
                            <div class="col-sm-6">
                                <label class="form-label" for="size-${sizeCount}">Chọn size</label>
                                <select class="form-control" name="size[]" id="size-${sizeCount}" required>
                                    <option value="">Chọn size</option>
                                    <option value="S">S</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                    <option value="XL">XL</option>
                                </select>
                            </div>
                            <div class="col-sm-6">
                                <label class="form-label" for="quantity-${sizeCount}">Số lượng</label>
                                <input class="form-control" type="number" name="quantity[]" id="quantity-${sizeCount}" placeholder="Nhập số lượng" required>
                            </div>
                        `;
                        container.appendChild(sizeDiv);
                    }
                </script>
                <!-- End Add products -->
            </div>
  </section>
  <!-- Begin Footer-->
   <%@ include file="/commons/admin/footer.jsp" %>
    <!-- EndFoot er-->
    
    <div id="scrollTop"><i class="fa fa-long-arrow-alt-up"></i></div>
    <button class="btn btn-primary btn-sm d-none d-lg-block" type="button" data-bs-toggle="collapse" data-bs-target="#style-switch" id="style-switch-button"><i class="fa fa-cog fa-2x"></i></button>
    <div class="collapse" id="style-switch">
      <div class="p-3">
        <h6 class="text-uppercase mb-4">Select theme colour</h6>
        <form class="mb-3">
          <select class="form-select style-switch-select" name="colour" id="colour">
            <option value="">select colour variant</option>
            <option value="css/style.default.7acfaf01.css">blue</option>
            <option value="css/style.pink.bcb9f645.css">pink</option>
            <option value="css/style.green.eba38840.css">green</option>
            <option value="css/style.red.e64fe507.css">red</option>
            <option value="css/style.violet.00703a6d.css">violet</option>
          </select>
        </form>
        <p class="text-muted text-sm">Stylesheet switching is done with JavaScript and can cause a blink while page loads. This will not happen in your production code.</p>
      </div>
    </div>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }
      // this is set to Bootstrapious website as you cannot 
      // inject local SVG sprite (using only 'icons/orion-svg-sprite.a4dea202.svg' path)
      // while using file:// protocol
      // pls don't forget to change to your domain :)
      injectSvgSprite('${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/1-2-0/icons/orion-svg-sprite.svg'); 
      
    </script>
    <!-- jQuery-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JavaScript Bundle (Popper.js included)-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Owl Carousel-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel/owl.carousel.js"></script>
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <!-- NoUI Slider (price slider)-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/nouislider/nouislider.min.js"></script>
    <!-- Smooth scrolling-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Lightbox gallery-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/glightbox/js/glightbox.min.js"> </script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/object-fit-images/ofi.min.js"></script>
    <script>var basePath = '${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/'</script>
    <script src="js/theme.30e7c8f9.js"></script>
    <!-- Leaflet Map library-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.4.0/leaflet.js"> </script>
    <!-- Map config-->
    <script>
      var mapId = 'map',
          mapCenter = [53.14, 8.22],
          mapMarker = true;
    </script>
    <!-- Map init-->
    <script src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/map.aae93aaf.js"></script>
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/demo.9833433a.js"></script>
  </body>
</html>