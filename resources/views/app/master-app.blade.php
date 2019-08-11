<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <meta charset="utf-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ setting('site.title') }}</title>
    <meta name="description" content="Material Design Mobile Template">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
    
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/touch/apple-touch-icon-144x144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/touch/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/touch/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="img/touch/apple-touch-icon-57x57-precomposed.png">
    <link rel="shortcut icon" sizes="196x196" href="img/touch/touch-icon-196x196.png">
    <link rel="shortcut icon" href="img/touch/apple-touch-icon.png">
    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="img/touch/apple-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#222222">
    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <!-- SEO: If mobile URL is different from desktop URL, add a canonical link to the desktop page -->
    <!--
    <link rel="canonical" href="http://www.example.com/" >
    -->
    <!-- For iOS web apps. Delete if not needed. https://github.com/h5bp/mobile-boilerplate/issues/94 -->
    <!--
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="">
    -->
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,100' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
    <!-- Icons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" media="all" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="{{ asset('frontsite/css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/materialize.min.css') }}">
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"> --}}
    <link rel="stylesheet" href="{{ asset('frontsite/css/swipebox.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/swiper.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/normalize.css') }}">
    <link rel="stylesheet" href="{{ asset('frontsite/css/main.css') }}">
    <style type="text/css" media="screen">
        .msg {
          width:100%;
          border: 1px solid;
          padding:10px;
          margin: 0px;
          color: grey;
        }
        .msg-error {
          // rouge
          border-color: #d32f2f;
          background-color: #ef5350;
          color: white;
        }
        .msg-alert {
          //orange
            border-color: #ef6c00;
            background-color: #ff9800;
            color: white;
        }

        .msg-info{
            border-color: #0288d1;
            background-color: #29b6f6;
            color: white;
        }
        .msg-success{
            border-color: #FFE4B5;
            background-color: #3CB371;
            color: white;
        }
    </style>
    @yield('style_custom')
    <script src="{{ asset('frontsite/js/vendor/modernizr-2.7.1.min.js') }}"></script>
    <script src="{{ asset('js/app.js') }}"></script>
  </head>
  <body>
    <!-- Main Container -->
    <div id="main" class="main">
        <!-- Toolbar -->
        <div id="toolbar" class="left-only primary-color z-depth-1">
          <div class="open-left" id="open-left" data-activates="slide-out-left">
            <i class="ion-android-menu"></i>
          </div>
          <h1 class="title">{{ setting('site.title') }}</h1>
        </div>
        <!-- End of Toolbar -->
        <div class="page animated fadeinup">
            <!-- DYNAMIC CONTENT -->
            @yield('content')
            <!-- DYNAMIC CONTENT -->
            
{{--             <div class="fixed-action-btn floating-button animated bouncein delay-3 horizontal click-to-toggle">
              <a class="btn-floating btn-large " href="#!">
                <i class="ion-android-menu"></i>
              </a>
              <ul>
                <li><a href="#" class="btn-floating red"><i class="ion-android-home"></i></a></li>
                <li>
                    <a href="#" class="btn-floating yellow darken-1">
                        <i class="ion-android-person"></i>
                    </a>
                </li>
                <li><a href="#" class="btn-floating blue"><i class="ion-android-sync"></i></a></li>
                <li>
                    <a href="tel:{{ setting('site.call_center') }}" class="btn-floating green">
                    <i class="ion-ios-telephone"></i>
                    </a>
                </li>
              </ul>
            </div> --}}
            {{-- <div class="preloader fixed-action-btn animated bouncein delay-3 horizontal click-to-toggle" style="display: none">
            <div class=" preloader-wrapper animated bouncein small active" >
                <div class="spinner-layer spinner-yellow-only">
                  <div class="circle-clipper left">
                    <div class="circle"></div>
                  </div><div class="gap-patch">
                    <div class="circle"></div>
                  </div><div class="circle-clipper right">
                    <div class="circle"></div>
                  </div>
                </div>
              </div>
            </div>
            </div> --}}
          
            <!-- Footer -->
            @include('app.partials.footer')
        </div>
        @yield('modal')
        <!-- Left Sidebar -->
        @include('app.partials.sidebar')
        <!-- End of Sidebars -->
    </div>

    

    <!-- Scripts -->
    <script src="{{ asset('frontsite/js/vendor/jquery-2.1.0.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/helper.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/HeadsUp.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/jquery.smoothState.js') }}"></script>
    {{-- <script src="{{ asset('frontsite/js/vendor/chart.min.js') }}"></script> --}}
    <script src="{{ asset('frontsite/js/vendor/jquery.mixitup.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/jquery.swipebox.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/masonry.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/swiper.min.js') }}"></script>
    <script src="{{ asset('frontsite/js/vendor/materialize.min.js') }}"></script>
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script> --}}
    <script src="{{ asset('frontsite/js/main.js') }}"></script>

    <!--CUSTOM SCRIPT -->
        @yield('custom_script')
    <!--CUSTOM SCRIPT -->
  </body>
</html>
