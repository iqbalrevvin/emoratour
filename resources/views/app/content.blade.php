@extends('app.master-app')
@section('content')  
	<!-- Hero Header -->
    <div class="hero-material animated fadeindown">
      <div class="parallax primary-color">
        
        <div class="fixed-action-btn floating-button animated bouncein delay-3 horizontal click-to-toggle">
          <a href="javascript:;" class="btn-floating btn-large accent-color">
            <i class="ion-android-map"></i>
          </a>
          {{-- <ul>
            <li><a class="btn-floating blue darken-4"><i class="ion-social-facebook"></i></a></li>
            <li><a class="btn-floating light-blue"><i class="ion-social-twitter"></i></a></li>
            <li><a class="btn-floating pink"><i class="ion-social-instagram"></i></a></li>
          </ul> --}}
        </div>
        <div class="banner-title">{{ $content->title }}</div>
      </div>
    </div>
    <div class="card-feedback">
      <div class="card-users">
        <i class="ion-ios-heart accent-text"></i> <span>{{ $all_emot }}</span>
        <i class="ion-chatbubble-working"></i> <span>5</span>
      </div>
    </div>
    <!-- Article Content -->
    <div class="animated fadeinup delay-1">
      <div class="p-20">
      	<!-- Slider -->         
        <div class="swiper-container swiper-slider m-20">
          <div class="swiper-wrapper">
              <img src="{{ Voyager::image($content->image) }}" alt="{{ $content->title }}">
          </div>
          <!-- Add Pagination -->
        </div>
        <!-- End of Slider -->
        {!! $content->body !!}
      </div>
    </div>
    <!-- Share -->
    <div class="p-20 center-align">
      <h5>Emotic Pengunjung {{-- {{ Request::ip() }} --}}</h5>
      <a href="javascript:;" class="emot" data-emot="emot_senyum" data-post="{{ $content->id }}" style="font-size:26px">&#128522;</a>
      ({{ $emot_senyum }})
      <a href="javascript:;" class="emot" data-emot="emot_love" data-post="{{ $content->id }}" style="font-size:26px">&#128536;</a>
      ({{ $emot_love}})
      <a href="javascript:;" class="emot" data-emot="emot_bete" data-post="{{ $content->id }}" style="font-size:26px">&#128530;</a>
      ({{ $emot_bete}})
      <a href="javascript:;" class="emot" data-emot="emot_wow" data-post="{{ $content->id }}" style="font-size:26px">&#128562;</a>
      ({{ $emot_wow}})
      <a href="javascript:;" class="emot" data-emot="emot_marah" data-post="{{ $content->id }}" style="font-size:26px">&#128545;</a>
      ({{ $emot_marah}})
    </div>
    <div class="progress" style="display:none ;">
     <div class="indeterminate"></div>
    </div>
    <div class="sendingEmot" style="display:none ;">Mengirim Emot. . .</div>
    <!-- Comments -->
    <div class="comments grey lighten-4">
      <h5>5 Ulasan</h5>
      <div class="media-top-object animated fadeinright delay-2">
        <img src="{{ asset('/frontsite/img/user.png') }}" alt="" class="avatar">
        <div class="media-body">
          <span>Luke Noel</span>
          <span class="small">Budugul bali sangat indah</span>
        </div>
      </div>

      <div class="media-top-object animated fadeinright delay-3">
        <img src="{{ asset('/frontsite/img/user.png') }}" alt="" class="media-left avatar">
        <div class="media-body">
          <span>Rifki</span>
          <span class="small">Keren tempatnya</span>
        </div>
      </div>

      <div class="media-top-object animated fadeinright delay-4">
        <img src="{{ asset('/frontsite/img/user.png') }}" alt="" class="media-left avatar">
        <div class="media-body">
          <span>Joel</span>
          <span class="small">Pengen kesini lagi</span>
        </div>
      </div>

      <div class="media-top-object animated fadeinright delay-5">
        <img src="{{ asset('/frontsite/img/user.png') }}" alt="" class="media-left avatar">
        <div class="media-body">
          <span>Mike</span>
          <span class="small">Terdapat kenangan indah disini</span>
        </div>
      </div>

      <div class="media-top-object animated fadeinright delay-6">
        <img src="{{ asset('/frontsite/img/user.png') }}" alt="" class="media-left avatar">
        <div class="media-body">
          <span>Robb Swan</span>
          <span class="small">Love your works! Asalways!</span>
        </div>
      </div>
    </div>
@endsection

@section('custom_script')
	<script>
        // $(".emot").click(function(e){
        $(document).on('click', '.emot', function(e) {
            e.preventDefault(e);
        	var emot = $(this).data('emot');
          var post = $(this).data('post');
          // alert(post);
          $(".progress").show();
          $(".sendingEmot").show();
          $.ajax({
              type: "GET",
              url: '{{ route('content.postemot') }}',
              async: true,
              data: {
                  emot      : emot,
                  post      : post,
              },
              success: function(response){
                  location.reload();
              },
              error: function (xhr, ajaxOptions, thrownError) { // Ketika terjadi error
                alert(xhr.responseText) // munculkan alert
              }
          });
        });
    </script>
@endsection