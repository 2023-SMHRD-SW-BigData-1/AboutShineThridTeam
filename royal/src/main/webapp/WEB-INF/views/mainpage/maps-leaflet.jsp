<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default"
  data-assets-path="../../../assets/" data-template="horizontal-menu-template">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta charset="utf-8" />
  <!--wind-->
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
  <!--wind-->
    

  <title>Leaflet - Maps | Vuexy - Bootstrap Admin Template</title>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="resources/assets/img/favicon/favicon.ico" />

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
    rel="stylesheet" />

  <!-- Icons -->
  <link rel="stylesheet" href="resources/assets/vendor/fonts/fontawesome.css" />
  <link rel="stylesheet" href="resources/assets/vendor/fonts/tabler-icons.css" />
  <link rel="stylesheet" href="resources/assets/vendor/fonts/flag-icons.css" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="resources/assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="resources/assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="resources/assets/vendor/css/rtl/Shine-maps-leaflet.css"/>
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-maps-leaflet.css"/>
  <link rel="stylesheet" href="resources/assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="resources/assets/vendor/libs/node-waves/node-waves.css" />
  <link rel="stylesheet" href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
  <link rel="stylesheet" href="resources/assets/vendor/libs/typeahead-js/typeahead.css" />
  <link rel="stylesheet" href="resources/assets/vendor/libs/leaflet/leaflet.css" />

  <!-- Page CSS! -->

  <!-- Helpers -->
  <script src="../../../assets/vendor/js/helpers.js"></script>
  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
  <script src="../../../assets/vendor/js/template-customizer.js"></script>
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="../../../assets/js/config.js"></script>

  <!--wind-->
  <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"></script>
  <script src="https://api.windy.com/assets/map-forecast/libBoot.js"></script>
  <!--wind-->


</head>
<body>
  
  <!-- Layout wrapper -->
  <div class="layout-wrapper layout-navbar-full layout-horizontal layout-without-menu">
    <div class="layout-container" >
      <!-- Navbar -->
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

          <div  class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
              <i class="ti ti-menu-2 ti-sm"></i>
            </a>
          </div>

          <div  class="navbar-nav-right d-flex align-items-center"  id="navbar-collapse">
            <ul class="navbar-nav flex-row align-items-center ms-auto" >



               <!-- Search -->
               <li class="nav-item navbar-search-wrapper me-2 me-xl-0 " >
                <a class="nav-link search-toggler" href="javascript:void(0);">
                  <i class="ti ti-search ti-md"></i>
                </a>
              </li>
              <!-- /Search -->


              <!-- Community-->
              <li class="nav-item navbar-community-wrapper me-2 me-xl-0" >
                <a class="nav-link" href="javascript:void(0);" >
                  <i class="ti ti-building-community rounded-circle ti-md"></i>
                </a>
                
              </li>
              <!-- Community-->

              

              <!-- Quick links  -->
              <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-2 me-xl-0">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown"
                  data-bs-auto-close="outside" aria-expanded="false">
                  <i class="ti ti-layout-grid-add ti-md"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-end py-0">
                  <div class="dropdown-menu-header border-bottom">
                    <div class="dropdown-header d-flex align-items-center py-3">
                      <h5 class="text-body mb-0 me-auto">Shortcuts</h5>
                      <a href="javascript:void(0)" class="dropdown-shortcuts-add text-body" data-bs-toggle="tooltip"
                        data-bs-placement="top" title="Add shortcuts"><i class="ti ti-sm ti-apps"></i></a>
                    </div>
                  </div>
                  <div class="dropdown-shortcuts-list scrollable-container">
                    <div class="row row-bordered overflow-visible g-0">
                      <div class="dropdown-shortcuts-item col">
                        <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                          <i class="ti ti-calendar fs-4"></i>
                        </span>
                        <a href="app-calendar.html" class="stretched-link">Calendar</a>
                        <small class="text-muted mb-0">Appointments</small>
                      </div>
                      <div class="dropdown-shortcuts-item col">
                        <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                          <i class="ti ti-file-invoice fs-4"></i>
                        </span>
                        <a href="app-invoice-list.html" class="stretched-link">Invoice App</a>
                        <small class="text-muted mb-0">Manage Accounts</small>
                      </div>
                    </div>
                    <div class="row row-bordered overflow-visible g-0">
                      <div class="dropdown-shortcuts-item col">
                        <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                          <i class="ti ti-users fs-4"></i>
                        </span>
                        <a href="app-user-list.html" class="stretched-link">User App</a>
                        <small class="text-muted mb-0">Manage Users</small>
                      </div>
                      <div class="dropdown-shortcuts-item col">
                        <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                          <i class="ti ti-lock fs-4"></i>
                        </span>
                        <a href="app-access-roles.html" class="stretched-link">Role Management</a>
                        <small class="text-muted mb-0">Permission</small>
                      </div>
                    </div>
                    <div class="row row-bordered overflow-visible g-0">
                      <div class="dropdown-shortcuts-item col">
                        <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                          <i class="ti ti-chart-bar fs-4"></i>
                        </span>
                        <a href="index.html" class="stretched-link">Dashboard</a>
                        <small class="text-muted mb-0">User Profile</small>
                      </div>
                      <div class="dropdown-shortcuts-item col">
                        <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                          <i class="ti ti-settings fs-4"></i>
                        </span>
                        <a href="pages-account-settings-account.html" class="stretched-link">Setting</a>
                        <small class="text-muted mb-0">Account Settings</small>
                      </div>
                    </div>
                    <div class="row row-bordered overflow-visible g-0">
                      <div class="dropdown-shortcuts-item col">
                        <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                          <i class="ti ti-help fs-4"></i>
                        </span>
                        <a href="pages-faq.html" class="stretched-link">FAQs</a>
                        <small class="text-muted mb-0">FAQs & Articles</small>
                      </div>
                      <div class="dropdown-shortcuts-item col">
                        <span class="dropdown-shortcuts-icon rounded-circle mb-2">
                          <i class="ti ti-square fs-4"></i>
                        </span>
                        <a href="modal-examples.html" class="stretched-link">Modals</a>
                        <small class="text-muted mb-0">Useful Popups</small>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <!-- Quick links -->

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

              <!--style-switcher-->
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
              <!--style-switcher-->
              <!-- User -->
              <li class="nav-item navbar-dropdown dropdown-user dropdown me-2 me-xl-0" >
                
                  <a class="dropdown-item" href="pages-account-settings-account.html">
                  <div class="avatar avatar-online">
                    <img src="../../../assets/img/avatars/1.png" alt class="h-auto rounded-circle" />
                  </div>
                </a>
                
                <li>
                  <a class="dropdown-item" href="auth-login-cover.html" target="_blank">
                    <i class="ti ti-logout me-2 ti-sm"></i>
                    <span class="align-middle">Log Out</span>
                  </a>
                </li>
              </li>
              <!--/ User -->
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
      <!-- / Navbar -->
      <!-- Layout container -->
      <div class="layout-page">
        <!-- Content wrapper -->
        <div class="content-wrapper" >
          
          
          <!-- Content -->
          <!-- User Location -->
          <div id="windy" class="Shine-windy" style="width: 100%;; height: 95vh; position: relative;"></div>
          <!-- /User Location -->
          <!-- Korea Table -->
          <div class="col-md-3 mb-4 Shine-Korea-table" 
          	style="
          		position: absolute;
  				z-index: 1;
  				top: 20%; right: 5%;
  				opacity: .8;
          ">
            <div class="card h-100 hi" >
              <div class="card-header d-flex justify-content-between pb-0"   >
                <div class="card-title mb-0 w-100 text-xl-center"  >
                  <h3 class="mb-0" >2023년 11월 10일</h3>
                </div>
                <div class="dropdown">
                  <button
                    class="btn p-0"
                    type="button"
                    id="supportTrackerMenu"
                    data-bs-toggle="dropdown"
                    aria-haspopup="true"
                    aria-expanded="false">
                    <i class="ti ti-dots-vertical ti-sm text-muted"></i>
                  </button>
                  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="supportTrackerMenu">
                    <a class="dropdown-item" href="javascript:void(0);">View More</a>
                    <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                  </div>
                </div>
              </div>
              <div class="w-100">
                <h3 class="mx-lg-3">대한민국</h3>
              </div>
              <div class="card-body pt-0">
                <div class="row" >
                  <div class="col-12 col-sm-4 col-md-12 col-lg-4">
                    <div class="mt-lg-4 mt-lg-2 mb-lg-4 mb-2 pt-1" >
                      <h1 class="mb-0">164</h1>
                      <p class="mb-0">Total Tickets</p>
                    </div>
                    <ul class="p-0 m-0">
                      <li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1">
                        <div class="badge rounded bg-label-primary p-1"><i class="ti ti-ticket ti-sm"></i></div>
                        <div>
                          <h6 class="mb-0 text-nowrap">발전소 수</h6>
                          <small class="text-muted">32,000개</small>
                        </div>
                      </li>
                      <li class="d-flex gap-3 align-items-center mb-lg-3 pb-1">
                        <div class="badge rounded bg-label-info p-1">
                          <i class="ti ti-circle-check ti-sm"></i>
                        </div>
                        <div>
                          <h6 class="mb-0 text-nowrap">현재 발전량</h6>
                          <small class="text-muted">10,100kw</small>
                        </div>
                      </li>
                      <li class="d-flex gap-3 align-items-center pb-1">
                        <div class="badge rounded bg-label-warning p-1"><i class="ti ti-clock ti-sm"></i></div>
                        <div>
                          <h6 class="mb-0 text-nowrap">예측 발전량</h6>
                          <small class="text-muted">15,100kw</small>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="col-12 col-sm-8 col-md-12 col-lg-8" style="border: 1px solid red;">
                    <div id="weeklyEarningReports" ></div>
                  </div>
                </div>
                <!--Profit-->
                <div class="card-header d-flex justify-content-between pb-0"   >
                  <div class="card-title mb-0 w-100 text-xl-center"  >
                    <h3 class="mb-0" >실시간 SMP</h3>
                    <h3 class="mb-0" >101.15</h3>
                  </div>
                  <div class="card-title mb-0 w-100 text-xl-center"  >
                    <h3 class="mb-0" >실시간 REC</h3>
                    <h3 class="mb-0" >73,500원</h3>
                  </div>
                </div>
                <div class="row" style="border: 1px solid red;">
                  <div class="w-100" style=" margin : 0 auto; border: 1px solid green;">
                    <div id="profitLastMonth" style="min-height: 90px;">
                      <div id="apexcharts0cn4v6ix" class="apexcharts-canvas apexcharts0cn4v6ix apexcharts-theme-light" style="margin: 0; width: 164px; height: 90px; border: 1px solid blue;">
                        <svg id="SvgjsSvg3088" width="164" height="90" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG3090" class="apexcharts-inner apexcharts-graphical" transform="translate(6, 12)"><defs id="SvgjsDefs3089"><clipPath id="gridRectMask0cn4v6ix"><rect id="SvgjsRect3095" width="157" height="75" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMask0cn4v6ix"></clipPath><clipPath id="nonForecastMask0cn4v6ix"></clipPath><clipPath id="gridRectMarkerMask0cn4v6ix"><rect id="SvgjsRect3096" width="169" height="91" x="-9" y="-9" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><line id="SvgjsLine3094" x1="0" y1="0" x2="0" y2="73" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="73" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG3113" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG3114" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG3123" class="apexcharts-grid"><g id="SvgjsG3124" class="apexcharts-gridlines-horizontal"></g><g id="SvgjsG3125" class="apexcharts-gridlines-vertical"><line id="SvgjsLine3126" x1="0" y1="0" x2="0" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3127" x1="30.2" y1="0" x2="30.2" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3128" x1="60.4" y1="0" x2="60.4" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3129" x1="90.6" y1="0" x2="90.6" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3130" x1="120.8" y1="0" x2="120.8" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine3131" x1="151" y1="0" x2="151" y2="73" stroke="#dbdade" stroke-dasharray="6" stroke-linecap="butt" class="apexcharts-gridline"></line></g><line id="SvgjsLine3133" x1="0" y1="73" x2="151" y2="73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine3132" x1="0" y1="1" x2="0" y2="73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG3097" class="apexcharts-line-series apexcharts-plot-series"><g id="SvgjsG3098" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath3112" d="M 0 73L 30.2 42.58333333333333L 60.4 60.83333333333333L 90.6 24.33333333333333L 120.8 42.58333333333333L 151 6.083333333333329" fill="none" fill-opacity="1" stroke="rgba(0,207,232,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-line" index="0" clip-path="url(#gridRectMask0cn4v6ix)" pathTo="M 0 73L 30.2 42.58333333333333L 60.4 60.83333333333333L 90.6 24.33333333333333L 120.8 42.58333333333333L 151 6.083333333333329" pathFrom="M -1 73L -1 73L 30.2 73L 60.4 73L 90.6 73L 120.8 73L 151 73"></path><g id="SvgjsG3099" class="apexcharts-series-markers-wrap" data:realIndex="0"><g id="SvgjsG3101" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3102" r="3.5" cx="0" cy="73" class="apexcharts-marker no-pointer-events wmxukq4hk" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="3.5"></circle><circle id="SvgjsCircle3103" r="3.5" cx="30.2" cy="42.58333333333333" class="apexcharts-marker no-pointer-events w2ujqybvef" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="3.5"></circle></g><g id="SvgjsG3104" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3105" r="3.5" cx="60.4" cy="60.83333333333333" class="apexcharts-marker no-pointer-events wgs1k79nw" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="3.5"></circle></g><g id="SvgjsG3106" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3107" r="3.5" cx="90.6" cy="24.33333333333333" class="apexcharts-marker no-pointer-events w8to4okej" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="3.5"></circle></g><g id="SvgjsG3108" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3109" r="3.5" cx="120.8" cy="42.58333333333333" class="apexcharts-marker no-pointer-events w09ukyn9m" stroke="transparent" fill="#00cfe8" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="3.5"></circle></g><g id="SvgjsG3110" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask0cn4v6ix)"><circle id="SvgjsCircle3111" r="5" cx="151" cy="6.083333333333329" class="apexcharts-marker no-pointer-events w4t0bni6h" stroke="#00cfe8" fill="#ffffff" fill-opacity="1" stroke-width="3.2" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="5"></circle></g></g></g><g id="SvgjsG3100" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine3134" x1="0" y1="0" x2="151" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine3135" x1="0" y1="0" x2="151" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG3136" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG3137" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG3138" class="apexcharts-point-annotations"></g><rect id="SvgjsRect3139" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect3140" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><rect id="SvgjsRect3093" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG3121" class="apexcharts-yaxis" rel="0" transform="translate(-8, 0)"><g id="SvgjsG3122" class="apexcharts-yaxis-texts-g"></g></g><g id="SvgjsG3091" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 45px;"></div></div></div>
                  </div>
                </div>
                <!--Profit-->
              </div>
            </div>
          </div>
          <!-- Korea Table -->
          <!-- personal Table -->
          <div class="col-md-3 mb-4 Shine-personal-table Shine-hidden" 
          style="
          	position: absolute;
  			z-index: 1;
  			top: 20%; left: 5%;
  			opacity: .8;
          ">
            <div class="card h-100 " >
              <div class="card-header d-flex justify-content-between pb-0 "   >
                <div class="card-title mb-0 w-100 text-xl-center"  >
                  <h3 class="mb-0" >2023년 11월 10일</h3>
                </div>
                <div class="dropdown">
                  <button
                    class="btn p-0"
                    type="button"
                    id="supportTrackerMenu"
                    data-bs-toggle="dropdown"
                    aria-haspopup="true"
                    aria-expanded="false">
                    <i class="ti ti-dots-vertical ti-sm text-muted"></i>
                  </button>
                  <div class="dropdown-menu dropdown-menu-end" aria-labelledby="supportTrackerMenu">
                    <a class="dropdown-item" href="javascript:void(0);">View More</a>
                    <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                  </div>
                </div>
              </div>
              <div class="w-100 border-bottom" >
                <h3 class="mx-lg-3">대한민국</h3>
              </div>
              <div class="card-body pt-0">
                <div class="row border-bottom pb-4">
                  <div class="col-12 col-sm-4 col-md-12 col-lg-4">
                    <div class="mt-lg-4 mt-lg-2 mb-lg-4 mb-2 pt-1" >
                      <h1 class="mb-0">164</h1>
                      <p class="mb-0">Total Tickets</p>
                    </div>
                    <ul class="p-0 m-0">
                      <li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1">
                        <div class="badge rounded bg-label-primary p-1"><i class="ti ti-ticket ti-sm"></i></div>
                        <div>
                          <h6 class="mb-0 text-nowrap">발전소 수</h6>
                          <small class="text-muted">32,000개</small>
                        </div>
                      </li>
                      <li class="d-flex gap-3 align-items-center mb-lg-3 pb-1">
                        <div class="badge rounded bg-label-info p-1">
                          <i class="ti ti-circle-check ti-sm"></i>
                        </div>
                        <div>
                          <h6 class="mb-0 text-nowrap">현재 발전량</h6>
                          <small class="text-muted">10,100kw</small>
                        </div>
                      </li>
                      <li class="d-flex gap-3 align-items-center pb-1">
                        <div class="badge rounded bg-label-warning p-1"><i class="ti ti-clock ti-sm"></i></div>
                        <div>
                          <h6 class="mb-0 text-nowrap">예측 발전량</h6>
                          <small class="text-muted">15,100kw</small>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="col-12 col-sm-8 col-md-12 col-lg-8">
                    <div id="weeklyEarningReports" ></div>
                  </div>
                </div>
                <!--Profit-->
                <div class="w-100 mt-3 d-flex align-items-baseline" >
                  <h3 class="mx-lg-5" style="color: red;">* 확인</h3>
                  <h4>패널이상 감지</h4>
                </div>
            </div>
          </div>
          <!-- /personal Table -->

          <!-- Content -->
              <!-- User Location -->
              <div id="windy"></div>
              <!-- /User Location -->
          <!--/ Content -->


          <div class="content-backdrop fade"></div>
        </div>
        <!--/ Content wrapper -->
      </div>

      <!--/ Layout container -->
    </div>
  </div>

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
  <script src="../../../assets/vendor/libs/leaflet/leaflet.js"></script>

  <!-- Main JS -->
  <script src="../../../assets/js/main.js"></script>

  <!-- Page JS -->
  <script src="../../../assets/js/maps-leaflet.js"></script>

  <!--wind-->
  <script>
    const options = {
        // Required: API key
        key: 'BYAVf6FAuDCtLxDkiuQYnDXSP4WNHuks', // REPLACE WITH YOUR KEY !!!

        // Put additional console output
        verbose: true,

        // Optional: Initial state of the map
        lat: 35.169803,
        lon: 126.801717,
        zoom: 5,
    };

    // Initialize Windy API
    windyInit(options, windyAPI => {
        // windyAPI is ready, and contain 'map', 'store',
        // 'picker' and other usefull stuff

        const { map } = windyAPI;
        // .map is instance of Leaflet map

        L.popup()
            .setLatLng([35.15, 126.85])
            .setContent('Hello World')
            .openOn(map);
    });
</script>
<!--wind-->

</body>
</html>