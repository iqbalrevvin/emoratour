<?php 
	function countEmot($post_id){
		$countEmot = DB::table('emot_posts')
						->where('post_id', $post_id)
						->count();
		return $countEmot;
    }
    
    function countReview($post_id){
        $count = DB::table('ulasan')
                    ->where('post_id', $post_id)
                    ->count();
        return $count;
    }
 ?>