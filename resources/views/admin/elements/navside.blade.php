
      <div data-active-color="white" data-background-color="black" data-image="{{url('resources/assets/back/img/sidebar-bg/01.jpg')}}" class="app-sidebar">
        <div class="sidebar-header">
          <div class="logo clearfix"><a href="{{route('home')}}" class="logo-text float-left">
              <div class="logo-img"><img src="{{url('resources/assets/back/img/logo.png')}}" alt="Convex Logo"/></div><span class="text align-middle">REVIWE</span></a><a id="sidebarToggle" href="javascript:;" class="nav-toggle d-none d-sm-none d-md-none d-lg-block"><i data-toggle="expanded" class="ft-disc toggle-icon"></i></a><a id="sidebarClose" href="javascript:;" class="nav-close d-block d-md-block d-lg-none d-xl-none"><i class="ft-circle"></i></a></div>
        </div>
        <div class="sidebar-content">
          <div class="nav-container">
            <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
              <li class="nav-item"><a href="{{route('home')}}"><i class="icon-home"></i> Home</a></li>
              <li class="nav-item"><a href="{{route('setting')}}">Setting</a></li>
              <li class="has-sub nav-item"><a href="#">
              
              <span data-i18n="" class="menu-title">Configrations</span></a>
                <ul class="menu-content">
                  <li><a href="{{route('arabic')}}" class="menu-item">Arabic</a>
                  </li>
                  <li><a href="{{route('english')}}" class="menu-item">English</a>
                  </li>
                </ul>
              </li>
              @if (Auth::check())

        <!-- if user has 'Super' role assigned to them. -->

        @if (Auth::user()->hasRole('roler') || Auth::user()->hasRole('Admin'))
             <li class="has-sub nav-item"><a href="#">
              
              <span data-i18n="" class="menu-title">Acess</span></a>
                <ul class="menu-content">
                  <li><a href="{{route('user')}}" class="menu-item">User</a>
                  </li>
                  <li><a href="{{route('role')}}" class="menu-item">Roles</a>
                  </li>
                  <li><a href="{{route('permission')}}" class="menu-item">Permissions</a>
                  </li>
                </ul>
              </li>
             @endif <!-- End Is SuperUser Check -->

@endif <!-- End Auth Check -->
            </ul>
          </div>
        </div>
        <div class="sidebar-background"></div>
      </div>