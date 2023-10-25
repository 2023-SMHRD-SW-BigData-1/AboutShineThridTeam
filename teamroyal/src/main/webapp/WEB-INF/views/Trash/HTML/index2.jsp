<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default"
  data-assets-path="../../../assets/" data-template="horizontal-menu-template">

<head>
  <meta charset="utf-8" />
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

  <title>Dashboard - Analytics | Vuexy - Bootstrap Admin Template</title>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="../../../assets/img/favicon/favicon.ico" />

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
    rel="stylesheet" />

  <!-- Icons -->
  <link rel="stylesheet" href="../../../assets/vendor/fonts/fontawesome.css" />
  <link rel="stylesheet" href="../../../assets/vendor/fonts/tabler-icons.css" />
  <link rel="stylesheet" href="../../../assets/vendor/fonts/flag-icons.css" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/theme-default.css"
    class="template-customizer-theme-css" />
  <link rel="stylesheet" href="../../../assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="../../../assets/vendor/libs/node-waves/node-waves.css" />
  <link rel="stylesheet" href="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
  <link rel="stylesheet" href="../../../assets/vendor/libs/typeahead-js/typeahead.css" />

  <link rel="stylesheet" href="../../../assets/vendor/libs/apex-charts/apex-charts.css" />
  <link rel="stylesheet" href="../../../assets/vendor/libs/swiper/swiper.css" />


  <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
  <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
  <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />

  <!-- Page CSS -->
  <link rel="stylesheet" href="../../../assets/vendor/css/pages/cards-advance.css" />
  <link rel="stylesheet" href="../../../assets/vendor/css/pages/page-auth.css" />


  <!-- Windy CSS-->
  <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"></script>
  <script src="https://api.windy.com/assets/map-forecast/libBoot.js"></script>

  <!-- Shine CSS-->
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/index.css">
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/index_modalSlide.css">
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-Comm.css">
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-high-spline.css">
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-high-barCharts-left.css">
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-high-barCharts-right.css">

  <!-- Helpers -->
  <script src="../../../assets/vendor/js/helpers.js"></script>
  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
  <script src="../../../assets/vendor/js/template-customizer.js"></script>
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="../../../assets/js/config.js"></script>
</head>

<body>
  <!-- Layout wrapper -->
  <div class="layout-wrapper layout-navbar-full layout-horizontal layout-without-menu">
    <div class="layout-container">
      <!---------------------------------------------------------------------------------- navi --------------------------------------------------------------------------------->
      <nav class="layout-navbar navbar navbar-expand-xl align-items-center bg-navbar-theme" id="layout-navbar">
        <div class="container-xxl">
          <div class="navbar-brand app-brand demo d-none d-xl-flex py-0 me-4">
            <a href="index.html" class="app-brand-link gap-2">
              <span class="app-brand-logo demo">
                <svg width="32" height="22" viewBox="0 0 32 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M0.00172773 0V6.85398C0.00172773 6.85398 -0.133178 9.01207 1.98092 10.8388L13.6912 21.9964L19.7809 21.9181L18.8042 9.88248L16.4951 7.17289L9.23799 0H0.00172773Z"
                    fill="#7367F0" />
                  <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd"
                    d="M7.69824 16.4364L12.5199 3.23696L16.5541 7.25596L7.69824 16.4364Z" fill="#161616" />
                  <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd"
                    d="M8.07751 15.9175L13.9419 4.63989L16.5849 7.28475L8.07751 15.9175Z" fill="#161616" />
                  <path fill-rule="evenodd" clip-rule="evenodd"
                    d="M7.77295 16.3566L23.6563 0H32V6.88383C32 6.88383 31.8262 9.17836 30.6591 10.4057L19.7824 22H13.6938L7.77295 16.3566Z"
                    fill="#7367F0" />
                </svg>
              </span>
              <span class="app-brand-text demo menu-text fw-bold">Vuexy</span>
            </a>
            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-xl-none">
              <i class="ti ti-x ti-sm align-middle"></i>
            </a>
          </div>
          <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
              <i class="ti ti-menu-2 ti-sm"></i>
            </a>
          </div>
          <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
            <ul class="navbar-nav flex-row align-items-center ms-auto">

              <!-- Search -->
              <li class="nav-item navbar-search-wrapper me-2 me-xl-0">
                <a class="nav-link search-toggler" href="javascript:void(0);">
                  <i class="ti ti-search ti-md"></i>
                </a>
              </li>
              <!-- /Search -->

              <!-- Column -->
              <li class="Sh-slide-comm-thumb  nav-item navbar-search-wrapper me-2 me-xl-0" style="cursor: pointer;">
                <i class="ti ti-book ti-md "></i>
              </li>
              <!-- /Column -->

              <!-- Notification -->
              <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-3 me-xl-1">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown"
                  data-bs-auto-close="outside" aria-expanded="false">
                  <i class="ti ti-bell ti-md"></i>
                  <span class="badge bg-danger rounded-pill badge-notifications">5</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-end py-0">
                  <li class="dropdown-menu-header border-bottom">
                    <div class="dropdown-header d-flex align-items-center py-3">
                      <h5 class="text-body mb-0 me-auto">Notification</h5>
                      <a href="javascript:void(0)" class="dropdown-notifications-all text-body" data-bs-toggle="tooltip"
                        data-bs-placement="top" title="Mark all as read"><i class="ti ti-mail-opened fs-4"></i></a>
                    </div>
                  </li>
                  <li class="dropdown-notifications-list scrollable-container">
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item list-group-item-action dropdown-notifications-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/1.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Congratulation Lettie 🎉</h6>
                            <p class="mb-0">Won the monthly best seller gold badge</p>
                            <small class="text-muted">1h ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Charles Franklin</h6>
                            <p class="mb-0">Accepted your connection</p>
                            <small class="text-muted">12hr ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/2.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">New Message ✉️</h6>
                            <p class="mb-0">You have new message from Natalie</p>
                            <small class="text-muted">1h ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <span class="avatar-initial rounded-circle bg-label-success"><i
                                  class="ti ti-shopping-cart"></i></span>
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Whoo! You have new order 🛒</h6>
                            <p class="mb-0">ACME Inc. made new order $1,154</p>
                            <small class="text-muted">1 day ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/9.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Application has been approved 🚀</h6>
                            <p class="mb-0">Your ABC project application has been approved.</p>
                            <small class="text-muted">2 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <span class="avatar-initial rounded-circle bg-label-success"><i
                                  class="ti ti-chart-pie"></i></span>
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Monthly report is generated</h6>
                            <p class="mb-0">July monthly financial report is generated</p>
                            <small class="text-muted">3 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/5.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">Send connection request</h6>
                            <p class="mb-0">Peter sent you connection request</p>
                            <small class="text-muted">4 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <img src="../../../assets/img/avatars/6.png" alt class="h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">New message from Jane</h6>
                            <p class="mb-0">Your have new message from Jane</p>
                            <small class="text-muted">5 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                      <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar">
                              <span class="avatar-initial rounded-circle bg-label-warning"><i
                                  class="ti ti-alert-triangle"></i></span>
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <h6 class="mb-1">CPU is running high</h6>
                            <p class="mb-0">CPU Utilization Percent is currently at 88.63%,</p>
                            <small class="text-muted">5 days ago</small>
                          </div>
                          <div class="flex-shrink-0 dropdown-notifications-actions">
                            <a href="javascript:void(0)" class="dropdown-notifications-read"><span
                                class="badge badge-dot"></span></a>
                            <a href="javascript:void(0)" class="dropdown-notifications-archive"><span
                                class="ti ti-x"></span></a>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </li>
                  <li class="dropdown-menu-footer border-top">
                    <a href="javascript:void(0);"
                      class="dropdown-item d-flex justify-content-center text-primary p-2 h-px-40 mb-1 align-items-center">
                      View all notifications
                    </a>
                  </li>
                </ul>
              </li>
              <!--/ Notification -->

              <!-- Style Switcher -->
              <li class="nav-item dropdown-style-switcher dropdown me-2 me-xl-0">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                  <i class="ti ti-md"></i>
                </a>
                <ul class="dropdown-menu dropdown-menu-end dropdown-styles">
                  <li>
                    <a class="dropdown-item" href="javascript:void(0);" data-theme="light">
                      <span class="align-middle"><i class="ti ti-sun me-2"></i>Light</span>
                    </a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="javascript:void(0);" data-theme="dark">
                      <span class="align-middle"><i class="ti ti-moon me-2"></i>Dark</span>
                    </a>
                  </li>
                </ul>
              </li>
              <!-- / Style Switcher-->

              <!-- User -->
              <li class="nav-item navbar-dropdown dropdown-user dropdown Sh-slide-profile-thumb">
                <div class="avatar avatar-online">
                  <img src="../../../assets/img/avatars/1.png" alt class="h-auto rounded-circle" />
                </div>
              </li>
              <!--/ User -->
              <!--/ Login, LogOut -->
              <li>
                <a href="auth-login-cover.html" class="btn btn-primary" target="_blank">
                  <i class="ti ti-logout me-2 ti-sm"></i>
                  <span class="d-none d-md-block">Log Out</span></a>
              </li>
              <li class="Sh-Login-thumb btn btn-primary">
                <span class="tf-icons ti ti-login scaleX-n1-rtl me-md-1"></span><span
                  class="d-none d-md-block">Login/Register</span>
              </li>
              <!--/ Login, LogOut -->
            </ul>
          </div>

          <!-- Search Small Screens -->
          <div class="navbar-search-wrapper search-input-wrapper container-xxl d-none">
            <input type="text" class="form-control search-input border-0" placeholder="Search..."
              aria-label="Search..." />
            <i class="ti ti-x ti-sm search-toggler cursor-pointer"></i>
          </div>
        </div>
      </nav>
      <!---------------------------------------------------------------------------------- navi ---------------------------------------------------------------------------------->
      <!---------------------------------------------------------------------------------- windy --------------------------------------------------------------------------------->
      <div class="main-windy">
        <div id="windy" class="w-100 vh-100" style="position: relative;"></div>
        <!---------------------------------------------------------------------------------- windy --------------------------------------------------------------------------------->
        <!--right-table-->
        <div class="Sh-kr-table w-100 top-50 p-4">
          <div class="Sh-kr-border-box w-100 h-100">
            <!--korea-table-->
            <div class="Sh-kr-inner-ctt-box">
              <div class="Sh-kr-inner-ctt1 w-100 border-bottom">
                <h3 class="text-align-center">대한민국</h3>
                <h4 class="text-align-left">2023.10.07</h4>
              </div>
              <div class="Sh-kr-inner-ctt2 border-bottom mb-4">
                <ul class="d-flex align-items-center p-0 w-100">
                  <li class="w-25">
                    <ul class="p-0">
                      <li class="w-100 p-2 text-align-center">발전소수</li>
                      <li class="w-100 p-2 text-align-center">32,000</li>
                    </ul>
                    <ul class="p-0">
                      <li class="w-100 p-2 text-align-center">현재 발전량(Kw)</li>
                      <li class="w-100 p-2 text-align-center">10,100</li>
                    </ul>
                    <ul class="p-0">
                      <li class="w-100 p-2 text-align-center">예측 발전량(Kw)</li>
                      <li class="w-100 p-2 text-align-center">15,100</li>
                    </ul>
                  </li>

                  <li class="w-75">
                    <div class="w-100 h-100">
                        <div id="sh-bar-chart-right"></div>
                    </div>
                  </li>
                </ul>
              </div>
            
              <div class="w-100 d-flex">
                <div class="Sh-kr-inner-ctt1 w-100">
                  <h5 class="text-align-center Sh-kr-inner-font">SMP</h5>
                  <h5 class="text-align-center Sh-kr-inner-font">101.15</h5>
                </div>
                <div class="Sh-kr-inner-ctt1 w-100">
                  <h5 class="text-align-center Sh-kr-inner-font">REC(원)</h5>
                  <h5 class="text-align-center Sh-kr-inner-font">30,015</h5>
                </div>
              </div>
              <div class="w-100" style="padding: 10px;">
                <div class="w-100 h-100">
                  <div id="sh-spline-chart"></div>
                </div>
              </div>
            
            </div><!--korea-table-->
          </div>
        </div><!--right-table-->



        <!--left-table-->
        <div class="Sh-pr-table w-100 top-50 p-4">
          <div class="Sh-pr-border-box w-100 h-100">
            <!--korea-table-->
            <div class="Sh-pr-inner-ctt-box">
              <div class="Sh-pr-inner-ctt1 w-100 border-bottom">
                <h3 class="text-align-center">xx개인발전소</h3>
                <h4 class="text-align-left">2023.10.07</h4>
              </div>
              <div class="Sh-pr-inner-ctt2 border-bottom mb-4">
                <ul class="d-flex align-items-center p-0 w-100">
                  <li class="w-25">
                    <ul class="p-0">
                      <li class="w-100 p-2 text-align-center">현재발전량(kw)</li>
                      <li class="w-100 p-2 text-align-center">10,100</li>
                    </ul>
                    <ul class="p-0">
                      <li class="w-100 p-2 text-align-center">예측 발전량(Kw)</li>
                      <li class="w-100 p-2 text-align-center">15,100</li>
                    </ul>
                    <ul class="p-0">
                      <li class="w-100 p-2 text-align-center">발전시간(hr)</li>
                      <li class="w-100 p-2 text-align-center">16</li>
                    </ul>
                    <ul class="p-0">
                      <li class="w-100 p-2 text-align-center">예상수익금(kw)</li>
                      <li class="w-100 p-2 text-align-center">16,300</li>
                    </ul>
                  </li>

                  <li class="w-75">
                    <div class="w-100 h-100">
                        <div id="sh-bar-chart-left"></div>
                    </div>
                  </li>
                </ul>
              </div>
            
            </div><!--korea-table-->
          </div>
        </div><!--left-table-->
      </div><!--main windy-->
    </div>
    <!---------------------------------------------------------------------------------- Layout --------------------------------------------------------------------------------->
  </div>
  </div>








  <!-------------------------------------------------------------------------------------- separate--------------------------------------------------------------------------------->
  <!-- slide-comm -->
  <div id="Sh-slide-comm" class="w-100 vh-100 top-0 justify-content-center align-items-center">
    <div id="Sh-slideBox-comm">
      <div class="notice" style="width: 100%; height: 100%; overflow: scroll;">
        <div class="Sh-slide-container w-100 m-auto">
          <div class="page-title">
            <div class="container mt-5">
              <h3>공지사항</h3>
            </div>
          </div>

          <!-- board seach area -->
          <div id="board-search">
            <div class="container">
              <div class="search-window">
                <form action="">
                  <div class="search-wrap">
                    <label for="search" class="blind">공지사항 내용 검색</label>
                    <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
                    <button type="submit" class="btn btn-dark">검색</button>
                  </div>
                </form>
              </div>
            </div>
          </div>

          <!-- board list area -->
          <div id="board-list">
            <div class="container">
              <table class="board-table">
                <thead>
                  <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-title">제목</th>
                    <th scope="col" class="th-user">글쓴이</th>
                    <th scope="col" class="th-date">날짜</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>3</td>
                    <th>
                      <a href="#!">내 생각에는 table 한개에</a>
                    </th>
                    <td>박충희</td>
                    <td>2017.06.15</td>
                  </tr>

                  <tr>
                    <td>2</td>
                    <th><a href="#!">for문 같은거를 써서 </a></th>
                    <td>박충희</td>
                    <td>2017.06.15</td>
                  </tr>

                  <tr>
                    <td>1</td>
                    <th><a href="#!">해야하지 않을까라는 생각을 해봅니다</a></th>
                    <td>박충희</td>
                    <td>2017.06.15</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row mx-0 mt-3">
            <div class="col-sm-12 col-md-6 w-75">
              <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                <ul class="pagination" style="margin-left: 45%;">
                  <li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous"><a
                      aria-controls="DataTables_Table_0" aria-disabled="true" aria-role="link" data-dt-idx="previous"
                      tabindex="0" class="page-link">Previous</a></li>
                  <li class="paginate_button page-item active"><a href="#" aria-controls="DataTables_Table_0"
                      aria-role="link" aria-current="page" data-dt-idx="0" tabindex="0" class="page-link">1</a></li>
                  <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" aria-role="link"
                      data-dt-idx="1" tabindex="0" class="page-link">2</a></li>
                  <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" aria-role="link"
                      data-dt-idx="2" tabindex="0" class="page-link">3</a></li>
                  <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" aria-role="link"
                      data-dt-idx="3" tabindex="0" class="page-link">4</a></li>
                  <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0" aria-role="link"
                      data-dt-idx="4" tabindex="0" class="page-link">5</a></li>
                  <li class="paginate_button page-item next" id="DataTables_Table_0_next"><a href="#"
                      aria-controls="DataTables_Table_0" aria-role="link" data-dt-idx="next" tabindex="0"
                      class="page-link">Next</a></li>
                </ul>
              </div>
            </div>
            <div class="w-25">
              <div class="d-flex justify-content-end">
                <button style=" height: 30px; border-radius: 4px; " class="btn btn-primary">글쓰기</button>
              </div>
            </div>
          </div>
          <button id="Sh-slideClose-comm" class="top-0 left-0">&times;</button>
        </div>
      </div>
    </div>
    <!-- slide-comm-->
    <!-- slide-profile -->
    <div id="Sh-slide-profile" class="w-100 vh-100 top-0 justify-content-center align-items-center">
      <div id="Sh-slideBox-profile">
        <div style="width: 100%; height: 100%; overflow: scroll;">

          <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="py-3 mb-4"><span class="text-muted fw-light">User Profile /</span> Profile</h4>



            <!-- Navbar pills -->
            <div class="row">
              <div class="col-md-12">
                <ul class="nav nav-pills flex-column flex-sm-row mb-4">
                  <li class="nav-item">
                    <a class="nav-link active" href="pages-profile-user.html"><i
                        class="ti-xs ti ti-user-check me-1"></i>
                      Profile</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="../Mypage/pages-account-settings-account.html"><i
                        class="ti-xs ti ti-link me-1"></i>
                      Account</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="app-email.html"><i class="ti-xs ti ti-mail me-1"></i> email</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="pages-account-settings-notifications.html"><i
                        class="ti-xs ti ti-bell me-1"></i> notification</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="pages-profile-teams.html"><i class="ti-xs ti ti-users me-1"></i> Teams</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="pages-profile-projects.html"><i
                        class="ti-xs ti ti-layout-grid me-1"></i>Projects</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="app-user-list.html"><i class="ti-xs ti ti-map-pins me-1"></i>Manager</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--/ Navbar pills -->

            <!-- Header -->
            <div class="row mt-5 ">
              <div class="col-12">
                <div class="card mb-4">
                  <div class="user-profile-header d-flex flex-column flex-sm-row text-sm-start text-center mb-4">
                    <div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
                      <img src="../../../assets/img/avatars/14.png" alt="user image"
                        class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
                    </div>
                    <div class="flex-grow-1 mt-3 mt-sm-5">
                      <div
                        class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start mx-4 flex-md-row flex-column gap-4">
                        <div class="user-profile-info">
                          <h4>John Doe</h4>
                          <ul
                            class="list-inline mb-0 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">
                            <li class="list-inline-item d-flex gap-1">
                              <i class="ti ti-color-swatch"></i> UX Designer
                            </li>
                            <li class="list-inline-item d-flex gap-1"><i class="ti ti-map-pin"></i> Vatican City</li>
                            <li class="list-inline-item d-flex gap-1">
                              <i class="ti ti-calendar"></i> Joined April 2021
                            </li>
                          </ul>
                        </div>
                        <a href="javascript:void(0)" class="btn btn-primary">
                          <i class="ti ti-check me-1"></i>Connected
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--/ Header -->

            <!-- User Profile Content -->
            <div class="row">
              <div class="col-xl-4 col-lg-5 col-md-5">
                <!-- About User -->
                <div class="card mb-4">
                  <div class="card-body">
                    <small class="card-text text-uppercase">About</small>
                    <ul class="list-unstyled mb-4 mt-3">
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-user text-heading"></i><span class="fw-medium mx-2 text-heading">Full
                          Name:</span> <span>John Doe</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-check text-heading"></i><span class="fw-medium mx-2 text-heading">Status:</span>
                        <span>Active</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-crown text-heading"></i><span class="fw-medium mx-2 text-heading">Role:</span>
                        <span>Developer</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-flag text-heading"></i><span class="fw-medium mx-2 text-heading">Country:</span>
                        <span>USA</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-file-description text-heading"></i><span
                          class="fw-medium mx-2 text-heading">Languages:</span> <span>English</span>
                      </li>
                    </ul>
                    <small class="card-text text-uppercase">Contacts</small>
                    <ul class="list-unstyled mb-4 mt-3">
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-phone-call"></i><span class="fw-medium mx-2 text-heading">Contact:</span>
                        <span>(123) 456-7890</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-brand-skype"></i><span class="fw-medium mx-2 text-heading">Skype:</span>
                        <span>john.doe</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-mail"></i><span class="fw-medium mx-2 text-heading">Email:</span>
                        <span>john.doe@example.com</span>
                      </li>
                    </ul>
                    <small class="card-text text-uppercase">Teams</small>
                    <ul class="list-unstyled mb-0 mt-3">
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-brand-angular text-danger me-2"></i>
                        <div class="d-flex flex-wrap">
                          <span class="fw-medium me-2 text-heading">Backend Developer</span><span>(126 Members)</span>
                        </div>
                      </li>
                      <li class="d-flex align-items-center">
                        <i class="ti ti-brand-react-native text-info me-2"></i>
                        <div class="d-flex flex-wrap">
                          <span class="fw-medium me-2 text-heading">React Developer</span><span>(98 Members)</span>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <!--/ About User -->
                <!-- Profile Overview -->
                <div class="card mb-4">
                  <div class="card-body">
                    <p class="card-text text-uppercase">Overview</p>
                    <ul class="list-unstyled mb-0">
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-check"></i><span class="fw-medium mx-2">Task Compiled:</span>
                        <span>13.5k</span>
                      </li>
                      <li class="d-flex align-items-center mb-3">
                        <i class="ti ti-layout-grid"></i><span class="fw-medium mx-2">Projects Compiled:</span>
                        <span>146</span>
                      </li>
                      <li class="d-flex align-items-center">
                        <i class="ti ti-users"></i><span class="fw-medium mx-2">Connections:</span> <span>897</span>
                      </li>
                    </ul>
                  </div>
                </div>
                <!--/ Profile Overview -->
              </div>
              <div class="col-xl-8 col-lg-7 col-md-7">
                <!-- Activity Timeline -->
                <div class="card card-action mb-4">
                  <div class="card-header align-items-center">
                    <h5 class="card-action-title mb-0">Activity Timeline</h5>
                    <div class="card-action-element">
                      <div class="dropdown">
                        <button type="button" class="btn dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown"
                          aria-expanded="false">
                          <i class="ti ti-dots-vertical text-muted"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                          <li><a class="dropdown-item" href="javascript:void(0);">Share timeline</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
                          <li>
                            <hr class="dropdown-divider" />
                          </li>
                          <li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="card-body pb-0">
                    <ul class="timeline ms-1 mb-0">
                      <li class="timeline-item timeline-item-transparent">
                        <span class="timeline-point timeline-point-primary"></span>
                        <div class="timeline-event">
                          <div class="timeline-header">
                            <h6 class="mb-0">Client Meeting</h6>
                            <small class="text-muted">Today</small>
                          </div>
                          <p class="mb-2">Project meeting with john @10:15am</p>
                          <div class="d-flex flex-wrap">
                            <div class="avatar me-2">
                              <img src="../../../assets/img/avatars/3.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="ms-1">
                              <h6 class="mb-0">Lester McCarthy (Client)</h6>
                              <span>CEO of Infibeam</span>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li class="timeline-item timeline-item-transparent">
                        <span class="timeline-point timeline-point-success"></span>
                        <div class="timeline-event">
                          <div class="timeline-header">
                            <h6 class="mb-0">Create a new project for client</h6>
                            <small class="text-muted">2 Day Ago</small>
                          </div>
                          <p class="mb-0">Add files to new design folder</p>
                        </div>
                      </li>
                      <li class="timeline-item timeline-item-transparent">
                        <span class="timeline-point timeline-point-danger"></span>
                        <div class="timeline-event">
                          <div class="timeline-header">
                            <h6 class="mb-0">Shared 2 New Project Files</h6>
                            <small class="text-muted">6 Day Ago</small>
                          </div>
                          <p class="mb-2">
                            Sent by Mollie Dixon
                            <img src="../../../assets/img/avatars/4.png" class="rounded-circle me-3" alt="avatar"
                              height="24" width="24" />
                          </p>
                          <div class="d-flex flex-wrap gap-2 pt-1">
                            <a href="javascript:void(0)" class="me-3">
                              <img src="../../../assets/img/icons/misc/doc.png" alt="Document image" width="15"
                                class="me-2" />
                              <span class="fw-medium text-heading">App Guidelines</span>
                            </a>
                            <a href="javascript:void(0)">
                              <img src="../../../assets/img/icons/misc/xls.png" alt="Excel image" width="15"
                                class="me-2" />
                              <span class="fw-medium text-heading">Testing Results</span>
                            </a>
                          </div>
                        </div>
                      </li>
                      <li class="timeline-item timeline-item-transparent border-transparent">
                        <span class="timeline-point timeline-point-info"></span>
                        <div class="timeline-event">
                          <div class="timeline-header">
                            <h6 class="mb-0">Project status updated</h6>
                            <small class="text-muted">10 Day Ago</small>
                          </div>
                          <p class="mb-0">Woocommerce iOS App Completed</p>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
                <!--/ Activity Timeline -->
                <div class="row">
                  <!-- Connections -->
                  <div class="col-lg-12 col-xl-6">
                    <div class="card card-action mb-4">
                      <div class="card-header align-items-center">
                        <h5 class="card-action-title mb-0">Connections</h5>
                        <div class="card-action-element">
                          <div class="dropdown">
                            <button type="button" class="btn dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown"
                              aria-expanded="false">
                              <i class="ti ti-dots-vertical text-muted"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                              <li><a class="dropdown-item" href="javascript:void(0);">Share connections</a></li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
                              <li>
                                <hr class="dropdown-divider" />
                              </li>
                              <li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="card-body">
                        <ul class="list-unstyled mb-0">
                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="../../../assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Cecilia Payne</h6>
                                  <small class="text-muted">45 Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-label-primary btn-icon btn-sm">
                                  <i class="ti ti-user-check ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="../../../assets/img/avatars/3.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Curtis Fletcher</h6>
                                  <small class="text-muted">1.32k Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-primary btn-icon btn-sm">
                                  <i class="ti ti-user-x ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="../../../assets/img/avatars/10.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Alice Stone</h6>
                                  <small class="text-muted">125 Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-primary btn-icon btn-sm">
                                  <i class="ti ti-user-x ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="../../../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Darrell Barnes</h6>
                                  <small class="text-muted">456 Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-label-primary btn-icon btn-sm">
                                  <i class="ti ti-user-check ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>

                          <li class="mb-3">
                            <div class="d-flex align-items-start">
                              <div class="d-flex align-items-start">
                                <div class="avatar me-2">
                                  <img src="../../../assets/img/avatars/12.png" alt="Avatar" class="rounded-circle" />
                                </div>
                                <div class="me-2 ms-1">
                                  <h6 class="mb-0">Eugenia Moore</h6>
                                  <small class="text-muted">1.2k Connections</small>
                                </div>
                              </div>
                              <div class="ms-auto">
                                <button class="btn btn-label-primary btn-icon btn-sm">
                                  <i class="ti ti-user-check ti-xs"></i>
                                </button>
                              </div>
                            </div>
                          </li>
                          <li class="text-center">
                            <a href="javascript:;">View all connections</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <!--/ Connections -->
                </div>
                <!-- Projects table -->
                <div class="card mb-4">
                  <div class="card-datatable table-responsive">
                    <table class="datatables-projects table border-top">
                      <thead>
                        <tr>
                          <th></th>
                          <th></th>
                          <th>Name</th>
                          <th>Leader</th>
                          <th>Team</th>
                          <th class="w-px-200">Status</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                    </table>
                  </div>
                </div>
                <!--/ Projects table -->
              </div>
            </div>
            <!--/ User Profile Content -->
          </div>

        </div>
        <button id="sh-slideClose-profile" class="top-0 left-0">&times;</button>
      </div>
    </div>
  </div>


  <!--sldie-profile-->
  <!-- Modal-Login/Register -->
  <div id="modal-login" class="w-100 vh-100 top-0 left-0 justify-content-center align-items-center">
    <div id="modalBox-login">
      <div class="d-flex justify-content-around">
        <!-- Login -->
        <div class="card">
          <div class="card-body">
            <!-- Logo -->
            <div class="app-brand justify-content-center mb-4 mt-2">
              <a href="index.html" class="app-brand-link gap-2">
                <span class="app-brand-logo demo">
                  <svg width="32" height="22" viewBox="0 0 32 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd"
                      d="M0.00172773 0V6.85398C0.00172773 6.85398 -0.133178 9.01207 1.98092 10.8388L13.6912 21.9964L19.7809 21.9181L18.8042 9.88248L16.4951 7.17289L9.23799 0H0.00172773Z"
                      fill="#7367F0" />
                    <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd"
                      d="M7.69824 16.4364L12.5199 3.23696L16.5541 7.25596L7.69824 16.4364Z" fill="#161616" />
                    <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd"
                      d="M8.07751 15.9175L13.9419 4.63989L16.5849 7.28475L8.07751 15.9175Z" fill="#161616" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
                      d="M7.77295 16.3566L23.6563 0H32V6.88383C32 6.88383 31.8262 9.17836 30.6591 10.4057L19.7824 22H13.6938L7.77295 16.3566Z"
                      fill="#7367F0" />
                  </svg>
                </span>
                <span class="app-brand-text demo text-body fw-bold ms-1">Vuexy</span>
              </a>
            </div>
            <!-- /Logo -->
            <h4 class="mb-1 pt-2">Welcome to Vuexy! 👋</h4>
            <p class="mb-4">Please sign-in to your account and start the adventure</p>

            <form id="formAuthentication" class="mb-3" action="index.html" method="POST">
              <div class="mb-3">
                <label for="email" class="form-label">Email or Username</label>
                <input type="text" class="form-control" id="email" name="email-username"
                  placeholder="Enter your email or username" autofocus />
              </div>
              <div class="mb-3 form-password-toggle">
                <div class="d-flex justify-content-between">
                  <label class="form-label" for="password">Password</label>
                  <a href="auth-forgot-password-cover.html">
                    <small>Forgot Password?</small>
                    </button>
                </div>
                <div class="input-group input-group-merge">
                  <input type="password" id="password" class="form-control" name="password"
                    placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                    aria-describedby="password" />
                  <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                </div>
              </div>
              <div class="mb-3">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="remember-me" />
                  <label class="form-check-label" for="remember-me"> Remember Me </label>
                </div>
              </div>
              <div class="mb-3">
                <button class="btn btn-primary d-grid w-100" type="submit">Sign in</button>
              </div>
            </form>
            <div class="divider my-4">
              <div class="divider-text">or</div>
            </div>

            <div class="d-flex justify-content-center">
              <a href="javascript:;" class="btn btn-icon btn-label-facebook me-3">
                <i class="tf-icons fa-brands fa-facebook-f fs-5"></i>
              </a>

              <a href="javascript:;" class="btn btn-icon btn-label-google-plus me-3">
                <i class="tf-icons fa-brands fa-google fs-5"></i>
              </a>

              <a href="javascript:;" class="btn btn-icon btn-label-twitter">
                <i class="tf-icons fa-brands fa-twitter fs-5"></i>
              </a>
            </div>
          </div>
        </div>
        <!--Login-->
        <!-- Register Card -->
        <div class="card">
          <div class="card-body">
            <!-- Logo -->
            <div class="app-brand justify-content-center mb-4 mt-2">
              <a href="index.html" class="app-brand-link gap-2">
                <span class="app-brand-logo demo">
                  <svg width="32" height="22" viewBox="0 0 32 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd"
                      d="M0.00172773 0V6.85398C0.00172773 6.85398 -0.133178 9.01207 1.98092 10.8388L13.6912 21.9964L19.7809 21.9181L18.8042 9.88248L16.4951 7.17289L9.23799 0H0.00172773Z"
                      fill="#7367F0" />
                    <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd"
                      d="M7.69824 16.4364L12.5199 3.23696L16.5541 7.25596L7.69824 16.4364Z" fill="#161616" />
                    <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd"
                      d="M8.07751 15.9175L13.9419 4.63989L16.5849 7.28475L8.07751 15.9175Z" fill="#161616" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
                      d="M7.77295 16.3566L23.6563 0H32V6.88383C32 6.88383 31.8262 9.17836 30.6591 10.4057L19.7824 22H13.6938L7.77295 16.3566Z"
                      fill="#7367F0" />
                  </svg>
                </span>
                <span class="app-brand-text demo text-body fw-bold ms-1">Vuexy</span>
              </a>
            </div>
            <!-- /Logo -->
            <h4 class="mb-1 pt-2">Adventure starts here 🚀</h4>
            <p class="mb-4">Make your app management easy and fun!</p>

            <form id="formAuthentication" class="mb-3" action="index.html" method="POST">
              <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username"
                  autofocus />
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter your email" />
              </div>
              <div class="mb-3 form-password-toggle">
                <label class="form-label" for="password">Password</label>
                <div class="input-group input-group-merge">
                  <input type="password" id="password" class="form-control" name="password"
                    placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                    aria-describedby="password" />
                  <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                </div>
              </div>

              <div class="mb-3">
                <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="terms-conditions" name="terms" />
                  <label class="form-check-label" for="terms-conditions">
                    I agree to
                    <a href="javascript:void(0);">privacy policy & terms</a>
                  </label>
                </div>
              </div>
              <button class="btn btn-primary d-grid w-100">Sign up</button>
            </form>
            <div class="divider my-4">
              <div class="divider-text">or</div>
            </div>

            <div class="d-flex justify-content-center">
              <a href="javascript:;" class="btn btn-icon btn-label-facebook me-3">
                <i class="tf-icons fa-brands fa-facebook-f fs-5"></i>
              </a>

              <a href="javascript:;" class="btn btn-icon btn-label-google-plus me-3">
                <i class="tf-icons fa-brands fa-google fs-5"></i>
              </a>

              <a href="javascript:;" class="btn btn-icon btn-label-twitter">
                <i class="tf-icons fa-brands fa-twitter fs-5"></i>
              </a>
            </div>
          </div>
        </div>
        <!-- Register Card -->
      </div>
      <button id="modalClose-login" class="top-0 right-0">&times;</button>
    </div>
  </div>
  <!-- Modal-Login/Register -->
  <!-------------------------------------------------------------------------------------- separate--------------------------------------------------------------------------------->







  <!-- Overlay -->
  <div class="layout-overlay layout-menu-toggle"></div>

  <!-- Drag Target Area To SlideIn Menu On Small Screens -->
  <div class="drag-target"></div>

  <!--/ Layout wrapper -->

  <!-- Core JS -->
  <!-- build:js assets/vendor/js/core.js -->

  <script src="../../../assets/vendor/libs/jquery/jquery.js"></script>
  <script src="../../../assets/vendor/libs/popper/popper.js"></script>
  <script src="../../../assets/vendor/js/bootstrap.js"></script>
  <script src="../../../assets/vendor/libs/node-waves/node-waves.js"></script>
  <script src="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="../../../assets/vendor/libs/hammer/hammer.js"></script>
  <script src="../../../assets/vendor/libs/i18n/i18n.js"></script>
  <script src="../../../assets/vendor/libs/typeahead-js/typeahead.js"></script>
  <script src="../../../assets/vendor/js/menu.js"></script>

  <!-- endbuild -->

  <!-- Vendors JS -->
  <script src="../../../assets/vendor/libs/apex-charts/apexcharts.js"></script>
  <script src="../../../assets/vendor/libs/swiper/swiper.js"></script>
  <script src="../../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>

  <!-- Windy, Main JS -->
  <script src="../../../assets/js/main.js"></script>

  <!-- Page JS -->
  <script src="../../../assets/js/dashboards-analytics.js"></script>

  <!-- High Carts-->
  <script src="../../../assets/code/highcharts.js"></script>
  <script src="../../../assets/code/modules/data.js"></script>
  <script src="../../../assets/code/modules/drilldown.js"></script>
  <script src="../../../assets/code/modules/exporting.js"></script>
  <script src="../../../assets/code/modules/export-data.js"></script>
  <script src="../../../assets/code/modules/accessibility.js"></script>

  <!-- Shine Js-->
  <script src="../../../assets/js/shine-modalSlide.js"></script>
  <script src="../../../assets/js/shine-bar-chart-left.js"></script>
  <script src="../../../assets/js/shine-bar-chart-right.js"></script>
  <script src="../../../assets/js/Shine-spline-chart.js"></script>
  
  
  <!--Data retrieved from https://gs.statcounter.com/browser-market-share#monthly-202201-202201-bar-->
  <script type="text/javascript"></script>
    
    
    
    
    
        
</body>

</html>