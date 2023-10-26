<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
    <link rel="stylesheet" href="../../../assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="../../../assets/vendor/fonts/tabler-icons.css" />
    <link rel="stylesheet" href="../../../assets/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-Comm.css"/>
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
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
    <title>comm-list</title>
    <link rel="stylesheet" href="comm-list.css">

</head>

<body>

    <section class="notice" style="width: 1100px;">
        <div class="page-title">
            <div class="container">
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
            <div class="container" >
                <table class="board-table">
                    <thead>
                        <tr>
                            <th scope="col" class="th-num" >번호</th>
                            <th scope="col" class="th-title" >제목</th>
                            <th scope="col" class="th-ctt" >글쓴이</th>
                            <th scope="col" class="th-ctt" >날짜</th>
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
            <div class="col-sm-12 col-md-6 w-75" >
                <div class="dataTables_paginate paging_simple_numbers"
                    id="DataTables_Table_0_paginate">
                    <ul class="pagination" style="margin-left: 45%;">
                        <li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous"><a
                                aria-controls="DataTables_Table_0" aria-disabled="true" aria-role="link"
                                data-dt-idx="previous" tabindex="0" class="page-link">Previous</a></li>
                        <li class="paginate_button page-item active"><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" aria-current="page" data-dt-idx="0" tabindex="0"
                                class="page-link">1</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" data-dt-idx="1" tabindex="0" class="page-link">2</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" data-dt-idx="2" tabindex="0" class="page-link">3</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" data-dt-idx="3" tabindex="0" class="page-link">4</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" data-dt-idx="4" tabindex="0" class="page-link">5</a></li>
                        <li class="paginate_button page-item next" id="DataTables_Table_0_next"><a href="#"
                                aria-controls="DataTables_Table_0" aria-role="link" data-dt-idx="next" tabindex="0"
                                class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
            <div class="w-25">
                <div class="d-flex justify-content-end" >
                    <button style="height: 30px; border-radius: 4px; background-color: #7367F0; border: none; color: #fff;" class="w-50">글쓰기</button>
                </div>
            </div>
        </div>
    </section>
</body>

</html>