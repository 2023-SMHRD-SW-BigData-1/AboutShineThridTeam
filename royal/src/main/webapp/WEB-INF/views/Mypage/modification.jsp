<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../../../assets/img/favicon/favicon.ico" />

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
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/Shine-Comm.css" />
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/Shine-comm-post-column.css" />
    <link rel="stylesheet" href="resources/assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="resources/assets/css/demo.css" />
    <link rel="stylesheet" href="resources/assets/vendor/css/scss/comm-post-colmn.css">

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="resources/assets/vendor/libs/node-waves/node-waves.css" />
    <link rel="stylesheet" href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="resources/assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="resources/assets/vendor/libs/apex-charts/apex-charts.css" />
    <link rel="stylesheet" href="resources/assets/vendor/libs/swiper/swiper.css" />
    <link rel="stylesheet" href="resources/assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="resources/assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="resources/assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
<title>Insert title here</title>
</head>
<body>
<nav id="navi">
    <ul id="menu">
        <li class="main"><a href="javascript:modal('modal_menu')">Login</a></li>
    </ul>
</nav>
  <div id="modal_menu">
  <div id="container" class="container">
    <!-- FORM SECTION -->
    <div class="row">
      <!-- SIGN UP -->
      <div class="col align-items-center flex-col sign-up">
        <div class="form-wrapper align-items-center"></div>
      </div>
      <!-- END SIGN UP -->
      <!-- SIGN IN -->
      <div class="col align-items-center flex-col sign-in">
        <div class="form-wrapper align-items-center">
          <div class="form sign-in">
            <div class="input-group">
              <i class='bx bxs-user'></i>
              <input type="text" placeholder="Email">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="text" placeholder="Name">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="tel" placeholder="Phone Number">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="password" placeholder="Password">
            </div>
            <div class=" d-flex justify-content-between Shine-Mody-btn">
                <button class="w-50">Sign in</button>
                <button class="w-50">Cancel</button>
            </div>
            <p>
              <span>
                Already have an Acoount?
              </span>
              <b>
                Sign In here
              </b>
            </p>
          </div>
        </div>
        <div class="form-wrapper">
        </div>
      </div>
      <!-- END SIGN IN -->
    </div>
    <!-- END FORM SECTION -->
    <!-- CONTENT SECTION -->
    <div class="row content-rows">
      <!-- SIGN IN CONTENT -->
      <div class="col align-items-center flex-col">
        <div class="text sign-in">
          <h2>
            Welcome
          </h2>
        </div>
      </div>
      <!-- END SIGN IN CONTENT -->
    </div>
    <!-- END CONTENT SECTION -->
    <button class="menuClose" onClick="modalClose('modal_menu')">&times;</button>
  </div>
</div>
</body>
</html>