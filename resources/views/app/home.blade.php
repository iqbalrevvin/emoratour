{{-- @extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>
                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
                    You are logged in!
                    {{ Auth::user()->role_id }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
--}}
@extends('app.master-app')
@section('content')  
    <div class="swiper-container swiper-slider-full">
      <div class="swiper-wrapper">
      @forelse ($posts as $list)
        <div class="swiper-slide">
          <div class="event-header " style="background-image: url('{{ Voyager::image( $list->image ) }}');">
            <div class="opacity-overlay"></div>
            <div class="bottom p-20">
              <div class="social-share-author m-0 animated fadeinup delay-4">
                <img src="{{ asset('storage/'.$list->avatar) }}" alt="" class="avatar big">
                <span class="white-text">{{ $list->username }}</span>
              </div>
              <div class="animated fadeinup delay-2">
                <a href="{{ url('content/'.$list->slug) }}" target="_self">
                  <h2 class="title white-text">{{ $list->title }}</h2>
                </a>
                <p class="white-text m-0">{{ $list->excerpt }}</p>
                <span class="event-category small white-text">{{ $list->catename }}</span>
              </div>
            </div>
          </div>
        </div>
        @empty
          {{-- empty expr --}}
        @endforelse
      </div>
      <!-- Add Pagination -->
      <div class="swiper-pagination"></div>
    </div>
      
@endsection


@section('custom_script')
    <script>
        $(document).ready(function(){
          $('.fixed-action-btn').floatingActionButton();
        });
    </script>
@endsection