<%@ page language="java" pageEncoding="utf-8" %>

    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
          	<a href="" class="app-brand-link">
       			<span class="app-brand-text demo menu-text fw-bolder ms-2 d-block" style="color: #42326b;">MEGABOX</span>
       			<span class="fw-semibold text-muted">admin</span>
          	</a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboard -->
            <li class="menu-item">
              <a href="/xdminHome" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Analytics">Dashboard</div>
              </a>
            </li>

            <!-- Layouts -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="fa-solid fa-clapperboard"></i>&nbsp;
                <div data-i18n="Layouts">영화</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/movie/movieList" class="menu-link">
                    <div data-i18n="Without menu">기본 정보</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/timetable/timetableList" class="menu-link">
                    <div data-i18n="Without navbar">상영시간표</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Container">무비포스트</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Fluid">영화 컨텐츠</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="fa-solid fa-film"></i>&nbsp;
                <div data-i18n="Layouts">극장</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/theater/theaterList" class="menu-link">
                    <div data-i18n="Without menu">극장 정보</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/theaterPlex/plexList" class="menu-link">
                    <div data-i18n="Without navbar">상영관</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/theaterPrice/priceList" class="menu-link">
                    <div data-i18n="Container">관람료</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Fluid">극장 공지사항</div>
                  </a>
                </li>
              </ul>
            </li>

            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="fa-solid fa-user"></i>&nbsp;
                <div data-i18n="Account Settings">회원</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/member/memberList" class="menu-link">
                    <div data-i18n="Account">회원 리스트</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="" class="menu-link">
                    <div data-i18n="Notifications">결제 관리</div>
                  </a>
                </li>
              </ul>
            </li>    
               
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="fa-solid fa-gear"></i>&nbsp;
                <div data-i18n="Authentications">시스템</div>
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a href="/codeGroup/codeGroupList" class="menu-link">
                    <div data-i18n="Basic">공통 코드 그룹 관리</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a href="/code/codeList" class="menu-link">
                    <div data-i18n="Basic">공통 코드 관리</div>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->

          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar"
          >
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                  <i class="bx bx-search fs-4 lh-0"></i>
                  <input
                    type="text"
                    class="form-control border-0 shadow-none"
                    placeholder="Search..."
                    aria-label="Search..."
                  />
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="/resources/assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="/resources/assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">John Doe</span>
                            <small class="text-muted">Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="auth-login-basic.html">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->