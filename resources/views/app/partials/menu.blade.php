
<ul id="slide-out-left" class="side-nav collapsible">
 <li class="sidenav-avatar bg-material">
         <div class="bottom">
            {{-- <img src="{{ asset('frontsite/img/user.jpg') }}" alt="" class="avatar"> --}}
            	<img src="" class="avatar">
            <!-- Dropdown Trigger -->
            <span class="dropdown-button waves-effect waves-light" data-activates="dropdown1">
            	dfsdf<i class="ion-android-arrow-dropdown right"></i>
            </span>
            <!-- Dropdown Structure -->
            <ul id="dropdown1" class="dropdown-content">
                <li><a href="https://myaccount.google.com/personal-info">dsffsdf</a></li>
                <li class="divider"></li>
                	<a href="#" 
                		onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                		Keluar <i class="ion-log-out"></i>
                	</a>
                	<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </li>
            </ul>
        </div>
    </li>

    <li><a href="asdsdf" class="waves-effect"><i class="ion-android-sync"></i> Sinkronisasi Data</a></li>
    <li>
        <a href="mailto:appsysmonika@gmail.com?subject={{ $responden->nik }} | Cek Status KTP" class="waves-effect">
            <i class="ion-android-mail"></i> Email Bantuan
        </a>
    </li>
    <li><a href="{{ url('about') }}" class="waves-effect"><i class="ion-ios-people"></i> Tentang Aplikasi</a></li>
</ul>