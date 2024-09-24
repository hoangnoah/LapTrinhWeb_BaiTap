<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
   
<!-- Sidebar-nav start -->
	<aside class="sidebar-nav-wrapper">
		<div class="navbar-logo">
			<a href="index.html"> <img
				src="${contextPath}/templates/admin/assets/images/logo/logo.svg" alt="logo" />
			</a>
		</div>
		<nav class="sidebar-nav">
			<ul>
				<li class="nav-item nav-item-has-children"><a href="#0"
					data-bs-toggle="collapse" data-bs-target="#ddmenu_1"
					aria-controls="ddmenu_1" aria-expanded="false"
					aria-label="Toggle navigation"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M8.74999 18.3333C12.2376 18.3333 15.1364 15.8128 15.7244 12.4941C15.8448 11.8143 15.2737 11.25 14.5833 11.25H9.99999C9.30966 11.25 8.74999 10.6903 8.74999 10V5.41666C8.74999 4.7263 8.18563 4.15512 7.50586 4.27556C4.18711 4.86357 1.66666 7.76243 1.66666 11.25C1.66666 15.162 4.83797 18.3333 8.74999 18.3333Z"></path>
                  <path
									d="M17.0833 10C17.7737 10 18.3432 9.43708 18.2408 8.75433C17.7005 5.14918 14.8508 2.29947 11.2457 1.75912C10.5629 1.6568 10 2.2263 10 2.91665V9.16666C10 9.62691 10.3731 10 10.8333 10H17.0833Z"></path>
                </svg>
					</span> <span class="text">Dashboard</span>
				</a>
					<ul id="ddmenu_1" class="collapse show dropdown-nav">
						<li><a href="index.html" class="active"> eCommerce </a></li>
						<li><a href="analytics-dashboard.html"> <span
								class="text"> Analytics <span class="pro-badge">Pro
								</span>
							</span>
						</a></li>
						<li><a href="crypto.html"> <span class="text">
									Crypto <span class="pro-badge">Pro </span>
							</span>
						</a></li>
						<li><a href="crm-dashboard.html"> <span class="text">
									CRM <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="marketing-dashboard.html"> <span
								class="text"> Marketing <span class="pro-badge">Pro</span>
							</span>
						</a></li>
					</ul></li>
				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_2" aria-controls="ddmenu_2"
					aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M11.8097 1.66667C11.8315 1.66667 11.8533 1.6671 11.875 1.66796V4.16667C11.875 5.43232 12.901 6.45834 14.1667 6.45834H16.6654C16.6663 6.48007 16.6667 6.50186 16.6667 6.5237V16.6667C16.6667 17.5872 15.9205 18.3333 15 18.3333H5.00001C4.07954 18.3333 3.33334 17.5872 3.33334 16.6667V3.33334C3.33334 2.41286 4.07954 1.66667 5.00001 1.66667H11.8097ZM6.66668 7.70834C6.3215 7.70834 6.04168 7.98816 6.04168 8.33334C6.04168 8.67851 6.3215 8.95834 6.66668 8.95834H10C10.3452 8.95834 10.625 8.67851 10.625 8.33334C10.625 7.98816 10.3452 7.70834 10 7.70834H6.66668ZM6.04168 11.6667C6.04168 12.0118 6.3215 12.2917 6.66668 12.2917H13.3333C13.6785 12.2917 13.9583 12.0118 13.9583 11.6667C13.9583 11.3215 13.6785 11.0417 13.3333 11.0417H6.66668C6.3215 11.0417 6.04168 11.3215 6.04168 11.6667ZM6.66668 14.375C6.3215 14.375 6.04168 14.6548 6.04168 15C6.04168 15.3452 6.3215 15.625 6.66668 15.625H13.3333C13.6785 15.625 13.9583 15.3452 13.9583 15C13.9583 14.6548 13.6785 14.375 13.3333 14.375H6.66668Z"></path>
                  <path
									d="M13.125 2.29167L16.0417 5.20834H14.1667C13.5913 5.20834 13.125 4.74197 13.125 4.16667V2.29167Z"></path>
                </svg>
					</span> <span class="text">Pages</span>
				</a>
					<ul id="ddmenu_2" class="collapse dropdown-nav">
						<li><a href="settings.html"> Settings </a></li>
						<li><a href="projects.html"> <span class="text">
									Projects <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="clients.html"> <span class="text">
									Clients <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="pricing.html"> <span class="text">
									Pricing <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="chat.html"> <span class="text"> Chat
									<span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="error-page.html"> <span class="text">
									Error Page <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="blank-page.html"> Blank Page </a></li>
					</ul></li>
				<li class="nav-item"><a href="kanban.html"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M2.49999 3.33333C2.03976 3.33333 1.66666 3.70643 1.66666 4.16666V7.49999C1.66666 7.96023 2.03976 8.33333 2.49999 8.33333H5.83332C6.29356 8.33333 6.66666 7.96023 6.66666 7.49999V4.16666C6.66666 3.70643 6.29356 3.33333 5.83332 3.33333H2.49999Z"></path>
                  <path
									d="M2.49999 11.6667C2.03976 11.6667 1.66666 12.0398 1.66666 12.5V15.8333C1.66666 16.2936 2.03976 16.6667 2.49999 16.6667H5.83332C6.29356 16.6667 6.66666 16.2936 6.66666 15.8333V12.5C6.66666 12.0398 6.29356 11.6667 5.83332 11.6667H2.49999Z"></path>
                  <path
									d="M8.33334 4.16667C8.33334 3.8215 8.61318 3.54167 8.95834 3.54167H17.7083C18.0535 3.54167 18.3333 3.8215 18.3333 4.16667C18.3333 4.51185 18.0535 4.79167 17.7083 4.79167H8.95834C8.61318 4.79167 8.33334 4.51185 8.33334 4.16667Z"></path>
                  <path
									d="M8.33334 7.5C8.33334 7.15483 8.61318 6.875 8.95834 6.875H14.7917C15.1368 6.875 15.4167 7.15483 15.4167 7.5C15.4167 7.84517 15.1368 8.125 14.7917 8.125H8.95834C8.61318 8.125 8.33334 7.84517 8.33334 7.5Z"></path>
                  <path
									d="M8.95834 11.875C8.61318 11.875 8.33334 12.1548 8.33334 12.5C8.33334 12.8452 8.61318 13.125 8.95834 13.125H17.7083C18.0535 13.125 18.3333 12.8452 18.3333 12.5C18.3333 12.1548 18.0535 11.875 17.7083 11.875H8.95834Z"></path>
                  <path
									d="M8.95834 15.2083C8.61318 15.2083 8.33334 15.4882 8.33334 15.8333C8.33334 16.1785 8.61318 16.4583 8.95834 16.4583H14.7917C15.1368 16.4583 15.4167 16.1785 15.4167 15.8333C15.4167 15.4882 15.1368 15.2083 14.7917 15.2083H8.95834Z"></path>
                </svg>
					</span> <span class="text"> Kanban <span class="pro-badge">Pro</span>
					</span>
				</a></li>
				<li class="nav-item"><a href="file-manager.html"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M18.3333 15C18.3333 15.9205 17.5872 16.6667 16.6667 16.6667H3.33332C2.41285 16.6667 1.66666 15.9205 1.66666 15V4.99999C1.66666 4.07952 2.41285 3.33333 3.33332 3.33333H7.64296C8.085 3.33333 8.50891 3.50892 8.82149 3.82149L10.3452 5.34517C10.6577 5.65774 11.0817 5.83333 11.5237 5.83333H16.6667C17.5872 5.83333 18.3333 6.57952 18.3333 7.49999V15Z"></path>
                  <path
									d="M16.4583 4.58333L16.0637 3.79399C15.9225 3.51166 15.6339 3.33333 15.3183 3.33333H10.1011L11.2291 4.46129C11.3072 4.53943 11.4132 4.58333 11.5237 4.58333H16.4583Z"></path>
                </svg>
					</span> <span class="text"> File Manager <span class="pro-badge">Pro</span>
					</span>
				</a></li>
				<li class="nav-item"><a href="profile.html"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M3.33334 11.6667C3.33334 10.7462 4.07954 10 5.00001 10H15C15.9205 10 16.6667 10.7462 16.6667 11.6667C16.6667 15.3486 13.6819 18.3333 10 18.3333C6.31811 18.3333 3.33334 15.3486 3.33334 11.6667Z"></path>
                  <path
									d="M13.3333 4.99999C13.3333 6.84094 11.8409 8.33332 9.99999 8.33332C8.15904 8.33332 6.66666 6.84094 6.66666 4.99999C6.66666 3.15904 8.15904 1.66666 9.99999 1.66666C11.8409 1.66666 13.3333 3.15904 13.3333 4.99999Z"></path>
                </svg>
					</span> <span class="text"> Profile <span class="pro-badge">Pro</span>
					</span>
				</a></li>
				<li class="nav-item"><a href="invoice.html"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M3.33334 3.35442C3.33334 2.4223 4.07954 1.66666 5.00001 1.66666H15C15.9205 1.66666 16.6667 2.4223 16.6667 3.35442V16.8565C16.6667 17.5519 15.8827 17.9489 15.3333 17.5317L13.8333 16.3924C13.537 16.1673 13.1297 16.1673 12.8333 16.3924L10.5 18.1646C10.2037 18.3896 9.79634 18.3896 9.50001 18.1646L7.16668 16.3924C6.87038 16.1673 6.46298 16.1673 6.16668 16.3924L4.66668 17.5317C4.11731 17.9489 3.33334 17.5519 3.33334 16.8565V3.35442ZM4.79168 5.04218C4.79168 5.39173 5.0715 5.6751 5.41668 5.6751H10C10.3452 5.6751 10.625 5.39173 10.625 5.04218C10.625 4.69264 10.3452 4.40927 10 4.40927H5.41668C5.0715 4.40927 4.79168 4.69264 4.79168 5.04218ZM5.41668 7.7848C5.0715 7.7848 4.79168 8.06817 4.79168 8.41774C4.79168 8.76724 5.0715 9.05066 5.41668 9.05066H10C10.3452 9.05066 10.625 8.76724 10.625 8.41774C10.625 8.06817 10.3452 7.7848 10 7.7848H5.41668ZM4.79168 11.7932C4.79168 12.1428 5.0715 12.4262 5.41668 12.4262H10C10.3452 12.4262 10.625 12.1428 10.625 11.7932C10.625 11.4437 10.3452 11.1603 10 11.1603H5.41668C5.0715 11.1603 4.79168 11.4437 4.79168 11.7932ZM13.3333 4.40927C12.9882 4.40927 12.7083 4.69264 12.7083 5.04218C12.7083 5.39173 12.9882 5.6751 13.3333 5.6751H14.5833C14.9285 5.6751 15.2083 5.39173 15.2083 5.04218C15.2083 4.69264 14.9285 4.40927 14.5833 4.40927H13.3333ZM12.7083 8.41774C12.7083 8.76724 12.9882 9.05066 13.3333 9.05066H14.5833C14.9285 9.05066 15.2083 8.76724 15.2083 8.41774C15.2083 8.06817 14.9285 7.7848 14.5833 7.7848H13.3333C12.9882 7.7848 12.7083 8.06817 12.7083 8.41774ZM13.3333 11.1603C12.9882 11.1603 12.7083 11.4437 12.7083 11.7932C12.7083 12.1428 12.9882 12.4262 13.3333 12.4262H14.5833C14.9285 12.4262 15.2083 12.1428 15.2083 11.7932C15.2083 11.4437 14.9285 11.1603 14.5833 11.1603H13.3333Z"></path>
                </svg>
					</span> <span class="text">Invoice</span>
				</a></li>
				<li class="nav-item"><a href="task.html"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M2.49999 3.33334C2.03976 3.33334 1.66666 3.70644 1.66666 4.16668V5.83334C1.66666 6.29358 2.03976 6.66668 2.49999 6.66668H4.16666C4.62689 6.66668 4.99999 6.29358 4.99999 5.83334V4.16668C4.99999 3.70644 4.62689 3.33334 4.16666 3.33334H2.49999Z"></path>
                  <path
									d="M2.49999 8.33334C2.03976 8.33334 1.66666 8.70643 1.66666 9.16668V10.8333C1.66666 11.2936 2.03976 11.6667 2.49999 11.6667H4.16666C4.62689 11.6667 4.99999 11.2936 4.99999 10.8333V9.16668C4.99999 8.70643 4.62689 8.33334 4.16666 8.33334H2.49999Z"></path>
                  <path
									d="M1.66666 14.1667C1.66666 13.7064 2.03976 13.3333 2.49999 13.3333H4.16666C4.62689 13.3333 4.99999 13.7064 4.99999 14.1667V15.8333C4.99999 16.2936 4.62689 16.6667 4.16666 16.6667H2.49999C2.03976 16.6667 1.66666 16.2936 1.66666 15.8333V14.1667Z"></path>
                  <path
									d="M7.29166 4.375C6.94648 4.375 6.66666 4.65483 6.66666 5C6.66666 5.34517 6.94648 5.625 7.29166 5.625H17.7083C18.0535 5.625 18.3333 5.34517 18.3333 5C18.3333 4.65483 18.0535 4.375 17.7083 4.375H7.29166Z"></path>
                  <path
									d="M6.66666 10C6.66666 9.65483 6.94648 9.375 7.29166 9.375H17.7083C18.0535 9.375 18.3333 9.65483 18.3333 10C18.3333 10.3452 18.0535 10.625 17.7083 10.625H7.29166C6.94648 10.625 6.66666 10.3452 6.66666 10Z"></path>
                  <path
									d="M7.29166 14.375C6.94648 14.375 6.66666 14.6548 6.66666 15C6.66666 15.3452 6.94648 15.625 7.29166 15.625H17.7083C18.0535 15.625 18.3333 15.3452 18.3333 15C18.3333 14.6548 18.0535 14.375 17.7083 14.375H7.29166Z"></path>
                </svg>
					</span> <span class="text"> Task <span class="pro-badge">Pro</span>
					</span>
				</a></li>
				<li class="nav-item"><a href="calendar.html"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M14.7917 2.5C14.7917 2.15483 14.5118 1.875 14.1667 1.875C13.8215 1.875 13.5417 2.15483 13.5417 2.5V3.33333H6.45832V2.5C6.45832 2.15483 6.1785 1.875 5.83332 1.875C5.48815 1.875 5.20832 2.15483 5.20832 2.5V3.33333H3.33332C2.41285 3.33333 1.66666 4.07952 1.66666 5V6.04167H18.3333V5C18.3333 4.07952 17.5872 3.33333 16.6667 3.33333H14.7917V2.5Z"></path>
                  <path
									d="M18.3333 7.29166H1.66666V15C1.66666 15.9205 2.41285 16.6667 3.33332 16.6667H16.6667C17.5872 16.6667 18.3333 15.9205 18.3333 15V7.29166Z"></path>
                </svg>
					</span> <span class="text"> Calendar <span class="pro-badge">Pro</span>
					</span>
				</a></li>
				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_3" aria-controls="ddmenu_3"
					aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M14.9211 10.1294C15.1652 9.88534 15.1652 9.48967 14.9211 9.24559L10.7544 5.0789C10.5103 4.83482 10.1147 4.83482 9.87057 5.0789C9.62649 5.32297 9.62649 5.71871 9.87057 5.96278L12.9702 9.06251H1.97916C1.63398 9.06251 1.35416 9.34234 1.35416 9.68751C1.35416 10.0327 1.63398 10.3125 1.97916 10.3125H12.9702L9.87057 13.4123C9.62649 13.6563 9.62649 14.052 9.87057 14.2961C10.1147 14.5402 10.5103 14.5402 10.7544 14.2961L14.9211 10.1294Z"></path>
                  <path
									d="M11.6383 15.18L15.805 11.0133C16.5373 10.2811 16.5373 9.09391 15.805 8.36166L11.6383 4.195C11.2722 3.82888 10.7923 3.64582 10.3125 3.64582V3.02082C10.3125 2.10035 11.0587 1.35416 11.9792 1.35416H16.9792C17.8997 1.35416 18.6458 2.10035 18.6458 3.02082V16.3542C18.6458 17.2747 17.8997 18.0208 16.9792 18.0208H11.9792C11.0587 18.0208 10.3125 17.2747 10.3125 16.3542V15.7292C10.7923 15.7292 11.2722 15.5461 11.6383 15.18Z"></path>
                </svg>
					</span> <span class="text">Auth</span>
				</a>
					<ul id="ddmenu_3" class="collapse dropdown-nav">
						<li><a href="signin.html"> Sign In </a></li>
						<li><a href="signup.html"> Sign Up </a></li>
						<li><a href="reset-password.html"> <span class="text">
									Reset Password <span class="pro-badge">Pro</span>
							</span>
						</a></li>
					</ul></li>
				<span class="divider">
					<hr />
				</span>
				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_4" aria-controls="ddmenu_4"
					aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M1.66666 5.41669C1.66666 3.34562 3.34559 1.66669 5.41666 1.66669C7.48772 1.66669 9.16666 3.34562 9.16666 5.41669C9.16666 7.48775 7.48772 9.16669 5.41666 9.16669C3.34559 9.16669 1.66666 7.48775 1.66666 5.41669Z"></path>
                  <path
									d="M1.66666 14.5834C1.66666 12.5123 3.34559 10.8334 5.41666 10.8334C7.48772 10.8334 9.16666 12.5123 9.16666 14.5834C9.16666 16.6545 7.48772 18.3334 5.41666 18.3334C3.34559 18.3334 1.66666 16.6545 1.66666 14.5834Z"></path>
                  <path
									d="M10.8333 5.41669C10.8333 3.34562 12.5123 1.66669 14.5833 1.66669C16.6544 1.66669 18.3333 3.34562 18.3333 5.41669C18.3333 7.48775 16.6544 9.16669 14.5833 9.16669C12.5123 9.16669 10.8333 7.48775 10.8333 5.41669Z"></path>
                  <path
									d="M10.8333 14.5834C10.8333 12.5123 12.5123 10.8334 14.5833 10.8334C16.6544 10.8334 18.3333 12.5123 18.3333 14.5834C18.3333 16.6545 16.6544 18.3334 14.5833 18.3334C12.5123 18.3334 10.8333 16.6545 10.8333 14.5834Z"></path>
                </svg>
					</span> <span class="text">UI Elements </span>
				</a>
					<ul id="ddmenu_4" class="collapse dropdown-nav">
						<li><a href="accordion.html"> <span class="text">
									Accordion <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="alerts.html"> Alerts </a></li>
						<li><a href="buttons.html"> Buttons </a></li>
						<li><a href="button-group.html"> <span class="text">
									Button Group <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="breadcrumb.html"> <span class="text">
									Breadcrumb <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="badges.html"> <span class="text">
									Badges <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="cards.html"> Cards </a></li>
						<li><a href="carousel.html"> <span class="text">
									Carousel <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="dropdown.html"> <span class="text">
									Dropdown <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="list.html"> <span class="text"> List
									<span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="modals.html"> <span class="text">
									Modals <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="pagination.html"> <span class="text">
									Pagination <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="progress-bars.html"> <span class="text">
									Progress Bars <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="tabs.html"> <span class="text"> Tabs
									<span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="typography.html"> Typography </a></li>
						<li><a href="videos.html"> <span class="text">
									Videos <span class="pro-badge">Pro</span>
							</span>
						</a></li>
					</ul></li>
				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_55" aria-controls="ddmenu_55"
					aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M5.48663 1.1466C5.77383 0.955131 6.16188 1.03274 6.35335 1.31994L6.87852 2.10769C7.20508 2.59755 7.20508 3.23571 6.87852 3.72556L6.35335 4.51331C6.16188 4.80052 5.77383 4.87813 5.48663 4.68666C5.19943 4.49519 5.12182 4.10715 5.31328 3.81994L5.83845 3.03219C5.88511 2.96221 5.88511 2.87105 5.83845 2.80106L5.31328 2.01331C5.12182 1.72611 5.19943 1.33806 5.48663 1.1466Z"></path>
                  <path
									d="M2.49999 5.83331C2.03976 5.83331 1.66666 6.2064 1.66666 6.66665V10.8333C1.66666 13.5948 3.90523 15.8333 6.66666 15.8333H9.99999C12.1856 15.8333 14.0436 14.431 14.7235 12.4772C14.8134 12.4922 14.9058 12.5 15 12.5H16.6667C17.5872 12.5 18.3333 11.7538 18.3333 10.8333V8.33331C18.3333 7.41284 17.5872 6.66665 16.6667 6.66665H15C15 6.2064 14.6269 5.83331 14.1667 5.83331H2.49999ZM14.9829 11.2496C14.9942 11.1123 15 10.9735 15 10.8333V7.91665H16.6667C16.8967 7.91665 17.0833 8.10319 17.0833 8.33331V10.8333C17.0833 11.0634 16.8967 11.25 16.6667 11.25H15L14.9898 11.2498L14.9829 11.2496Z"></path>
                  <path
									d="M8.85332 1.31994C8.6619 1.03274 8.27383 0.955131 7.98663 1.1466C7.69943 1.33806 7.62182 1.72611 7.81328 2.01331L8.33848 2.80106C8.38507 2.87105 8.38507 2.96221 8.33848 3.03219L7.81328 3.81994C7.62182 4.10715 7.69943 4.49519 7.98663 4.68666C8.27383 4.87813 8.6619 4.80052 8.85332 4.51331L9.37848 3.72556C9.70507 3.23571 9.70507 2.59755 9.37848 2.10769L8.85332 1.31994Z"></path>
                  <path
									d="M10.4867 1.1466C10.7738 0.955131 11.1619 1.03274 11.3533 1.31994L11.8785 2.10769C12.2051 2.59755 12.2051 3.23571 11.8785 3.72556L11.3533 4.51331C11.1619 4.80052 10.7738 4.87813 10.4867 4.68666C10.1994 4.49519 10.1218 4.10715 10.3133 3.81994L10.8385 3.03219C10.8851 2.96221 10.8851 2.87105 10.8385 2.80106L10.3133 2.01331C10.1218 1.72611 10.1994 1.33806 10.4867 1.1466Z"></path>
                  <path
									d="M2.49999 16.6667C2.03976 16.6667 1.66666 17.0398 1.66666 17.5C1.66666 17.9602 2.03976 18.3334 2.49999 18.3334H14.1667C14.6269 18.3334 15 17.9602 15 17.5C15 17.0398 14.6269 16.6667 14.1667 16.6667H2.49999Z"></path>
                </svg>
					</span> <span class="text">Icons</span>
				</a>
					<ul id="ddmenu_55" class="collapse dropdown-nav">
						<li><a href="icons.html"> LineIcons </a></li>
						<li><a href="mdi-icons.html"> MDI Icons </a></li>
					</ul></li>
				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_5" aria-controls="ddmenu_5"
					aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M4.16666 3.33335C4.16666 2.41288 4.91285 1.66669 5.83332 1.66669H14.1667C15.0872 1.66669 15.8333 2.41288 15.8333 3.33335V16.6667C15.8333 17.5872 15.0872 18.3334 14.1667 18.3334H5.83332C4.91285 18.3334 4.16666 17.5872 4.16666 16.6667V3.33335ZM6.04166 5.00002C6.04166 5.3452 6.32148 5.62502 6.66666 5.62502H13.3333C13.6785 5.62502 13.9583 5.3452 13.9583 5.00002C13.9583 4.65485 13.6785 4.37502 13.3333 4.37502H6.66666C6.32148 4.37502 6.04166 4.65485 6.04166 5.00002ZM6.66666 6.87502C6.32148 6.87502 6.04166 7.15485 6.04166 7.50002C6.04166 7.8452 6.32148 8.12502 6.66666 8.12502H13.3333C13.6785 8.12502 13.9583 7.8452 13.9583 7.50002C13.9583 7.15485 13.6785 6.87502 13.3333 6.87502H6.66666ZM6.04166 10C6.04166 10.3452 6.32148 10.625 6.66666 10.625H9.99999C10.3452 10.625 10.625 10.3452 10.625 10C10.625 9.65485 10.3452 9.37502 9.99999 9.37502H6.66666C6.32148 9.37502 6.04166 9.65485 6.04166 10ZM9.99999 16.6667C10.9205 16.6667 11.6667 15.9205 11.6667 15C11.6667 14.0795 10.9205 13.3334 9.99999 13.3334C9.07949 13.3334 8.33332 14.0795 8.33332 15C8.33332 15.9205 9.07949 16.6667 9.99999 16.6667Z"></path>
                </svg>
					</span> <span class="text"> Forms </span>
				</a>
					<ul id="ddmenu_5" class="collapse dropdown-nav">
						<li><a href="form-elements.html"> From Elements </a></li>
						<li><a href="form-layout.html"> <span class="text">
									Form Layout <span class="pro-badge">Pro</span>
							</span>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="tables.html"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M1.66666 4.16667C1.66666 3.24619 2.41285 2.5 3.33332 2.5H16.6667C17.5872 2.5 18.3333 3.24619 18.3333 4.16667V9.16667C18.3333 10.0872 17.5872 10.8333 16.6667 10.8333H3.33332C2.41285 10.8333 1.66666 10.0872 1.66666 9.16667V4.16667Z"></path>
                  <path
									d="M1.875 13.75C1.875 13.4048 2.15483 13.125 2.5 13.125H17.5C17.8452 13.125 18.125 13.4048 18.125 13.75C18.125 14.0952 17.8452 14.375 17.5 14.375H2.5C2.15483 14.375 1.875 14.0952 1.875 13.75Z"></path>
                  <path
									d="M2.5 16.875C2.15483 16.875 1.875 17.1548 1.875 17.5C1.875 17.8452 2.15483 18.125 2.5 18.125H17.5C17.8452 18.125 18.125 17.8452 18.125 17.5C18.125 17.1548 17.8452 16.875 17.5 16.875H2.5Z"></path>
                </svg>
					</span> <span class="text">Tables</span>
				</a></li>
				<span class="divider">
					<hr />
				</span>

				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_77" aria-controls="ddmenu_77"
					aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M13.125 3.33337C13.125 2.9882 12.8452 2.70837 12.5 2.70837C12.1548 2.70837 11.875 2.9882 11.875 3.33337V5.83337H8.125V3.33337C8.125 2.9882 7.84518 2.70837 7.5 2.70837C7.15482 2.70837 6.875 2.9882 6.875 3.33337V5.83337H6.66667C5.74619 5.83337 5 6.57957 5 7.50004V10C5 12.3012 6.86548 14.1667 9.16667 14.1667H9.375V18.3334C9.375 18.6785 9.65483 18.9584 10 18.9584C10.3452 18.9584 10.625 18.6785 10.625 18.3334V14.1667H10.8333C13.1345 14.1667 15 12.3012 15 10V7.50004C15 6.57957 14.2538 5.83337 13.3333 5.83337H13.125V3.33337Z"></path>
                </svg>
					</span> <span class="text"> Form Plugins </span>
				</a>
					<ul id="ddmenu_77" class="collapse dropdown-nav">
						<li><a href="form-edit.html"> <span class="text">
									QuillJs <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="form-validation.html"> <span class="text">
									Form Validation <span class="pro-badge">Pro</span>
							</span>
						</a></li>
					</ul></li>

				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_7" aria-controls="ddmenu_7"
					aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M4.16666 4.16675C4.16666 2.78604 6.77833 1.66675 9.99999 1.66675C13.2217 1.66675 15.8333 2.78604 15.8333 4.16675V4.57073C15.8027 4.60316 15.7678 4.637 15.7282 4.6722C15.4683 4.90251 15.0568 5.13848 14.4946 5.34931C13.3747 5.76924 11.7858 6.04175 9.99999 6.04175C8.21415 6.04175 6.62521 5.76924 5.5054 5.34931C4.94318 5.13848 4.53162 4.90251 4.27185 4.6722C4.23215 4.637 4.19726 4.60316 4.16666 4.57073V4.16675Z"></path>
                  <path
									d="M4.16666 6.10992V8.73742C4.19726 8.76983 4.23215 8.80367 4.27185 8.83883C4.53162 9.06917 4.94318 9.30517 5.5054 9.516C6.62521 9.93592 8.21415 10.2084 9.99999 10.2084C11.7858 10.2084 13.3747 9.93592 14.4946 9.516C15.0568 9.30517 15.4683 9.06917 15.7282 8.83883C15.7678 8.80367 15.8027 8.76983 15.8333 8.73742V6.10992C15.5592 6.26222 15.2563 6.39865 14.9335 6.51972C13.6404 7.00462 11.8961 7.29175 9.99999 7.29175C8.10394 7.29175 6.35954 7.00462 5.06649 6.51972C4.74364 6.39865 4.44074 6.26222 4.16666 6.10992Z"></path>
                  <path
									d="M15.8333 10.2766C15.5592 10.4289 15.2563 10.5653 14.9335 10.6864C13.6404 11.1712 11.8961 11.4584 9.99999 11.4584C8.10394 11.4584 6.35954 11.1712 5.06649 10.6864C4.74364 10.5653 4.44074 10.4289 4.16666 10.2766V12.904C4.19726 12.9365 4.23215 12.9703 4.27185 13.0055C4.53162 13.2358 4.94318 13.4718 5.5054 13.6826C6.62521 14.1025 8.21415 14.375 9.99999 14.375C11.7858 14.375 13.3747 14.1025 14.4946 13.6826C15.0568 13.4718 15.4683 13.2358 15.7282 13.0055C15.7678 12.9703 15.8027 12.9365 15.8333 12.904V10.2766Z"></path>
                  <path
									d="M15.8333 14.4432C15.5592 14.5956 15.2563 14.732 14.9335 14.8531C13.6404 15.3379 11.8961 15.6251 9.99999 15.6251C8.10394 15.6251 6.35954 15.3379 5.06649 14.8531C4.74364 14.732 4.44074 14.5956 4.16666 14.4432V15.8334C4.16666 17.2142 6.77833 18.3334 9.99999 18.3334C13.2217 18.3334 15.8333 17.2142 15.8333 15.8334V14.4432Z"></path>
                </svg>
					</span> <span class="text"> Data Tables </span>
				</a>
					<ul id="ddmenu_7" class="collapse dropdown-nav">
						<li><a href="basic-table.html"> <span class="text">
									Basic Table <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="tables-responsive.html"> <span class="text">
									Responsive Table <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="datatables.html"> <span class="text">
									Data Table <span class="pro-badge">Pro</span>
							</span>
						</a></li>
					</ul></li>
				<li class="nav-item nav-item-has-children"><a href="#0"
					class="collapsed" data-bs-toggle="collapse"
					data-bs-target="#ddmenu_8" aria-controls="ddmenu_8"
					aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M1.66666 1.04175C2.01183 1.04175 2.29166 1.32157 2.29166 1.66675V16.6667C2.29166 17.2421 2.75802 17.7084 3.33332 17.7084H18.3333C18.6785 17.7084 18.9583 17.9882 18.9583 18.3334C18.9583 18.6786 18.6785 18.9584 18.3333 18.9584H3.33332C2.06767 18.9584 1.04166 17.9324 1.04166 16.6667V1.66675C1.04166 1.32157 1.32148 1.04175 1.66666 1.04175Z"></path>
                  <path
									d="M4.16666 5.00008C4.16666 4.53985 4.53976 4.16675 4.99999 4.16675H8.33332C8.79357 4.16675 9.16666 4.53985 9.16666 5.00008V15.0001C9.16666 15.4603 8.79357 15.8334 8.33332 15.8334H4.99999C4.53976 15.8334 4.16666 15.4603 4.16666 15.0001V5.00008Z"></path>
                  <path
									d="M11.6667 8.33337C11.2064 8.33337 10.8333 8.70646 10.8333 9.16671V15C10.8333 15.4603 11.2064 15.8334 11.6667 15.8334H15C15.4603 15.8334 15.8333 15.4603 15.8333 15V9.16671C15.8333 8.70646 15.4603 8.33337 15 8.33337H11.6667Z"></path>
                </svg>
					</span> <span class="text"> Charts </span>
				</a>
					<ul id="ddmenu_8" class="collapse dropdown-nav">
						<li><a href="chart-js.html"> <span class="text">
									ChartJs <span class="pro-badge">Pro</span>
							</span>
						</a></li>
						<li><a href="apex-chart.html"> <span class="text">
									Apex Chart <span class="pro-badge">Pro</span>
							</span>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="notification.html"> <span
						class="icon"> <svg width="20" height="20"
								viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
                  <path
									d="M10.8333 2.50008C10.8333 2.03984 10.4602 1.66675 9.99999 1.66675C9.53975 1.66675 9.16666 2.03984 9.16666 2.50008C9.16666 2.96032 9.53975 3.33341 9.99999 3.33341C10.4602 3.33341 10.8333 2.96032 10.8333 2.50008Z"></path>
                  <path
									d="M17.5 5.41673C17.5 7.02756 16.1942 8.33339 14.5833 8.33339C12.9725 8.33339 11.6667 7.02756 11.6667 5.41673C11.6667 3.80589 12.9725 2.50006 14.5833 2.50006C16.1942 2.50006 17.5 3.80589 17.5 5.41673Z"></path>
                  <path
									d="M11.4272 2.69637C10.9734 2.56848 10.4947 2.50006 10 2.50006C7.10054 2.50006 4.75003 4.85057 4.75003 7.75006V9.20873C4.75003 9.72814 4.62082 10.2393 4.37404 10.6963L3.36705 12.5611C2.89938 13.4272 3.26806 14.5081 4.16749 14.9078C7.88074 16.5581 12.1193 16.5581 15.8326 14.9078C16.732 14.5081 17.1007 13.4272 16.633 12.5611L15.626 10.6963C15.43 10.3333 15.3081 9.93606 15.2663 9.52773C15.0441 9.56431 14.8159 9.58339 14.5833 9.58339C12.2822 9.58339 10.4167 7.71791 10.4167 5.41673C10.4167 4.37705 10.7975 3.42631 11.4272 2.69637Z"></path>
                  <path
									d="M7.48901 17.1925C8.10004 17.8918 8.99841 18.3335 10 18.3335C11.0016 18.3335 11.9 17.8918 12.511 17.1925C10.8482 17.4634 9.15183 17.4634 7.48901 17.1925Z"></path>
                </svg>
					</span> <span class="text">Notifications</span>
				</a></li>
			</ul>
		</nav>
		<div class="promo-box">
			<div class="promo-icon">
				<img class="mx-auto"
					src="${contextPath}/templates/admin/assets/images/logo/logo-icon-big.svg"
					alt="Logo" />
			</div>
			<h3>Upgrade to PRO</h3>
			<p>Improve your development process and start doing more with
				PlainAdmin PRO!</p>
			<a href="https://plainadmin.com/pro" target="_blank" rel="nofollow"
				class="main-btn primary-btn btn-hover"> Upgrade to PRO
			</a>
		</div>
	</aside>

	<div class="overlay"></div>
	<!-- ======== sidebar-nav end =========== -->