<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Hero Section-->
   <section>
      <!-- Hero Slider-->
      <div class="owl-carousel owl-theme owl-dots-modern home-slider">
        <c:forEach items="${latestProducts}" var="product">
        <div class="item d-flex align-items-center" style="background: #f8d5cf;">
        <img class="bg-image" src="${product.image}" alt="${product.productName}">
          <div class="container py-6">
            <div class="row">
              <div class="col-lg-8 col-xl-6 mx-auto text-white text-center position-relative">
                <h5 class="text-uppercase text-white fw-light mb-4 letter-spacing-5">Mới nhất</h5>
                <h1 class="mb-5 display-2 fw-bold text-serif">${product.categoryName}</h1>
                <p class="lead mb-4">${product.productName}</p>
                <p> 
                	<a class="btn btn-light" href="${pageContext.request.contextPath}/admin/categoryDetail?productCode=${product.productCode}">
                		Xem ngay
                	</a>
                </p>
              </div>
            </div>
          </div>
        </div>
       </c:forEach>
      </div>
    </section>
      <div class="container py-6">
        <div class="row">
          <div class="col-xl-8 mx-auto text-center mb-5">
            <h2 class="text-uppercase">Our picks for Winter 2018 </h2>
            <p class="lead text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
          </div>
        </div>
        <div class="row align-items-md-stretch">
          <div class="col-lg-4 d-flex align-items-lg-stretch position-relative">
            <div class="d-flex align-items-center text-white border-0 w-100 py-6 py-lg-4 text-center mb-4 mb-lg-0" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/rahul-anil-214671-unsplash.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="w-100">
                <h1 class="text-uppercase">Men</h1>
                <p class="lead">Consectetur adipisicing elit sed do eiusmod tempor.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-8">
            <div class="card light-overlay position-relative text-dark border-0 mb-4"><img class="card-img" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/pete-bellis-189599-unsplash.jpg" alt="Card image"><a class="tile-link" href="category.html"> </a>
              <div class="card-img-overlay d-flex align-items-center">
                <div class="text-center w-100 overlay-content">
                  <h1 class="text-uppercase">Ladies</h1>
                  <p class="lead">Consectetur adipisicing elit sed do eiusmod tempor.</p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4">
                <div class="card text-white position-relative border-0 mb-lg-0 mb-4"><img class="card-img" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/haley-phelps-62815-unsplash.jpg" alt="Card image"><a class="tile-link" href="category.html"> </a>
                  <div class="card-img-overlay d-flex align-items-center">
                    <div class="text-center w-100">
                      <h2 class="text-uppercase mb-0">Denim</h2>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card position-relative dark-overlay text-white border-0 mb-lg-0 mb-4"><img class="card-img" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/matese-fields-233175-unsplash.jpg" alt="Card image"><a class="tile-link" href="category.html"> </a>
                  <div class="card-img-overlay d-flex align-items-center">
                    <div class="text-center w-100 overlay-content">
                      <h4 class="text-uppercase mb-0">Accessories</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card position-relative text-white border-0"><img class="card-img" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/brooke-cagle-195856-unsplash.jpg" alt="Card image"><a class="tile-link" href="category.html"> </a>
                  <div class="card-img-overlay d-flex align-items-center">
                    <div class="text-center w-100">
                      <h2 class="text-uppercase mb-0">Sales</h2>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
     <!-- Our picks section-->
    <section>
      <div class="container py-6">
        <div class="row">
          <div class="col-xl-8 mx-auto text-center mb-5">
            <h2 class="text-uppercase">Bộ sưu tập của chúng tôi</h2>
            <p class="lead text-muted">Chúng tôi đảm bảo mang đến cho bạn sản phẩm chất lượng cùng với trải nghiệm mua sắm tuyệt vời nhất</p>
          </div>
        </div>
        <div class="row align-items-md-stretch">
          <div class="col-lg-4 d-flex align-items-lg-stretch position-relative">
            <div class="d-flex align-items-center text-white border-0 w-100 py-6 py-lg-4 text-center mb-4 mb-lg-0" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/rahul-anil-214671-unsplash.jpg) no-repeat; background-size: cover;"><a class="tile-link" href="category.html"> </a>
              <div class="w-100">
                <h1 class="text-uppercase">Quần Short thun mát</h1>
                <p class="lead">Hãy khám phá các sản phẩm phong cách</p>
              </div>
            </div>
          </div>
          <div class="col-lg-8">
            <div class="card light-overlay position-relative text-dark border-0 mb-4"><img class="card-img" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/pete-bellis-189599-unsplash.jpg" alt="Card image"><a class="tile-link" href="category.html"> </a>
              <div class="card-img-overlay d-flex align-items-center">
                <div class="text-center w-100 overlay-content">
                  <h1 class="text-uppercase">Áo khoác Denim</h1>
                  <p class="lead">Mẫu mã đa dạng, phù hợp với mọi phong cách của bạn</p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4">
                <div class="card text-white position-relative border-0 mb-lg-0 mb-4"><img class="card-img" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/haley-phelps-62815-unsplash.jpg" alt="Card image"><a class="tile-link" href="category.html"> </a>
                  <div class="card-img-overlay d-flex align-items-center">
                    <div class="text-center w-100">
                      <h2 class="text-uppercase mb-0">Áo Polo</h2>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card position-relative dark-overlay text-white border-0 mb-lg-0 mb-4"><img class="card-img" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/matese-fields-233175-unsplash.jpg" alt="Card image"><a class="tile-link" href="category.html"> </a>
                  <div class="card-img-overlay d-flex align-items-center">
                    <div class="text-center w-100 overlay-content">
                      <h4 class="text-uppercase mb-0">Áo sơ mi tay ngắn</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="card position-relative text-white border-0"><img class="card-img" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/brooke-cagle-195856-unsplash.jpg" alt="Card image"><a class="tile-link" href="category.html"> </a>
                  <div class="card-img-overlay d-flex align-items-center">
                    <div class="text-center w-100">
                      <h2 class="text-uppercase mb-0">Áo khoác trơn</h2>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6 bg-gray-100">
      <div class="container">
        <div class="row">
          <div class="col-xl-8 mx-auto text-center mb-5">
            <h2 class="text-uppercase">Có thể bạn sẽ thích</h2>
            <p class="lead text-muted">Tìm kiếm phong cách? Chúng tôi có tất cả những gì bạn cần!</p>
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
                <p class="text-muted text-sm mb-1">Jackets</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Striped T-Shirt</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/averie-woodard-319832-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Shirts</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Short top</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="product-slider-item">
            <div class="product">
              <div class="product-image">
                <div class="ribbon ribbon-danger">hết hàng</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494279-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Sweaters</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Ethnic Sweater</a></h3><span class="text-muted">$40.00</span>
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
                <p class="text-muted text-sm mb-1">Coats</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Beige</a></h3><span class="text-muted">$40.00</span>
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
                <p class="text-muted text-sm mb-1">T-Shirts</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Skull Tee</a></h3><span class="text-muted">$40.00</span>
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
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Trucker jacket</a></h3><span class="text-muted">$40.00</span>
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
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Blouse</a></h3><span class="text-muted">$40.00</span>
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
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Shirt</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
        </div>
      </div>
    </section>