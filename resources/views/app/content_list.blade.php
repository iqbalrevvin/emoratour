@extends('app.master-app')
@section('content')
	@forelse ($content as $list)
		<div class="card fullscreen">
	      <div class="card-image">
	        <a href="{{ url('content/'.$list->slug) }}"><img src="{{ Voyager::image($list->image) }}" alt=""></a>
	      </div>
	      <div class="card-feedback">
	        <div class="card-users">
	          <i class="ion-ios-heart accent-text"></i> <span>85</span>
	          <i class="ion-chatbubble-working"></i> <span>5</span>
	        </div>
	        {{-- <div class="card-share">
	          <i class="ion-android-share-alt"></i> <span>Share</span>
	        </div> --}}
	      </div>
	      <div class="card-content">
	        <h5><strong>{{ $list->title }}</strong></h5>
	      </div>
	      <div class="card-author">
	        <div class="media-top-object middle">
	          <img src="{{ Voyager::image($list->avatar) }}" alt="" class="media-left avatar small">
	          <div class="media-body">
	            <span class="small">Posted By {{ $list->username }}</a></span>
	          </div>
	        </div>
	      </div>
	    </div>
	@empty
		{{-- empty expr --}}
	@endforelse
	
@endsection