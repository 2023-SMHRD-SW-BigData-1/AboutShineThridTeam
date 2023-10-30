<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />


<title>comm-ctt</title>

<meta name="description" content="" />
<head>
<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="/assets/img/favicon/favicon.ico" />

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
<link rel="stylesheet" href="/assets/vendor/css/rtl/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="/assets/vendor/css/rtl/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="/assets/vendor/libs/node-waves/node-waves.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/typeahead-js/typeahead.css" />
<link rel="stylesheet" href="/assets/vendor/libs/quill/katex.css" />
<link rel="stylesheet" href="/assets/vendor/libs/quill/editor.css" />
<link rel="stylesheet" href="/assets/vendor/libs/select2/select2.css" />

<!-- bootstrap-->
<link rel="stylesheet"
	href="/assets/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
<!-- swiper-->
<link rel="stylesheet" href="/assets/vendor/libs/swiper/swiper.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />

<!-- Page CSS -->
<link rel="stylesheet"
	href="/assets/vendor/libs/apex-charts/apex-charts.css" />
<link rel="stylesheet" href="/assets/vendor/css/pages/app-email.css" />
<link rel="stylesheet" href="/assets/vendor/css/pages/app-chat.css" />

<!-- Shine CSS -->
<link rel="stylesheet" href="/assets/vendor/css/rtl/Shine-Comm.css" />
<link rel="stylesheet"
	href="/assets/vendor/css/scss/Shine-comm-post-colmn.css" />


<!-- Helpers -->
<script src="/assets/vendor/js/helpers.js"></script>
<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
<script src="/assets/vendor/js/template-customizer.js"></script>



</head>

<body>
	<section class="notice Sh-notice">
		<div class="page-title">
			<div class="container">
				<h3>Content</h3>
			</div>
		</div>

		<!-------------------- board area ------------------>
		<ul class="w-100 d-flex justify-content-between mt-3 Sh-comm-head">
			<li class="d-flex mx-5">
				<h4 class="mx-3">num</h4>
				<h4 class="mx-3">제목</h4>
			</li>
			<li class="d-flex mx-5">
				<div>
					<input type="submit" value="수정" class="Sh-comm-ctt-comment-input">
				</div>
				<div>
					<input type="submit" value="삭제" class="Sh-comm-ctt-comment-input">
				</div>
				<div>
					<input type="submit" value="돌아가기" class="Sh-comm-ctt-comment-input">
				</div>
			</li>
		</ul>
		<div id="board-list">
			<div class="containe">
				<ul class="w-100 p-2 d-flex justify-content-between Sh-comm-head">
					<li
						class="w-0 d-flex justify-content-between mx-5 Sh-comm-head-ctt1 ">
						<div class="d-flex justify-content-between align-items-center">
							<i class="mx-2 fa-solid fa-user Sh-fa-user Sh-fa-imot"></i>
							<h4>${detailMap.getCommuCreateNm() }</h4>
						</div>
						<div
							class="d-flex justify-content-between align-items-center mx-3">
							<i class="mx-2 fa-solid fa-clock Sh-fa-clock Sh-fa-imot"></i>
							<h4>${detailMap.getCommuCreateAt() }</h4>
						</div>
					</li>
					<li class="d-flex justify-content-between mx-5 Sh-comm-head-ctt2">
						<div
							class="d-flex justify-content-end align-items-center Sh-comm-head-ctt2-a1 chat-thumb">
							<i class="mx-2 fa-solid fa-comments Sh-fa-imot"></i>
							<h4>채팅</h4>
						</div>
						<div
							class="d-flex justify-content-end align-items-center Sh-comm-head-ctt2-a2 email-thumb"
							data-bs-toggle="modal" data-bs-target="#emailComposeSidebar"
							id="emailComposeSidebarLabel">
							<i class="mx-2 fa-solid fa-envelope Sh-fa-imot"></i>
							<h4>이메일</h4>
						</div> <a href="#"
						class="d-flex justify-content-end align-items-center Sh-comm-head-ctt2-a3">
							<i class="mx-2 fa-solid fa-money-check Sh-fa-imot"></i>
							<h4>글목록확인</h4>
					</a>
					</li>
				</ul>
				<div class="w-100 p-2 Sh-comm-body">
					<table class="w-100 Sh-comm-ctt-box">
						<tbody class="Sh-comm-ctt-body">
							<tr>
								<th class="p-3">
									<p>${detailMap.getCommuText() }</p>
								</th>
							</tr>
						</tbody>
					</table>
				</div>
				<!-------------------- board area ------------------>


				<!-------------------- comment-wright-btn ------------------>
				<ul class="w-100 d-flex justify-content-between mt-3 Sh-comm-head">
					<li class="d-flex mx-5">
						<div>
							<input type="submit" value="댓글달기"
								class="Sh-comm-ctt-comment-input">
						</div>
					</li>
				</ul>
				<!-------------------- comment-wright-btn ------------------>



				<!-------------------- comment-wright ------------------>
				<ul class="w-100 d-flex justify-content-between mt-3 Sh-comm-head">
					<li class="d-flex mx-5">
						<h4 class="mx-3">박충희</h4>
					</li>
					<li class="d-flex mx-5">
						<div>
						<form action="">
							<input type="submit" value="등록" class="Sh-comm-ctt-comment-input">
						</form>
						</div>
						<div>
							<input type="submit" value="취소" class="Sh-comm-ctt-comment-input">
						</div>
					</li>
				</ul>
				<div class="w-100 p-2 Sh-comm-body">
					<table class="Sh-comment-ctt-box">
						<tbody class="Sh-comm-ctt-body">
							<tr>
								<th class="p-3"><input type="textarea" class="w-100 p-1">
								</th>
							</tr>
						</tbody>
					</table>
				</div>
				<!-------------------- comment-wright ------------------>

				<!-------------------- comment-ctt ------------------>
				<ul class="w-100 d-flex justify-content-between mt-3 Sh-comm-head">
					<li class="d-flex mx-5">
						<h4 class="mx-3">박충희</h4>
						<h4>(2023.10.01</h4>
						<h4 class="mx-3">17:40)</h4>
					</li>
					<li class="d-flex mx-5">
						<div>
							<button id="mSubmit" type="submit" value="수정" class="Sh-comm-ctt-comment-input"></button>
						</div>
						<div>
							<button id="dSubmit" type="submit" value="삭제" class="Sh-comm-ctt-comment-input"></button>
							
						</div>
					</li>
				</ul>
				<div class="w-100 p-2 Sh-comm-body">
					<table class="Sh-comment-ctt-box">
						<tbody class="Sh-comm-ctt-body">
							<tr>
								<th class="p-3">
									<p>댓글란입니덩Lorem ipsum dolor sit amet consectetur adipisicing
										elit. Nobis explicabo rerum voluptatem. Nihil ut minus,
										suscipit iste voluptates earum saepe eos neque sed, fuga
										beatae numquam nobis consectetur ipsum cupiditate! Non
										voluptas eveniet numquam libero! Eligendi necessitatibus esse
										accusamus ipsa assumenda, molestiae quos culpa voluptatibus ut
										tempore quas, reprehenderit quis quaerat iusto porro libero
										odio. Labore rem ea nobis voluptatibus! Ab, dolores vitae
										voluptate minus commodi sit. Provident sint rem, sapiente</p>
								</th>
							</tr>
						</tbody>
					</table>
				</div>
				<!-------------------- comment-ctt ------------------>
				<!-------------------- comment-mody ------------------>
				<ul class="w-100 d-flex justify-content-between mt-3 Sh-comm-head">
					<li class="d-flex mx-5">
						<h4 class="mx-3">박충희</h4>
					</li>
					<li class="d-flex mx-5">
						<div>
							<input type="submit" value="수정" class="Sh-comm-ctt-comment-input">
						</div>
						<div>
							<input type="submit" value="취소" class="Sh-comm-ctt-comment-input">
						</div>
					</li>
				</ul>
				<div class="w-100 p-2 Sh-comm-body">
					<table class="Sh-comment-ctt-box">
						<tbody class="Sh-comm-ctt-body">
							<tr>
								<th class="p-3"><input type="textarea" class="w-100 p-1">
								</th>
							</tr>
						</tbody>
					</table>
				</div>
				<!-------------------- comment-mody ------------------>



			</div>
		</div>
		</div>
		</div>


		<!-------------------- Pagenation ------------------>
		<div class="row mx-0 mt-3">
			<div class="col-sm-12 col-md-6 w-75">
				<div class="dataTables_paginate paging_simple_numbers"
					id="DataTables_Table_0_paginate">
					<ul class="pagination Sh-ctt-pagination">
						<li class="paginate_button page-item previous disabled"
							id="DataTables_Table_0_previous"><a
							aria-controls="DataTables_Table_0" aria-disabled="true"
							aria-role="link" data-dt-idx="previous" tabindex="0"
							class="page-link">Previous</a></li>
						<li class="paginate_button page-item active"><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							aria-current="page" data-dt-idx="0" tabindex="0"
							class="page-link">1</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="1" tabindex="0" class="page-link">2</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="2" tabindex="0" class="page-link">3</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="3" tabindex="0" class="page-link">4</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="4" tabindex="0" class="page-link">5</a></li>
						<li class="paginate_button page-item next"
							id="DataTables_Table_0_next"><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="next" tabindex="0" class="page-link">Next</a></li>
					</ul>
				</div>
			</div>
			<div class="w-25">
				<div class="d-flex justify-content-end">
					<button
						style="height: 30px; border-radius: 4px; background-color: #7367F0; border: none; color: #fff;"
						class="w-50">글쓰기</button>
				</div>
			</div>
		</div>
		<!-------------------- Pagenation ------------------>
		<!-------------------- modal - chat ------------------>
	</section>
	<div id="modal-chat"
		class="w-100 h-100 top-0 left-0 justify-content-center align-items-center">
		<div id="modalBox-chat">
			<div class="col app-chat-history bg-body">
				<div class="chat-history-wrapper">
					<div class="chat-history-header border-bottom">
						<div class="d-flex justify-content-between align-items-center">
							<div class="d-flex overflow-hidden align-items-center">
								<i
									class="ti ti-menu-2 ti-sm cursor-pointer d-lg-none d-block me-2"
									data-bs-toggle="sidebar" data-overlay=""
									data-target="#app-chat-contacts"></i>
								<div class="flex-shrink-0 avatar">
									<img src="/assets/img/avatars/2.png" alt="Avatar"
										class="rounded-circle" data-bs-toggle="sidebar"
										data-overlay="" data-target="#app-chat-sidebar-right">
								</div>
								<div class="chat-contact-info flex-grow-1 ms-2">
									<h6 class="m-0">박충희</h6>
									<small class="user-status text-muted">NextJS developer</small>
								</div>
							</div>
						</div>
					</div>
					<div class="chat-history-body bg-body ps ps--active-y">
						<ul class="list-unstyled chat-history">
							<li class="chat-message">
								<div class="d-flex overflow-hidden">
									<div class="chat-message-wrapper flex-grow-1">
										<div class="chat-message-text text-end">
											<p class="mb-0">How can we help? We're here for you! 😄</p>
										</div>
										<div class="text-end text-muted mt-1">
											<i class="ti ti-checks ti-xs me-1 text-success"></i> <small>10:00
												AM</small>
										</div>
									</div>
									<div class="user-avatar flex-shrink-0 ms-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/1.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
								</div>
							</li>
							<li class="chat-message">
								<div class="d-flex overflow-hidden">
									<div class="user-avatar flex-shrink-0 me-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/2.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
									<div class="chat-message-wrapper flex-grow-1">
										<div class="chat-message-text">
											<p class="mb-0">Hey John, I am looking for the best admin
												template.</p>
											<p class="mb-0">Could you please help me to find it out?
												🤔</p>
										</div>
										<div class="chat-message-text mt-2">
											<p class="mb-0">It should be Bootstrap 5 compatible.</p>
										</div>
										<div class="text-muted mt-1">
											<small>10:02 AM</small>
										</div>
									</div>
								</div>
							</li>
							<li class="chat-message chat-message-right">
								<div class="d-flex overflow-hidden">
									<div class="chat-message-wrapper flex-grow-1">
										<div class="chat-message-text text-end">
											<p class="mb-0">Vuexy has all the components you'll ever
												need in a app.</p>
										</div>
										<div class="text-end text-muted mt-1">
											<i class="ti ti-checks ti-xs me-1 text-success"></i> <small>10:03
												AM</small>
										</div>
									</div>
									<div class="user-avatar flex-shrink-0 ms-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/1.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
								</div>
							</li>
							<li class="chat-message">
								<div class="d-flex overflow-hidden">
									<div class="user-avatar flex-shrink-0 me-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/2.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
									<div class="chat-message-wrapper flex-grow-1">
										<div class="chat-message-text">
											<p class="mb-0">Looks clean and fresh UI. 😃</p>
										</div>
										<div class="chat-message-text mt-2">
											<p class="mb-0">It's perfect for my next project.</p>
										</div>
										<div class="chat-message-text mt-2">
											<p class="mb-0">How can I purchase it?</p>
										</div>
										<div class="text-muted mt-1">
											<small>10:05 AM</small>
										</div>
									</div>
								</div>
							</li>
							<li class="chat-message chat-message-right">
								<div class="d-flex overflow-hidden">
									<div class="chat-message-wrapper flex-grow-1">
										<div class="chat-message-text text-end">
											<p class="mb-0">Thanks, you can purchase it.</p>
										</div>
										<div class="text-end text-muted mt-1">
											<i class="ti ti-checks ti-xs me-1 text-success"></i> <small>10:06
												AM</small>
										</div>
									</div>
									<div class="user-avatar flex-shrink-0 ms-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/1.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
								</div>
							</li>
							<li class="chat-message">
								<div class="d-flex overflow-hidden">
									<div class="user-avatar flex-shrink-0 me-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/2.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
									<div class="chat-message-wrapper flex-grow-1">
										<div class="chat-message-text">
											<p class="mb-0">I will purchase it for sure. 👍</p>
										</div>
										<div class="chat-message-text mt-2">
											<p class="mb-0">Thanks.</p>
										</div>
										<div class="text-muted mt-1">
											<small>10:08 AM</small>
										</div>
									</div>
								</div>
							</li>
							<li class="chat-message chat-message-right">
								<div class="d-flex overflow-hidden">
									<div class="chat-message-wrapper flex-grow-1">
										<div class="chat-message-text text-end">
											<p class="mb-0">Great, Feel free to get in touch.</p>
										</div>
										<div class="text-end text-muted mt-1">
											<i class="ti ti-checks ti-xs me-1 text-success"></i> <small>10:10
												AM</small>
										</div>
									</div>
									<div class="user-avatar flex-shrink-0 ms-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/1.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
								</div>
							</li>
							<li class="chat-message">
								<div class="d-flex overflow-hidden">
									<div class="user-avatar flex-shrink-0 me-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/2.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
									<div class="chat-message-wrapper flex-grow-1">
										<div class="chat-message-text">
											<p class="mb-0">Do you have design files for Vuexy?</p>
										</div>
										<div class="text-muted mt-1">
											<small>10:15 AM</small>
										</div>
									</div>
								</div>
							</li>
							<li class="chat-message chat-message-right">
								<div class="d-flex overflow-hidden">
									<div class="chat-message-wrapper flex-grow-1 w-50">
										<div class="chat-message-text text-end">
											<p class="mb-0">Yes that's correct documentation file,
												Design files are included with the template.</p>
										</div>
										<div class="text-end text-muted mt-1">
											<i class="ti ti-checks ti-xs me-1"></i> <small>10:15
												AM</small>
										</div>
									</div>
									<div class="user-avatar flex-shrink-0 ms-3">
										<div class="avatar avatar-sm">
											<img src="/assets/img/avatars/1.png" alt="Avatar"
												class="rounded-circle">
										</div>
									</div>
								</div>
							</li>
						</ul>
						<div class="ps__rail-x" style="left: 0px; bottom: -97px;">
							<div class="ps__thumb-x" tabindex="0"
								style="left: 0px; width: 0px;"></div>
						</div>
						<div class="ps__rail-y"
							style="top: 97px; height: 997px; right: 0px;">
							<div class="ps__thumb-y" tabindex="0"
								style="top: 89px; height: 907px;"></div>
						</div>
					</div>
					<!-- Chat message form -->
					<div class="chat-history-footer shadow-sm">
						<form
							class="form-send-message d-flex justify-content-between align-items-center">
							<input
								class="form-control message-input border-0 me-3 shadow-none"
								placeholder="Type your message here">
							<div class="message-actions d-flex align-items-center">
								<i class="speech-to-text ti ti-microphone ti-sm cursor-pointer"></i>
								<label for="attach-doc" class="form-label mb-0"> <i
									class="ti ti-photo ti-sm cursor-pointer mx-3"></i> <input
									type="file" id="attach-doc" hidden="">
								</label>
								<button
									class="btn btn-primary d-flex send-msg-btn waves-effect waves-light">
									<i class="ti ti-send me-md-1 me-0"></i> <span
										class="align-middle d-md-inline-block d-none">Send</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<button id="modalClose-chat" class="top-0 right-0">&times;</button>
		</div>
	</div>
	<!-------------------- modal - chat ------------------>
	<!-------------------- modal - email ------------------>
	<div id="modal-email"
		class="w-100 h-100 top-0 left-0 justify-content-center align-items-center">
		<div id="modalBox-email">
			<div class="modal-content p-0">
				<div class="modal-header py-3 bg-body">
					<h5 class="modal-title fs-5 mx-3">Compose Mail</h5>
				</div>
				<div class="modal-body flex-grow-1 pb-sm-0 p-4 py-2">
					<form class="email-compose-form">
						<div class="email-compose-to d-flex align-items-center">
							<label class="form-label mb-0" for="emailContacts">To:</label> <input
								type="text" class="mx-3 w-75 border-0 border-bottom">
						</div>
						<hr class="container-m-nx my-2">
						<div class="email-compose-subject d-flex align-items-center mb-2">
							<label for="email-subject" class="form-label mb-0">Subject:</label>
							<input type="text"
								class="form-control border-0 shadow-none flex-grow-1 mx-2"
								id="email-subject" placeholder="Project Details">
						</div>
						<div class="email-compose-message container-m-nx">
							<div class="d-flex justify-content-end ">
								<div
									class="email-editor-toolbar border-0 w-100 border-top ql-toolbar ql-snow">
									<span class="d-flex ql-formats me-0">

										<button class="ql-bold" type="button">
											<svg viewBox="0 0 18 18">
                        <path class="ql-stroke"
													d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z">
                        </path>
                        <path class="ql-stroke"
													d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z">
                        </path>
                      </svg>
										</button>
										<button class="ql-italic" type="button">
											<svg viewBox="0 0 18 18">
                        <line class="ql-stroke" x1="7" x2="13" y1="4"
													y2="4"></line>
                        <line class="ql-stroke" x1="5" x2="11" y1="14"
													y2="14"></line>
                        <line class="ql-stroke" x1="8" x2="10" y1="14"
													y2="4"></line>
                      </svg>
										</button>
										<button class="ql-underline" type="button">
											<svg viewBox="0 0 18 18">
                        <path class="ql-stroke"
													d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3"></path>
                        <rect class="ql-fill" height="1" rx="0.5"
													ry="0.5" width="12" x="3" y="15"></rect>
                      </svg>
										</button>
										<button class="ql-list" value="ordered" type="button">
											<svg viewBox="0 0 18 18">
                        <line class="ql-stroke" x1="7" x2="15" y1="4"
													y2="4"></line>
                        <line class="ql-stroke" x1="7" x2="15" y1="9"
													y2="9"></line>
                        <line class="ql-stroke" x1="7" x2="15" y1="14"
													y2="14"></line>
                        <line class="ql-stroke ql-thin" x1="2.5"
													x2="4.5" y1="5.5" y2="5.5"></line>
                        <path class="ql-fill"
													d="M3.5,6A0.5,0.5,0,0,1,3,5.5V3.085l-0.276.138A0.5,0.5,0,0,1,2.053,3c-0.124-.247-0.023-0.324.224-0.447l1-.5A0.5,0.5,0,0,1,4,2.5v3A0.5,0.5,0,0,1,3.5,6Z">
                        </path>
                        <path class="ql-stroke ql-thin"
													d="M4.5,10.5h-2c0-.234,1.85-1.076,1.85-2.234A0.959,0.959,0,0,0,2.5,8.156"></path>
                        <path class="ql-stroke ql-thin"
													d="M2.5,14.846a0.959,0.959,0,0,0,1.85-.109A0.7,0.7,0,0,0,3.75,14a0.688,0.688,0,0,0,.6-0.736,0.959,0.959,0,0,0-1.85-.109">
                        </path>
                      </svg>
										</button>
										<button class="ql-list" value="bullet" type="button">
											<svg viewBox="0 0 18 18">
                        <line class="ql-stroke" x1="6" x2="15" y1="4"
													y2="4"></line>
                        <line class="ql-stroke" x1="6" x2="15" y1="9"
													y2="9"></line>
                        <line class="ql-stroke" x1="6" x2="15" y1="14"
													y2="14"></line>
                        <line class="ql-stroke" x1="3" x2="3" y1="4"
													y2="4"></line>
                        <line class="ql-stroke" x1="3" x2="3" y1="9"
													y2="9"></line>
                        <line class="ql-stroke" x1="3" x2="3" y1="14"
													y2="14"></line>
                      </svg>
										</button>
										<button class="ql-link" type="button">
											<svg viewBox="0 0 18 18">
                        <line class="ql-stroke" x1="7" x2="11" y1="7"
													y2="11"></line>
                        <path class="ql-even ql-stroke"
													d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z">
                        </path>
                        <path class="ql-even ql-stroke"
													d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z">
                        </path>
                      </svg>
										</button>
										<button class="ql-image" type="button">
											<svg viewBox="0 0 18 18">
                        <rect class="ql-stroke" height="10" width="12"
													x="3" y="4"></rect>
                        <circle class="ql-fill" cx="6" cy="7" r="1"></circle>
                        <polyline class="ql-even ql-fill"
													points="5 12 5 11 7 9 8 10 11 7 13 9 13 12 5 12"></polyline>
                      </svg>
										</button> <label for="attach-file"><i
											class="ti ti-paperclip cursor-pointer ms-2"></i></label> <input
										type="file" name="file-input" class="d-none" id="attach-file">
										<div class="d-flex align-items-center w-100">
											<div class="dropdown mxl-auto">
												<button class="btn p-0" type="button"
													id="dropdownMoreActions" data-bs-toggle="dropdown"
													aria-haspopup="true" aria-expanded="false">
													<i class="ti ti-dots-vertical"></i>
												</button>
												<ul class="dropdown-menu"
													aria-labelledby="dropdownMoreActions">
													<li><button type="button" class="dropdown-item">Add
															Label</button></li>
													<li><button type="button" class="dropdown-item">Plain
															text mode</button></li>
													<li>
														<hr class="dropdown-divider">
													</li>
													<li><button type="button" class="dropdown-item">Print</button></li>
													<li><button type="button" class="dropdown-item">Check
															Spelling</button></li>
												</ul>
											</div>
										</div>
									</span>
								</div>
							</div>
							<div
								class="email-editor border-0 border-top ql-container ql-snow">
								<div class="ql-editor ql-blank" data-gramm="false"
									contenteditable="true"
									data-placeholder="Write your message... ">
									<p>
										<br>
									</p>
								</div>
								<div class="ql-clipboard" contenteditable="true" tabindex="-1"></div>
								<div class="ql-tooltip ql-hidden">
									<a class="ql-preview" rel="noopener noreferrer" target="_blank"
										href="about:blank"></a><input type="text"
										data-formula="e=mc^2" data-link="https://quilljs.com"
										data-video="Embed URL"><a class="ql-action"></a><a
										class="ql-remove"></a>
								</div>
							</div>
						</div>
						<hr class="container-m-nx mt-0 mb-2">
						<div
							class="email-compose-actions d-flex justify-content-end align-items-center mt-3 mb-3">
							<div class="d-flex justify-content-end btn-group">
								<button type="reset" class="btn" data-bs-dismiss="modal"
									aria-label="Close">
									<i class="ti ti-trash"></i>
								</button>
								<button type="reset"
									class="btn btn-primary waves-effect waves-light"
									data-bs-dismiss="modal" aria-label="Close">
									<i class="ti ti-send ti-xs me-1"></i>Send
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<button id="modalClose-email" class="top-0 right-0">&times;</button>
		</div>
	</div>
	<!-------------------- modal - email ------------------>

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
	<script
		src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="/assets/vendor/libs/hammer/hammer.js"></script>
	<script src="/assets/vendor/libs/i18n/i18n.js"></script>
	<script src="/assets/vendor/libs/typeahead-js/typeahead.js"></script>
	<script src="/assets/vendor/js/menu.js"></script>

	<!-- endbuild -->

	<!-- Vendors JS -->
	<script
		src="/assets/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.js"></script>

	<!-- Main JS -->
	<script src="/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="/assets/js/app-chat.js"></script>

	<!-- Shine Js-->
	<script src="/assets/js/shine-modal.js"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	
		var urlData = '/community/list';
		var commuNo = '${commuNo}';
		$.ajax({
			type : 'post',
			url : urlData+"/detail/{commuNo}",
			async : true,
			haeders : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'json',
			data : JSON.stringify({
				"commuNo" : commuNo,
				"no" : replyNo,
				"nick" : userNick,
				"reply" : replyText
			}),
			succcess : function(result){
				window.location.href='http://localhost:8586/community/list/detail/{commuNo}';
			},
			error : function(request, status, error) { 
		        console.log(error)
		    }
		})
	</script>
</body>

</html>