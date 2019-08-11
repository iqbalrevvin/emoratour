<?php 
	function countEmot($idpost){
		$countEmot = DB::table('emot_posts')
						->where('post_id', $idpost)
						->count();
		return $countEmot;
	}
 ?>