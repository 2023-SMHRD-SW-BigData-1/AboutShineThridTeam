<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-Login-Join.css">
  <title>Document</title>
</head>
<body>
  <nav id="navi">
    <ul id="menu">
        <li class="main"><a href="javascript:modal('modal_menu')">Login</a></li>
    </ul>
</nav>
  <div id="modal_menu" >
  <div id="container" class="container" >
    <!-- FORM SECTION -->
    <div class="row" >
      <!-- SIGN IN -->
      <div class="col align-items-center flex-col sign-in ">

        <div class="form-wrapper align-items-center Shine-verification">
          <div class="form sign-in">
            <div class="input-group">
              <i class='bx bxs-user'></i>
              <input type="email" placeholder="Email">
            </div>
            <button>
                Verification
            </button>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="password" placeholder="Verification Code">
            </div>
          </div>
        </div>
        <div class="form-wrapper">
    
        </div>
      </div>
      <!-- END SIGN IN -->
    </div>
    <!-- END FORM SECTION -->
    <!-- CONTENT SECTION -->
    <div class="row content-row ">
      <!-- SIGN IN CONTENT -->
      <div class="col align-items-center ">
        <div class="text sign-in ">
          <h2>
            Verificationtes
          </h2>
        </div>
        <div class="img sign-in">
    
        </div>
      </div>
      <!-- END SIGN IN CONTENT -->
     
    </div>
    <!-- END CONTENT SECTION -->
    <button class="menuClose" onClick="modalClose('modal_menu')">&times;</button>
  </div>
</div>
</body>
<script src="../../../assets/vendor/js/Shine-Login-Join.js"></script>
</html>