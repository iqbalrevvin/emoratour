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
        <i class="ion-chatbubble-working"></i> <span>{{ count($list_review) }}</span>
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
    @if (session('send_ulasan'))
      <div class="msg msg-success z-depth-2 scale-transition valign center"> 
        {{ session('send_ulasan') }}
      </div>
    @endif
    <div class="comments grey lighten-4">
      <h5>{{ count($list_review) }} Ulasan</h5>
      @forelse ($list_review as $review)
        <div class="media-top-object animated fadeinright delay-2">
          <img src="{{ asset('/frontsite/img/user.png') }}" alt="" class="avatar">
          <div class="media-body">
            <span>{{ $review->nama }}</span>
            <span class="small">{{ $review->ulasan }}</span>
          </div>
        </div>
      @empty
        <div class="media-top-object animated fadeinright delay-2">
          <div class="media-body">
            <span>-</span>
            {{-- <span class="small">Budugul bali sangat indah</span> --}}
          </div>
        </div>
      @endforelse
    </div>

    
@endsection
@section('modal')
  <div class="fixed-action-btn">
      <a class="btn-floating btn-large waves-effect waves-light accent-color modal-trigger" href="#modal1"><i class="ion-android-add"></i></a>
    </div>
    <!-- Modal Structure -->
    <div id="modal1" class="modal bottom-sheet features">
      <div class="modal-content">
        <!-- Form Inputs --> 
        <div class="form-inputs p-10" {{-- action="{{ route('content.sendreview') }}" id="formUlasan" method="POST" --}}>
          @csrf
          <div class="progress" id="progress_ulasan" style="display:none;">
            <div class="indeterminate"></div>
          </div>
          <p class="remember animated bouncein delay-6">
            <label for="test5"><b><u>Kirim Ulasan</u></b></label>
          </p>
          <input type="hidden" name="post_id" id="post_id" value="{{ $content->id }}">
          <input type="hidden" name="slug" value="{{ $content->slug }}">
          <div>
            <div class="input-field animated fadeinright">
              <input name="nama" id="nama" type="text" class="validate" required autocomplete="off">
              <label for="nama">Nama</label>
            </div>
          </div>
          <div class="input-field animated fadeinright delay-5">
            <textarea class="materialize-textarea" name="ulasan" id="ulasan" required></textarea> 
            <label for="textarea1">Tulis Ulasan Anda</label>
          </div>
          
          <button class="btn-small waves-effect waves-light btn-large primary-color block animated bouncein delay-6" id="btn_ulasan">
                Kirim
            </button>
        </div>
        <!-- End of Form -->
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

        $(document).on('click', '#btn_ulasan', function(){
          if($('#nama').val()!="" || $('#ulasan').val()!=""){
            $("#progress_ulasan").show();
            // var post_ulasan = $('#formUlasan').serialize();
            var post_id   = $('#post_id').val();
            var nama      = $('#nama').val();
            var ulasan    = $('#ulasan').val();
            $.ajax({
              type: "GET",
              url: '{{ route('content.sendreview') }}',
              async: true,
              data: {
                  post_id       : post_id,
                  nama          : nama,
                  ulasan        : ulasan
              },
              success: function(response){
                  location.reload();
              },
              error: function (xhr, ajaxOptions, thrownError) { // Ketika terjadi error
                alert(xhr.responseText) // munculkan alert
              }
            });
          }
        });

    </script>
@endsection