<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Hero Section-->
    <section>
      <!-- Hero Slider-->
      <div class="owl-carousel owl-theme owl-dots-modern home-slider">
        <div class="item d-flex align-items-center" style="background: #f8d5cf;"><img class="bg-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/matheus-ferrero-334418-unsplash.jpg" alt="">
          <div class="container py-6">
            <div class="row">
              <div class="col-lg-8 col-xl-6 mx-auto text-white text-center position-relative">
                <h5 class="text-uppercase text-white fw-light mb-4 letter-spacing-5"> Just arrived</h5>
                <h1 class="mb-5 display-2 fw-bold text-serif">Denim Jackets</h1>
                <p class="lead mb-4">Sẵn sàng nâng cấp phong cách của bạn với những thiết kế cực chất!</p>
                <p> <a class="btn btn-light" href="${pageContext.request.contextPath}/categories">Xem bộ sưu tập</a></p>
              </div>
            </div>
          </div>
        </div>
        <div class="item d-flex align-items-center bg-dark dark-overlay"><img class="bg-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/ian-dooley-347942-unsplash.jpg" alt="">
          <div class="container py-6">
            <div class="row">
              <div class="col-lg-8 col-xl-6 mx-auto text-white text-center overlay-content">
                <h1 class="mb-4 display-2 text-uppercase fw-bold">Skeleton Tees</h1>
                <p class="lead mb-5">Tỏa sáng với những sản phẩm thời thượng, dẫn đầu xu hướng</p>
                <p> <a class="btn btn-light" href="category.html">Bắt đầu mua sắm</a></p>
              </div>
            </div>
          </div>
        </div>
        <div class="item d-flex align-items-center"><img class="bg-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/haley-phelps-62815-unsplash.jpg" alt="">
          <div class="container py-6">
            <div class="row">
              <div class="col-lg-8 col-xl-6 mx-auto text-white text-center position-relative">
                <h5 class="text-uppercase fw-light mb-4 letter-spacing-5"> Xu hướng thời trang hot nhất, dành riêng cho bạn!</h5>
                <h1 class="mb-5 display-1 fw-bold text-serif">Skinny Jeans</h1>
                <p> <a class="btn btn-light" href="category.html">Xem bộ sưu tập</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Our picks section-->
    
    <section class="py-6 bg-gray-100">
      <div class="container">
        <div class="row">
          <div class="col-xl-8 mx-auto text-center mb-5">
            <h2 class="text-uppercase">Yêu thích</h2>
            <p class="lead text-muted">Bộ sưu tập nổi bật mà bạn không thể bỏ lỡ</p>
          </div>
        </div>
        <!-- Products Slider-->
        <div class="owl-carousel owl-theme product-slider">
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494231-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Áo khoác</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Striped T-Shirt</a></h3><span class="text-muted">100.000VND</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/averie-woodard-319832-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Áo sơ mi</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Short top</a></h3><span class="text-muted">100.000VND</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image">
                <div class="ribbon ribbon-danger">Hết hàng</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494279-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Áo len</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Ethnic Sweater</a></h3><span class="text-muted">100.000VND</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/dmitriy-ilkevich-437760-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Áo khoác dài</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Beige</a></h3><span class="text-muted">100.000VND</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/ian-dooley-347968-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Áo thun</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Skull Tee</a></h3><span class="text-muted">100.000VND</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/alex-holyoake-571682-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Denim</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Trucker jacket</a></h3><span class="text-muted">100.000VND</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/ao-456813-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Denim</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Blouse</a></h3><span class="text-muted">100.000VND</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/kyle-loftus-592041-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Denim</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Shirt</a></h3><span class="text-muted">100.000VND</span>
              </div>
            </div>
          </div>
          <!-- /product-->
        </div>
      </div>
    </section>
    
    <!-- Divider Section-->
    <section class="py-6 position-relative light-overlay"><img class="bg-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/benjamin-voros-260869-unsplash.jpg" alt="">
      <div class="container">
        <div class="overlay-content text-center text-dark">
          <p class="text-uppercase fw-bold mb-1 letter-spacing-5">Bộ sưu tập cổ điển                  </p>
          <h3 class="display-1 fw-bold text-serif mb-4">Giảm giá mùa hè</h3><a class="btn btn-dark" href="category.html">Mua sắm ngay</a>
        </div>
      </div>
    </section>