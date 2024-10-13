<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<header class="header">
      <!-- Top Bar-->
      <div class="top-bar">
        <div class="container-fluid">
          <div class="row d-flex align-items-center">
            <div class="col-sm-7 d-none d-sm-block">
              <ul class="list-inline topbar-text mb-0">
                <li class="list-inline-item pe-3 me-0">
                  <svg class="svg-icon me-2">
                    <use xlink:href="#calls-1"> </use>
                  </svg>020-800-456-747
                </li>
                <li class="list-inline-item px-3 border-start d-none d-lg-inline-block">Free shipping on orders over $300</li>
              </ul>
            </div>
            <div class="col-sm-5 d-flex justify-content-end">
              <!-- Language Dropdown-->
              <div class="dropdown border-end px-3"><a class="dropdown-toggle topbar-link" id="langsDropdown" href="#" data-bs-toggle="dropdown" data-bs-display="static" aria-haspopup="true" aria-expanded="false"><img class="topbar-flag" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/flag/gb.svg" alt="english">English</a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated" aria-labelledby="langsDropdown"><a class="dropdown-item text-sm" href="#"><img class="topbar-flag" src="https://st.quantrimang.com/photos/image/2021/09/05/Co-Vietnam.png" alt="vietnam">VietNam</a><a class="dropdown-item text-sm" href="#"> <img class="topbar-flag" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/flag/fr.svg" alt="french">French</a></div>
              </div>
              <!-- Currency Dropdown-->
              <div class="dropdown ps-3 ms-0"><a class="dropdown-toggle topbar-link" id="currencyDropdown" href="#" data-bs-toggle="dropdown" data-bs-display="static" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-dollar-sign text-xs align-middle mt-n1 me-2"> </i>USD</a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated" aria-labelledby="currencyDropdown"><a class="dropdown-item text-sm" href="#"> <i class="fas fa-euro-sign text-xs align-middle mt-n1 me-2"> </i>EUR</a><a class="dropdown-item text-sm" href="#"><i> <span>₫</span> </i> VND</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Top Bar End-->
      <!-- Navbar-->
      <nav class="navbar navbar-expand-lg navbar-sticky navbar-airy navbar-light bg-white bg-fixed-white">
        <div class="container-fluid">  
          <!-- Navbar Header  --><a class="navbar-brand" href="index.html"><svg class="navbar-brand-svg" viewBox="0 0 231 77" width="231" height="77" fill="none" xmlns="http://www.w3.org/2000/svg">
<path class="navbar-brand-svg-text" d="M217 613 c-4 -3 -7 -94 -7 -200 l0 -194 43 3 42 3 3 63 3 62 43 0 c83 0 156 80 142 155 -9 47 -50 92 -94 105 -41 11 -165 14 -175 3z m171 -95 c7 -7 12 -21 12 -33 0 -31 -19 -45 -62 -45 l-38 0 0 45 0 45 38 0 c21 0 43 -5 50 -12z M720 601 c-38 -20 -85 -80 -73 -92 19 -18 69 -13 91 9 15 15 34 22 60 22 43 0 62 -14 62 -47 0 -18 -14 -30 -77 -60 -72 -35 -80 -42 -105 -92 -16 -30 -28 -70 -28 -88 l0 -34 148 3 147 3 0 40 0 40 -92 3 c-51 1 -93 6 -93 11 0 14 34 38 75 52 21 8 57 31 78 51 37 35 39 40 35 83 -3 25 -14 55 -24 67 -44 48 -142 63 -204 29z M1100 575 l0 -45 50 0 50 0 0 -156 0 -155 43 3 42 3 3 152 3 152 47 3 47 3 0 40 0 40 -142 3 -143 3 0 -46z M1593 604 c-40 -20 -67 -74 -59 -118 8 -43 39 -70 111 -100 71 -29 89 -50 61 -72 -29 -21 -61 -17 -93 10 l-29 24 -32 -20 c-39 -25 -40 -32 -4 -68 28 -27 86 -50 127 -50 38 1 103 38 119 69 39 75 2 138 -105 181 -49 19 -64 30 -64 45 0 27 55 33 80 9 15 -16 19 -16 51 -1 40 19 43 36 12 64 -51 46 -115 56 -175 27z M1980 279 c-9 -16 -8 -26 5 -45 8 -13 22 -24 30 -24 19 0 45 28 45 49 0 41 -61 57 -80 20z" transform="translate(0 77) scale(0.1,-0.1)" fill="#212529"/>

</svg></a>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mx-auto">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle active" id="homeDropdownMenuLink" href="index.html" data-bs-target="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Home        </a>
                <div class="dropdown-menu dropdown-menu-animated" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index5.html">Slider + broken grid <span class="badge badge-info-light ms-1">New</span>    </a><a class="dropdown-item" href="index.html">Fullscreen home + Lookbook</a><a class="dropdown-item" href="index2.html">Split-screen home</a><a class="dropdown-item" href="index3.html">Classic home</a><a class="dropdown-item" href="index4.html">Parallax sections <span class="badge badge-info-light ms-1">New</span></a></div>
              </li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="categoryDropdownMenuLink" href="category.html" data-bs-target="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
                <div class="dropdown-menu dropdown-menu-animated" aria-labelledby="categoryDropdownMenuLink"><a class="dropdown-item" href="category.html">Category - left sidebar   </a><a class="dropdown-item" href="category-right.html">Category - right sidebar   </a><a class="dropdown-item" href="category-no-sidebar.html">Category - no sidebar   </a><a class="dropdown-item" href="category-full.html">Category - full width   </a><a class="dropdown-item" href="category-masonry.html">Category - masonry items   </a><a class="dropdown-item" href="category-banner.html">Category - w/ banner   </a><a class="dropdown-item" href="detail.html">Product detail   </a><a class="dropdown-item" href="detail-2.html">Product detail - v.2   </a><a class="dropdown-item" href="detail-3.html">Product detail - v.3 <span class="badge badge-warning ms-1">New</span>   </a>
                </div>
              </li>
              <!-- Megamenu-->
              <li class="nav-item dropdown position-static"><a class="nav-link dropdown-toggle " href="#" data-bs-toggle="dropdown">Template</a>
                <div class="dropdown-menu dropdown-menu-animated megamenu py-lg-0">
                  <div class="row">
                    <div class="col-lg-9">
                      <div class="row p-3 pe-lg-0 ps-lg-5 pt-lg-5">
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Homepage</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Fullscreen home + Lookbook   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index2.html">Split-screen home   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index3.html">Classic home   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index4.html">Parallax sections  <span class="badge bg-warning ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index5.html">Slider + Broken grid  <span class="badge bg-warning ms-1">New</span>   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Shop</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - left sidebar   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-right.html">Category - right sidebar   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-no-sidebar.html">Category - no sidebar   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-full.html">Category - full width   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-masonry.html">Category - masonry items   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-banner.html">Category - w/ banner   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Product detail   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-2.html">Product detail - v.2   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-3.html">Product detail - v.3 <span class="badge bg-warning ms-1">New</span>   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Order process</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="cart.html">Shopping cart   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="cart-2.html">Shopping cart - v. 2 <span class="badge bg-warning ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="checkout1.html">Checkout 1 - Address   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="checkout2.html">Checkout 2 - Delivery   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="checkout3.html">Checkout 3 - Payment   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="checkout4.html">Checkout 4 - Review     </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="checkout5.html">Checkout 5 - Confirmation   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Blog</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="blog.html">Blog   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="post.html">Post   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Pages</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="about.html">About us <span class="badge bg-warning ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="about-2.html">About us v.2 <span class="badge bg-warning ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact-2.html">Contact v.2   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Customer</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="customer-login.html">Login/sign up   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="customer-orders.html">Orders   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="customer-order.html">Order detail   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="customer-addresses.html">Addresses   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="customer-account.html">Profile   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Documentation</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="docs/docs-introduction.html">Introduction   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="docs/docs-directory-structure.html">Directory structure   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="docs/docs-gulp.html">Gulp   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="docs/docs-customizing-css.html">Customizing CSS   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="docs/docs-credits.html">Credits   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="docs/docs-changelog.html">Changelog   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Components</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="docs/components-bootstrap.html">Bootstrap   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="docs/components-sell.html">Theme   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="component-variants/header.html">Header variants <span class="badge bg-warning ms-1">New</span>   </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="row megamenu-services d-none d-lg-flex">
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#delivery-time-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Free shipping &amp; return</h6>
                              <p class="mb-0 text-muted text-sm">Free Shipping over $300</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#money-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Money back guarantee</h6>
                              <p class="mb-0 text-muted text-sm">30 Days Money Back</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#customer-support-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">020-800-456-747</h6>
                              <p class="mb-0 text-muted text-sm">24/7 Available Support</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#secure-payment-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Secure Payment</h6>
                              <p class="mb-0 text-muted text-sm">Secure Payment</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 d-none d-lg-block position-relative"><img class="bg-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/megamenu.jpg" alt=""></div>
                  </div>
                </div>
              </li>
              <!-- /Megamenu end-->
              <!-- Multi level dropdown    -->
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                <ul class="dropdown-menu dropdown-menu-animated" aria-labelledby="navbarDropdownMenuLink">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" id="navbarDropdownMenuLink2" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown link</a>
                    <ul class="dropdown-menu dropdown-menu-animated" aria-labelledby="navbarDropdownMenuLink2">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" id="navbarDropdownMenuLink3" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Another action</a>
                        <ul class="dropdown-menu dropdown-menu-animated" aria-labelledby="navbarDropdownMenuLink3">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Action</a></li>
                        </ul>
                      </li>
                      <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" id="navbarDropdownMenuLink4" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Another action</a>
                        <ul class="dropdown-menu dropdown-menu-animated" aria-labelledby="navbarDropdownMenuLink4">
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Action</a></li>
                          <li><a class="dropdown-item" href="#">Action</a></li>
                        </ul>
                      </li>
                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                  </li>
                  <li class="dropdown-submenu"><a class="dropdown-item dropdown-toggle" id="navbarDropdownMenuLink5" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown link</a>
                    <ul class="dropdown-menu dropdown-menu-animated" aria-labelledby="navbarDropdownMenuLink5">
                      <li><a class="dropdown-item" href="#">Action                    </a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <!-- Multi level dropdown end-->
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
              </li>
              <li class="nav-item dropdown"><a class="dropdown-toggle nav-link " id="docsDropdownMenuLink" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Docs</a>
                <div class="dropdown-menu dropdown-menu-animated dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                  <h6 class="dropdown-header fw-normal">Documentation</h6><a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a><a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
                  <div class="dropdown-divider"></div>
                  <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-sell.html">Theme </a><a class="dropdown-item" href="component-variants/header.html">Header variants <span class="badge bg-warning ms-1">New</span> </a>
                </div>
              </li>
            </ul>
            <div class="d-flex align-items-center justify-content-between justify-content-lg-end mt-1 mb-2 my-lg-0">
              <!-- Search Button-->
              <div class="nav-item navbar-icon-link" data-bs-toggle="search">
                <svg class="svg-icon">
                  <use xlink:href="#search-1"> </use>
                </svg>
              </div>
              <!-- User Not Logged - link to login page-->
              <div class="nav-item"><a class="navbar-icon-link" href="login">
                  <svg class="svg-icon">
                    <use xlink:href="#male-user-1"> </use>
                  </svg><span class="text-sm ms-2 ms-lg-0 text-uppercase text-sm fw-bold d-none d-sm-inline d-lg-none">Log in    </span></a></div>
              <!-- Cart Dropdown-->
              <div class="nav-item dropdown"><a class="navbar-icon-link d-lg-none" href="cart.html"> 
                  <svg class="svg-icon">
                    <use xlink:href="#cart-1"> </use>
                  </svg><span class="text-sm ms-2 ms-lg-0 text-uppercase text-sm fw-bold d-none d-sm-inline d-lg-none">View cart</span></a>
                <div class="d-none d-lg-block"><a class="navbar-icon-link" id="cartdetails" href="cart.html" data-bs-target="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <svg class="svg-icon">
                      <use xlink:href="#cart-1"> </use>
                    </svg>
                    <div class="navbar-icon-link-badge">3                         </div></a>
                  <div class="dropdown-menu dropdown-menu-animated dropdown-menu-end p-4" aria-labelledby="cartdetails">
                    <div class="navbar-cart-product-wrapper">
                      <!-- cart item-->
                      <div class="navbar-cart-product"> 
                        <div class="d-flex align-items-center"><a href="detail.html"><img class="img-fluid navbar-cart-product-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/product-square-ian-dooley-347968-unsplash.jpg" alt="..."></a>
                          <div class="w-100"><a class="navbar-cart-product-close" href="#"><i class="fa fa-times">                                                   </i></a>
                            <div class="ps-3"> <a class="navbar-cart-product-link" href="detail.html">Skull Tee</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                          </div>
                        </div>
                      </div>
                      <!-- cart item-->
                      <div class="navbar-cart-product"> 
                        <div class="d-flex align-items-center"><a href="detail.html"><img class="img-fluid navbar-cart-product-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/product-square-kyle-loftus-596319-unsplash.jpg" alt="..."></a>
                          <div class="w-100"><a class="navbar-cart-product-close" href="#"><i class="fa fa-times">                                                   </i></a>
                            <div class="ps-3"> <a class="navbar-cart-product-link" href="detail.html">Transparent Blouse</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                          </div>
                        </div>
                      </div>
                      <!-- cart item-->
                      <div class="navbar-cart-product"> 
                        <div class="d-flex align-items-center"><a href="detail.html"><img class="img-fluid navbar-cart-product-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/product-square-serrah-galos-494312-unsplash.jpg" alt="..."></a>
                          <div class="w-100"><a class="navbar-cart-product-close" href="#"><i class="fa fa-times">                                                   </i></a>
                            <div class="ps-3"> <a class="navbar-cart-product-link" href="detail.html">White Tee</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- total price-->
                    <div class="navbar-cart-total"><span class="text-uppercase text-muted">Total</span><strong class="text-uppercase">$75.00</strong></div>
                    <!-- buttons-->
                    <div class="d-flex justify-content-between"><a class="btn btn-link text-dark me-3" href="cart.html">View Cart <i class="fa-arrow-right fa"></i></a><a class="btn btn-outline-dark" href="checkout1.html">Checkout</a></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </nav>
      <!-- /Navbar -->
      <!-- Fullscreen search area-->
      <div class="search-area-wrapper">
        <div class="search-area d-flex align-items-center justify-content-center">
          <div class="close-btn">
            <svg class="svg-icon svg-icon-light w-3rem h-3rem">
              <use xlink:href="#close-1"> </use>
            </svg>
          </div>
          <form class="search-area-form" action="#">
            <div class="mb-4 position-relative">
              <input class="search-area-input" type="search" name="search" id="search" placeholder="What are you looking for?">
              <button class="search-area-button" type="submit">
                <svg class="svg-icon">
                  <use xlink:href="#search-1"> </use>
                </svg>
              </button>
            </div>
          </form>
        </div>
      </div>
      <!-- /Fullscreen search area-->
    </header>