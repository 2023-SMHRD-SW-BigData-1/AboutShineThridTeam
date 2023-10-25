<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/assets/"
  data-template="horizontal-menu-template">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Account settings - Pages | Vuexy - Bootstrap Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
      rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="/assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="/assets/vendor/fonts/tabler-icons.css" />
    <link rel="stylesheet" href="/assets/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/assets/vendor/libs/node-waves/node-waves.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="/assets/vendor/libs/select2/select2.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="/assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/assets/js/config.js"></script>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-navbar-full layout-horizontal layout-without-menu">
      <div class="layout-container">
        pages-profile-account

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="py-3 mb-4"><span class="text-muted fw-light">User Profile /</span> Notifications</h4>

              <!-- Navbar pills -->
            <div class="row">
              <div class="col-md-12">
                <ul class="nav nav-pills flex-column flex-sm-row mb-4">
                  <li class="nav-item">
                    <a class="nav-link active" href="/user/login/userProfile"><i class="ti-xs ti ti-user-check me-1"></i>
                      Profile</a>
                  </li>
                  <li class="nav-item" >
                    <a class="nav-link" href="/user/login/userProfile/modify"><i class="ti-xs ti ti-link me-1"></i>
                      Account</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/email"><i
                        class="ti-xs ti ti-mail me-1"></i> email</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/notification"><i
                        class="ti-xs ti ti-bell me-1"></i> notification</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/Teams"><i 
                      class="ti-xs ti ti-users me-1"></i> Teams</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/Projects"><i 
                      class="ti-xs ti ti-layout-grid me-1"></i>Projects</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/Manager"><i 
                      class="ti-xs ti ti-map-pins me-1"></i>Manager</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--/ Navbar pills -->
                  <div class="card">
                    <!-- Notifications -->
                    <h5 class="card-header pb-1">Recent Devices</h5>
                    <div class="card-body">
                      <span
                        >We need permission from your browser to show notifications.
                        <span class="notificationRequest"><span class="fw-medium">Request Permission</span></span></span
                      >
                      <div class="error"></div>
                    </div>
                    <div class="table-responsive">
                      <table class="table table-striped border-top">
                        <thead>
                          <tr>
                            <th class="text-nowrap">Type</th>
                            <th class="text-nowrap text-center">Email</th>
                            <th class="text-nowrap text-center">Browser</th>
                            <th class="text-nowrap text-center">App</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td class="text-nowrap">New for you</td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck1" checked />
                              </div>
                            </td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck2" checked />
                              </div>
                            </td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck3" checked />
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-nowrap">Account activity</td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck4" checked />
                              </div>
                            </td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck5" checked />
                              </div>
                            </td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck6" checked />
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-nowrap">A new browser used to sign in</td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck7" checked />
                              </div>
                            </td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck8" checked />
                              </div>
                            </td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck9" />
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-nowrap">A new device is linked</td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck10" checked />
                              </div>
                            </td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck11" />
                              </div>
                            </td>
                            <td>
                              <div class="form-check d-flex justify-content-center">
                                <input class="form-check-input" type="checkbox" id="defaultCheck12" />
                              </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="card-body">
                      <h6>When should we send you notifications?</h6>
                      <form action="javascript:void(0);">
                        <div class="row">
                          <div class="col-sm-6">
                            <select id="sendNotification" class="form-select" name="sendNotification">
                              <option selected>Only when I'm online</option>
                              <option>Anytime</option>
                            </select>
                          </div>
                          <div class="mt-3">
                            <button type="submit" class="btn btn-primary me-2">Save changes</button>
                            <button type="reset" class="btn btn-label-secondary">Discard</button>
                          </div>
                        </div>
                      </form>
                    </div>
                    <!-- /Notifications -->
                  </div>
                </div>
              </div>
            </div>
            <!--/ Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl">
                <div
                  class="footer-container d-flex align-items-center justify-content-between py-2 flex-md-row flex-column">
                  <div>
                    ©
                    <script>
                      document.write(new Date().getFullYear());
                    </script>
                    , made with ❤️ by <a href="https://pixinvent.com" target="_blank" class="fw-medium">Pixinvent</a>
                  </div>
                  <div class="d-none d-lg-inline-block">
                    <a href="https://themeforest.net/licenses/standard" class="footer-link me-4" target="_blank"
                      >License</a
                    >
                    <a href="https://1.envato.market/pixinvent_portfolio" target="_blank" class="footer-link me-4"
                      >More Themes</a
                    >

                    <a
                      href="https://demos.pixinvent.com/vuexy-html-admin-template/documentation/"
                      target="_blank"
                      class="footer-link me-4"
                      >Documentation</a
                    >

                    <a href="https://pixinvent.ticksy.com/" target="_blank" class="footer-link d-none d-sm-inline-block"
                      >Support</a
                    >
                  </div>
                </div>
              </div>
            </footer>
            <!-- / Footer -->

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

    <script src="/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="/assets/vendor/libs/popper/popper.js"></script>
    <script src="/assets/vendor/js/bootstrap.js"></script>
    <script src="/assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="/assets/vendor/libs/hammer/hammer.js"></script>
    <script src="/assets/vendor/libs/i18n/i18n.js"></script>
    <script src="/assets/vendor/libs/typeahead-js/typeahead.js"></script>
    <script src="/assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="/assets/vendor/libs/select2/select2.js"></script>

    <!-- Main JS -->
    <script src="/assets/js/main.js"></script>

    <!-- Page JS -->
  </body>
</html>
