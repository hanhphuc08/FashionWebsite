<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/fonts/hkgrotesk/stylesheet.2e9c9834.css">
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
    <script>var basePath = 'Template/demo.bootstrapious.com/sell/2-0-1/'</script>
    <script src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/theme.30e7c8f9.js"></script>
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/demo.9833433a.js"></script>
    
	<%@ include file="/commons/admin/header.jsp" %>;

    <div class="container-fluid">

                <!-- Title -->
                <h1 class="h2">
                    E-commerce
                </h1>

                <div class="row">
                    <div class="col-lg-6 col-xxl-3 d-flex">

                        <!-- Card -->
                        <div class="card border-0 flex-fill w-100">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">

                                        <!-- Title -->
                                        <h5 class="text-uppercase text-muted fw-semibold mb-2">
                                            Clients
                                        </h5>

                                        <!-- Subtitle -->
                                        <h2 class="mb-0">
                                            6,328
                                        </h2>
                                    </div>
                                    <div class="col-auto">

                                        <!-- Icon -->
                                        <svg viewBox="0 0 24 24" height="30" width="30" class="text-primary" xmlns="http://www.w3.org/2000/svg"><path d="M2.250 6.000 A2.250 2.250 0 1 0 6.750 6.000 A2.250 2.250 0 1 0 2.250 6.000 Z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"/><path d="M4.5,9.75A3.75,3.75,0,0,0,.75,13.5v2.25h1.5l.75,6H6" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"/><path d="M17.250 6.000 A2.250 2.250 0 1 0 21.750 6.000 A2.250 2.250 0 1 0 17.250 6.000 Z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"/><path d="M19.5,9.75a3.75,3.75,0,0,1,3.75,3.75v2.25h-1.5l-.75,6H18" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"/><path d="M9.000 3.750 A3.000 3.000 0 1 0 15.000 3.750 A3.000 3.000 0 1 0 9.000 3.750 Z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"/><path d="M17.25,13.5a5.25,5.25,0,0,0-10.5,0v2.25H9l.75,7.5h4.5l.75-7.5h2.25Z" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"/></svg>
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto">

                                        <!-- Label -->
                                        <p class="fs-6 text-muted text-uppercase mb-0">
                                            Today clients
                                        </p>

                                        <!-- Comment -->
                                        <p class="fs-5 fw-bold mb-0">
                                            57
                                        </p>
                                    </div>
                                    <div class="col text-end text-truncate">

                                        <!-- Label -->
                                        <p class="fs-6 text-muted text-uppercase mb-0">
                                            Monthly clients
                                        </p>

                                        <!-- Comment -->
                                        <p class="fs-5 fw-bold mb-0">
                                            681
                                        </p>
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-3 d-flex">

                        <!-- Card -->
                        <div class="card border-0 flex-fill w-100">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">

                                        <!-- Title -->
                                        <h5 class="text-uppercase text-muted fw-semibold mb-2">
                                            Orders
                                        </h5>

                                        <!-- Subtitle -->
                                        <h2 class="mb-0">
                                            15,386
                                        </h2>
                                    </div>
                                    <div class="col-auto">

                                        <!-- Icon -->
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" height="30" width="30" class="text-primary"><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M6 19.1249H15.921C16.2753 19.125 16.6182 18.9996 16.889 18.7709C17.1597 18.5423 17.3407 18.2253 17.4 17.8759L20.037 2.37593C20.0965 2.02678 20.2776 1.70994 20.5483 1.48153C20.819 1.25311 21.1618 1.12785 21.516 1.12793H22.5"/><path stroke="currentColor" stroke-width="1.5" d="M7.875 22.125C7.66789 22.125 7.5 21.9571 7.5 21.75C7.5 21.5429 7.66789 21.375 7.875 21.375"/><path stroke="currentColor" stroke-width="1.5" d="M7.875 22.125C8.08211 22.125 8.25 21.9571 8.25 21.75C8.25 21.5429 8.08211 21.375 7.875 21.375"/><path stroke="currentColor" stroke-width="1.5" d="M15.375 22.125C15.1679 22.125 15 21.9571 15 21.75C15 21.5429 15.1679 21.375 15.375 21.375"/><path stroke="currentColor" stroke-width="1.5" d="M15.375 22.125C15.5821 22.125 15.75 21.9571 15.75 21.75C15.75 21.5429 15.5821 21.375 15.375 21.375"/><path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M17.9529 14.6251H5.88193C5.21301 14.625 4.5633 14.4014 4.03605 13.9897C3.5088 13.5781 3.13425 13.002 2.97193 12.3531L1.52193 6.55309C1.49426 6.44248 1.49218 6.32702 1.51583 6.21548C1.53949 6.10394 1.58827 5.99927 1.65846 5.90941C1.72864 5.81955 1.81839 5.74688 1.92089 5.69692C2.02338 5.64696 2.13591 5.62103 2.24993 5.62109H19.4839"/></svg>                                          
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto">

                                        <!-- Label -->
                                        <p class="fs-6 text-muted text-uppercase mb-0">
                                            Today orders
                                        </p>

                                        <!-- Comment -->
                                        <p class="fs-5 fw-bold mb-0">
                                            121
                                        </p>
                                    </div>
                                    <div class="col text-end text-truncate">

                                        <!-- Label -->
                                        <p class="fs-6 text-muted text-uppercase mb-0">
                                            Monthly orders
                                        </p>

                                        <!-- Comment -->
                                        <p class="fs-5 fw-bold mb-0">
                                            1,944
                                        </p>
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-3 d-flex">

                        <!-- Card -->
                        <div class="card border-0 flex-fill w-100">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">

                                        <!-- Title -->
                                        <h5 class="text-uppercase text-muted fw-semibold mb-2">
                                            Earnings
                                        </h5>

                                        <!-- Subtitle -->
                                        <h2 class="mb-0">
                                            $717,214
                                        </h2>
                                    </div>
                                    <div class="col-auto">

                                        <!-- Icon -->
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" height="30" width="30" class="text-primary"><defs><style>.a{fill:none;stroke:currentColor;stroke-linecap:round;stroke-linejoin:round;stroke-width:1.5px;}</style></defs><title>monitor-graph-line</title><polygon class="a" points="15 23.253 9 23.253 9.75 18.753 14.25 18.753 15 23.253"/><line class="a" x1="6.75" y1="23.253" x2="17.25" y2="23.253"/><rect class="a" x="0.75" y="0.753" width="22.5" height="18" rx="3" ry="3"/><path class="a" d="M18.75,5.253H16.717a1.342,1.342,0,0,0-.5,2.588l2.064.825a1.342,1.342,0,0,1-.5,2.587H15.75"/><line class="a" x1="17.25" y1="5.253" x2="17.25" y2="4.503"/><line class="a" x1="17.25" y1="12.003" x2="17.25" y2="11.253"/><path class="a" d="M.75,11.253,4.72,7.284a.749.749,0,0,1,1.06,0L7.72,9.223a.749.749,0,0,0,1.06,0l3.97-3.97"/><line class="a" x1="0.75" y1="15.753" x2="23.25" y2="15.753"/></svg>
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                            <div class="card-footer">
                                <div class="row justify-content-between">
                                    <div class="col-auto">

                                        <!-- Label -->
                                        <p class="fs-6 text-muted text-uppercase mb-0">
                                            Today earnings
                                        </p>

                                        <!-- Comment -->
                                        <p class="fs-5 fw-bold mb-0">
                                            £2,230
                                        </p>
                                    </div>
                                    <div class="col text-end text-truncate">

                                        <!-- Label -->
                                        <p class="fs-6 text-muted text-uppercase mb-0">
                                            Monthly earnings
                                        </p>

                                        <!-- Comment -->
                                        <p class="fs-5 fw-bold mb-0">
                                            $158,990
                                        </p>
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-3 d-flex">

                        <!-- Card -->
                        <div class="card border-0 text-bg-primary flex-fill w-100">
                            <div class="card-body">

                                <!-- Title -->
                                <h4 class="text-uppercase fw-semibold mb-2">
                                    Current balance
                                </h4>

                                <!-- Subtitle -->
                                <h2 class="mb-0">
                                    $981,340
                                </h2>

                                <!-- Chart -->
                                <div class="chart-container h-70px">
                                    <canvas id="currentBalanceChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- / .row -->
                
                <div class="row">
                    <div class="col-xxl-9 d-flex">

                        <!-- Card -->
                        <div class="card border-0 flex-fill w-100" data-list='{"valueNames": ["name", "price", "quantity", "amount", {"name": "sales", "attr": "data-sales"}], "page": 5}' id="topSellingProducts">
                            <div class="card-header border-0 card-header-space-between">

                                <!-- Title -->
                                <h2 class="card-header-title h4 text-uppercase">
                                    Top selling products
                                </h2>
                                
                                <!-- Dropdown -->
                                <div class="dropdown">
                                    <a href="javascript: void(0);" class="dropdown-toggle no-arrow text-secondary" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" height="14" width="14"><g><circle cx="12" cy="3.25" r="3.25" style="fill: currentColor"/><circle cx="12" cy="12" r="3.25" style="fill: currentColor"/><circle cx="12" cy="20.75" r="3.25" style="fill: currentColor"/></g></svg>
                                    </a>
                                    <div class="dropdown-menu">
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Action
                                        </a>
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Another action
                                        </a>
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Something else here
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <!-- Table -->
                            <div class="table-responsive">
                                <table class="table align-middle table-edge table-nowrap mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="name">
                                                    Name
                                                </a>
                                            </th>
                                            <th class="text-end">
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="price">
                                                    Price
                                                </a>
                                            </th>
                                            <th class="text-end">
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="quantity">
                                                    Quantity
                                                </a>
                                            </th>
                                            <th class="text-end">
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="amount">
                                                    Amount
                                                </a>
                                            </th>
                                            <th class="text-end pe-7 min-w-200px">
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="sales">
                                                    Sales
                                                </a>
                                            </th>
                                        </tr>
                                    </thead>

                                    <tbody class="list">
                                        <tr>
                                            <td class="name fw-bold">iPad Air</td>
                                            <td class="price text-end">$599</td>
                                            <td class="quantity text-end">135</td>
                                            <td class="amount text-end">$80,865</td>
                                            <td class="sales" data-sales="81">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="progress d-flex flex-grow-1">
                                                        <div class="progress-bar" role="progressbar" style="width: 81%" aria-valuenow="81" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span class="ms-3 text-muted">81%</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="name fw-bold">iPhone SE</td>
                                            <td class="price text-end">$499</td>
                                            <td class="quantity text-end">127</td>
                                            <td class="amount text-end">$63,373</td>
                                            <td class="sales" data-sales="25">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="progress w-100">
                                                        <div class="progress-bar bg-dark" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span class="ms-3 text-muted">25%</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="name fw-bold">Nexus 3</td>
                                            <td class="price text-end">$349</td>
                                            <td class="quantity text-end">98</td>
                                            <td class="amount text-end">$34,202</td>
                                            <td class="sales" data-sales="41">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="progress w-100">
                                                        <div class="progress-bar bg-dark" role="progressbar" style="width: 41%" aria-valuenow="41" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span class="ms-3 text-muted">41%</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="name fw-bold">Apple watch series-6</td>
                                            <td class="price text-end">$599</td>
                                            <td class="quantity text-end">214</td>
                                            <td class="amount text-end">$128,186</td>
                                            <td class="sales" data-sales="62">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="progress w-100">
                                                        <div class="progress-bar" role="progressbar" style="width: 62%" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span class="ms-3 text-muted">62%</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="name fw-bold">Apple TV 4K</td>
                                            <td class="price text-end">$1200</td>
                                            <td class="quantity text-end">51</td>
                                            <td class="amount text-end">$61,200</td>
                                            <td class="sales" data-sales="36">
                                                <div class="d-flex justify-content-between align-items-center">
                                                    <div class="progress w-100">
                                                        <div class="progress-bar bg-dark" role="progressbar" style="width: 36%" aria-valuenow="36" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span class="ms-3 text-muted">36%</span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div> <!-- / .table-responsive -->
                        </div>
                    </div>
                    <div class="col-xxl-3 d-flex">

                        <!-- Card -->
                        <div class="card border-0 flex-fill w-100">
                            <div class="card-header border-0 border-0 card-header-space-between">

                                <!-- Title -->
                                <h2 class="card-header-title h4 text-uppercase">
                                    Recent orders
                                </h2>

                                <!-- Link -->
                                <a href="javascript: void(0);" class="small fw-bold">
                                    View all
                                </a>
                            </div>

                            <!-- Table -->
                            <div class="table-responsive">
                                <table class="table table-sm table-borderless align-middle mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Name</th>
                                            <th class="text-end">Price</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-circle avatar-xs me-2">
                                                        <img src="https://d33wubrfki0l68.cloudfront.net/790b7dd581a3ac4fd0410afad0fb12c6e93c9e7a/b0657/assets/images/profiles/profile-07.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                    </div>

                                                    <div class="d-flex flex-column">
                                                        <span class="fw-bold d-block">Lester William</span>
                                                        <span class="fs-6 text-muted">24 minutes ago</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-end">
                                                <div class="fw-bold">$99</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-circle avatar-xs me-2">
                                                        <img src="https://d33wubrfki0l68.cloudfront.net/5e2b51ec857b6e9866574263391803f159c8081e/29577/assets/images/profiles/profile-02.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                    </div>

                                                    <div class="d-flex flex-column">
                                                        <span class="fw-bold d-block">Gabriella Fletcher</span>
                                                        <span class="fs-6 text-muted">3 hours ago</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-end">
                                                <div class="fw-bold">$59</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-circle avatar-xs me-2">
                                                        <img src="https://d33wubrfki0l68.cloudfront.net/4b8c918c73e2c72876e4bd4ba8c89401bae69d14/5923c/assets/images/profiles/profile-03.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                    </div>

                                                    <div class="d-flex flex-column">
                                                        <span class="fw-bold d-block">Marcia Banks</span>
                                                        <span class="fs-6 text-muted">9 hours ago</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-end">
                                                <div class="fw-bold">$499</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-circle avatar-xs me-2">
                                                        <img src="https://d33wubrfki0l68.cloudfront.net/eec1f115f0af81936bbe3a4f4a4d043cd3c0e7e4/34439/assets/images/profiles/profile-09.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                    </div>

                                                    <div class="d-flex flex-column">
                                                        <span class="fw-bold d-block">Irina Garcia</span>
                                                        <span class="fs-6 text-muted">17 hours ago</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-end">
                                                <div class="fw-bold">$149</div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar avatar-circle avatar-xs me-2">
                                                        <img src="https://d33wubrfki0l68.cloudfront.net/102e41d9e1988e0849ecfe402b1d46f4efd3574b/8dc2e/assets/images/profiles/profile-12.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                    </div>

                                                    <div class="d-flex flex-column">
                                                        <span class="fw-bold d-block">Javier Griffin</span>
                                                        <span class="fs-6 text-muted">1 day ago</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-end">
                                                <div class="fw-bold">$125</div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div> <!-- / .table-responsive -->
                        </div>
                    </div>
                </div> <!-- / .row -->

                <div class="row">
                    <div class="col-xxl-6 d-flex">

                       <!-- Card -->
                        <div class="card border-0 flex-fill w-100">
                            <div class="card-header border-0 card-header-space-between">

                                <!-- Title -->
                                <h2 class="card-header-title h4 text-uppercase">
                                    Order status
                                </h2>
                                
                                <!-- Dropdown -->
                                <div class="dropdown">
                                    <a href="javascript: void(0);" class="dropdown-toggle no-arrow text-secondary" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" height="14" width="14"><g><circle cx="12" cy="3.25" r="3.25" style="fill: currentColor"/><circle cx="12" cy="12" r="3.25" style="fill: currentColor"/><circle cx="12" cy="20.75" r="3.25" style="fill: currentColor"/></g></svg>
                                    </a>
                                    <div class="dropdown-menu">
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Action
                                        </a>
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Another action
                                        </a>
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Something else here
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="card-body">
                                <div class="row justify-content-around">
                                    <div class="col-lg-6 col-xl-4 mb-7 mb-lg-0">

                                        <!-- Chart -->
                                        <div class="chart-container flex-grow-1">
                                            <canvas id="orderStatusChart"></canvas>

                                            <!-- Labels -->
                                            <div class="position-absolute top-50 start-50 translate-middle text-center">
                                                <p class="fs-5 mb-0 text-muted lh-sm">ordered products</p>
                                                <h3 class="display-2 fw-bold mb-0">329</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-xl-5">
                                        <div class="row h-100 align-items-center">
                                            <div class="col">
                                                <div class="row justify-content-between">
                                                    <div class="col-auto col-lg">

                                                        <!-- Label -->
                                                        <p class="fs-4 d-flex align-items-center fw-semibold mb-0">
                                                            <span class="legend-circle bg-primary"></span>
                                                            Delivered
                                                        </p>
                                                    </div>
                                                    <div class="col-auto col-lg">

                                                        <!-- Comment -->
                                                        <p class="fs-4 text-muted">
                                                            29%
                                                        </p>
                                                    </div>
                                                </div> <!-- / .row -->
                                                <div class="row justify-content-between">
                                                    <div class="col-auto col-lg">

                                                        <!-- Label -->
                                                        <p class="fs-4 d-flex align-items-center fw-semibold mb-0">
                                                            <span class="legend-circle bg-dark"></span>
                                                            In progress
                                                        </p>
                                                    </div>
                                                    <div class="col-auto col-lg">

                                                        <!-- Comment -->
                                                        <p class="fs-4 text-muted">
                                                            45%
                                                        </p>
                                                    </div>
                                                </div> <!-- / .row -->
                                                <div class="row justify-content-between">
                                                    <div class="col-auto col-lg">

                                                        <!-- Label -->
                                                        <p class="fs-4 d-flex align-items-center fw-semibold mb-0">
                                                            <span class="legend-circle bg-gray-400"></span>
                                                            To-do
                                                        </p>
                                                    </div>
                                                    <div class="col-auto col-lg">

                                                        <!-- Comment -->
                                                        <p class="fs-4 text-muted">
                                                            26%
                                                        </p>
                                                    </div>
                                                </div> <!-- / .row -->
                                            </div>
                                        </div> <!-- / .row -->
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-6 d-flex">

                        <!-- Card -->
                        <div class="card border-0 flex-fill w-100">
                            <div class="card-header border-0">

                                <!-- Title -->
                                <h2 class="card-header-title h4 text-uppercase">
                                    Revenue by locations
                                </h2>
                            </div>

                            <div class="card-body">

                                <!-- Map -->
                                <div class="map h-280px" id="worldMap"></div>
                            </div>
                        </div>
                    </div>
                </div> <!-- / .row -->

                <div class="row">
                    <div class="col d-flex">

                        <!-- Card -->
                        <div class="card border-0 flex-fill w-100">
                            <div class="card-header border-0 card-header-space-between">

                                <!-- Title -->
                                <h2 class="card-header-title h4 text-uppercase">
                                    Sales report
                                </h2>

                                <ul class="nav">
                                    <li class="nav-item" data-toggle="chart" data-target="#salesReportChart" data-dataset="0">
                                        <a class="nav-link active chart-legend" href="#" data-bs-toggle="tab">
                                            <span class="legend-circle-lg bg-primary"></span>
                                            Income
                                        </a>
                                    </li>
                                    <li class="nav-item" data-toggle="chart" data-target="#salesReportChart" data-dataset="1">
                                        <a class="nav-link chart-legend" href="#" data-bs-toggle="tab">
                                            <span class="legend-circle-lg bg-dark"></span>
                                            Expense
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="card-body d-flex flex-column">

                                <!-- Chart -->
                                <div class="chart-container flex-grow-1 h-275px">
                                    <canvas id="salesReportChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- / .row -->
                <div class="row">
                    <div class="col">

                        <!-- Card -->
                        <div class="card border-0 flex-fill w-100" data-list='{"valueNames": ["name", "email", "id", {"name": "date", "attr": "data-signed"}, "status"], "page": 8}' id="users">
                            <div class="card-header border-0 card-header-space-between">

                                <!-- Title -->
                                <h2 class="card-header-title h4 text-uppercase">
                                    Users
                                </h2>

                                <!-- Dropdown -->
                                <div class="dropdown ms-4">
                                    <a href="javascript: void(0);" class="dropdown-toggle no-arrow text-secondary" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" height="14" width="14"><g><circle cx="12" cy="3.25" r="3.25" style="fill: currentColor"/><circle cx="12" cy="12" r="3.25" style="fill: currentColor"/><circle cx="12" cy="20.75" r="3.25" style="fill: currentColor"/></g></svg>
                                    </a>
                                    <div class="dropdown-menu">
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Export report
                                        </a>
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Share
                                        </a>
                                        <a href="javascript: void(0);" class="dropdown-item">
                                            Action
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <!-- Table -->
                            <div class="table-responsive">
                                <table class="table align-middle table-edge table-hover table-nowrap mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th class="w-60px">
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="" id="checkAllCheckboxes">
                                                </div>
                                            </th>
                                            <th>
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="name">
                                                    Full name
                                                </a>
                                            </th>
                                            <th>
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="email">
                                                    Email
                                                </a>
                                            </th>
                                            <th>
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="id">
                                                    User ID
                                                </a>
                                            </th>
                                            <th>
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="date">
                                                    Signed up
                                                </a>
                                            </th>
                                            <th class="w-150px min-w-150px">
                                                <a href="javascript: void(0);" class="text-muted list-sort" data-sort="status">
                                                    Status
                                                </a>
                                            </th>
                                        </tr>
                                    </thead>

                                    <tbody class="list">
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/9e7ac59225f733be5944b3e91271b33adb30cae7/56230/assets/images/profiles/profile-14.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Hakeem Chan</span>
                                            </td>
                                            <td class="email">lobortis.augue@natoquepenatibuset.ca</td>
                                            <td class="id">#9265</td>
                                            <td class="date" data-signed="1648252800">03.26.2022</td>
                                            <td class="status"><span class="legend-circle bg-success"></span>Successful</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/44bfbd93721837b9534e9dc6fc058dbaef92d03a/f9236/assets/images/profiles/profile-23.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Orli J. Goodman</span>
                                            </td>
                                            <td class="email">pede@at.com</td>
                                            <td class="id">#8545</td>
                                            <td class="date" data-signed="1627858800">08.02.2021</td>
                                            <td class="status"><span class="legend-circle bg-success"></span>Successful</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/236af360580cfc7622e3a7d309d709a5018937c5/e3ee4/assets/images/profiles/profile-16.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Halee P. Lane</span>
                                            </td>
                                            <td class="email">diam@nislNullaeu.net</td>
                                            <td class="id">#4445</td>
                                            <td class="date" data-signed="1615680000">03.14.2021</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <span class="avatar-title text-bg-primary-soft">KS</span>
                                                </div>
                                                <span class="name fw-bold">Kimberly Salinas</span>
                                            </td>
                                            <td class="email">in.lobortis.tellus@faucibusorci.co.uk</td>
                                            <td class="id">#2391</td>
                                            <td class="date" data-signed="1615939200">03.17.2021</td>
                                            <td class="status"><span class="legend-circle bg-success"></span>Successful</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/963edcf9fc0c25098f00370b3b3d021e2ddac277/e69d6/assets/images/profiles/profile-17.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Galena Oliver</span>
                                            </td>
                                            <td class="email">eleifend.nec@ligulaconsectetuerrhoncus.ca</td>
                                            <td class="id">#8987</td>
                                            <td class="date" data-signed="1607990400">12.15.2021</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/768c1ecfdff6a59ab55d514b80bd59e8dfa28996/35a64/assets/images/profiles/profile-19.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Kelly Doyle</span>
                                            </td>
                                            <td class="email">urna.et@volutpatNulladignissim.org</td>
                                            <td class="id">#5898</td>
                                            <td class="date" data-signed="1650495600">04.21.2022</td>
                                            <td class="status"><span class="legend-circle bg-danger"></span>Overdue</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/0b34af989cce5e54297f16547b3eff1ace44dad5/eb8ea/assets/images/profiles/profile-20.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Keane Wyatt</span>
                                            </td>
                                            <td class="email">quam@Ut.org</td>
                                            <td class="id">#3431</td>
                                            <td class="date" data-signed="1655506800">06.18.2022</td>
                                            <td class="status"><span class="legend-circle bg-success"></span>Successful</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <span class="avatar-title text-bg-success-soft">NA</span>
                                                </div>
                                                <span class="name fw-bold">Nasim Aguirre</span>
                                            </td>
                                            <td class="email">nisl@mollis.net</td>
                                            <td class="id">#6701</td>
                                            <td class="date" data-signed="1602975600">10.18.2021</td>
                                            <td class="status"><span class="legend-circle bg-danger"></span>Overdue</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/23af178af51cd04f5a1b181720a77e2839e7a4be/5d54f/assets/images/profiles/profile-25.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Leo Johnston</span>
                                            </td>
                                            <td class="email">Cum.sociis@Etiambibendumfermentum.co.uk</td>
                                            <td class="id">#9258</td>
                                            <td class="date" data-signed="1624748400">06.27.2021</td>
                                            <td class="status"><span class="legend-circle bg-success"></span>Successful</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/f3d8c9fbcd994759c966476a8349d5d053e38964/e7323/assets/images/profiles/profile-26.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Macon Dean</span>
                                            </td>
                                            <td class="email">aliquam@nec.edu</td>
                                            <td class="id">#4885</td>
                                            <td class="date" data-signed="1614470400">02.28.2021</td>
                                            <td class="status"><span class="legend-circle bg-success"></span>Successful</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/ea01948f5a48922378b407c27d2b4e5809ed4949/35ecd/assets/images/profiles/profile-11.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Yoko Grimes</span>
                                            </td>
                                            <td class="email">ut.eros@Donecporttitor.co.uk</td>
                                            <td class="id">#1960</td>
                                            <td class="date" data-signed="1635289200">10.27.2021</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/395009794393b7ec5f8c3faaf9823b0a3692032b/71f55/assets/images/profiles/profile-27.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Jordan Douglas</span>
                                            </td>
                                            <td class="email">fermentum.convallis.ligula@euenimEtiam.edu</td>
                                            <td class="id">#8385</td>
                                            <td class="date" data-signed="1646265600">03.03.2022</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/408c347002e5d3c7a119c65184b1959dac40f3d7/46d8d/assets/images/profiles/profile-30.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Carly Beard</span>
                                            </td>
                                            <td class="email">dolor.dolor@lacusMaurisnon.org</td>
                                            <td class="id">#9380</td>
                                            <td class="date" data-signed="1654902000">06.11.2022</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/5c7ec5413a460dc895a7798c37ce609f43ad36b0/c94b0/assets/images/profiles/profile-29.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Kareem Q. Weeks</span>
                                            </td>
                                            <td class="email">eget@aliquetProinvelit.co.uk</td>
                                            <td class="id">#9761</td>
                                            <td class="date" data-signed="1622329200">05.30.2021</td>
                                            <td class="status"><span class="legend-circle bg-danger"></span>Overdue</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <span class="avatar-title text-bg-danger-soft">DH</span>
                                                </div>
                                                <span class="name fw-bold">Drew R. Hatfield</span>
                                            </td>
                                            <td class="email">Integer.vulputate@facilisi.edu</td>
                                            <td class="id">#4798</td>
                                            <td class="date" data-signed="1626562800">07.18.2021</td>
                                            <td class="status"><span class="legend-circle bg-success"></span>Successful</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/693e2209e9a62e54c60745dd18751d70c3dec10a/9d43e/assets/images/profiles/profile-22.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Kitra F. Strickland</span>
                                            </td>
                                            <td class="email">Donec.consectetuer@dolorNulla.net</td>
                                            <td class="id">#1246</td>
                                            <td class="date" data-signed="1651791600">05.06.2022</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/5dfa4398a7f2beddbcfa617402e193f2f13aaa94/2ecb0/assets/images/profiles/profile-28.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Jack Dennis</span>
                                            </td>
                                            <td class="email">Quisque.libero.lacus@torquentper.com</td>
                                            <td class="id">#1099</td>
                                            <td class="date" data-signed="1658703600">07.25.2022</td>
                                            <td class="status"><span class="legend-circle bg-success"></span>Successful</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/d48629dc873bf03c72cd58826b5de65bc800aaac/5bb69/assets/images/profiles/profile-10.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Tyler Hartman</span>
                                            </td>
                                            <td class="email">arcu.imperdiet@Pellentesqueultriciesdignissim.com</td>
                                            <td class="id">#9151</td>
                                            <td class="date" data-signed="1651359600">05.01.2022</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/14bd6c6c1ba1296a1542d31d7dd9490e8bc9e472/d1f70/assets/images/profiles/profile-18.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Hally Gilmore</span>
                                            </td>
                                            <td class="email">lacus.Etiam@Pellentesquehabitantmorbi.net</td>
                                            <td class="id">#9846</td>
                                            <td class="date" data-signed="1633302000">10.04.2021</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                </div>
                                            </td>
                                            <td>
                                                <div class="avatar avatar-circle avatar-xs me-2">
                                                    <img src="https://d33wubrfki0l68.cloudfront.net/b12e43e592a36b25ced24c52bc8ae78595f1f2c6/2ceab/assets/images/profiles/profile-24.jpeg" alt="..." class="avatar-img" width="30" height="30">
                                                </div>
                                                <span class="name fw-bold">Rosalyn Cherry</span>
                                            </td>
                                            <td class="email">at.egestas.a@eunullaat.co.uk</td>
                                            <td class="id">#9564</td>
                                            <td class="date" data-signed="1593558000">07.01.2021</td>
                                            <td class="status"><span class="legend-circle bg-warning"></span>Pending</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div> <!-- / .table-responsive -->

                            <div class="card-footer">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="me-5 text-secondary small">
                                        Showing: <span class="list-pagination-page-first"></span> - <span class="list-pagination-page-last"></span> of <span class="list-pagination-pages"></span>
                                    </div>

                                    <!-- Pagination -->
                                    <ul class="pagination list-pagination mb-0"></ul>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div> <!-- / .row -->
            </div> <!-- / .container-fluid -->
                </body>
                
                <script src="${pageContext.request.contextPath}/Template/assets/js/theme.bundle.js"></script>
                <link rel="stylesheet" href="${pageContext.request.contextPath}/Template/assets/css/theme.bundle.css" id="stylesheetLTR">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/Template/assets/css/theme.rtl.bundle.css" id="stylesheetRTL">
            
            <%@ include file="/commons/admin/footer.jsp" %>