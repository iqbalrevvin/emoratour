<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    function countEmot($idpost){
		$countEmot = DB::table('emot_posts')
						->where('post_id', $idpost)
						->count();
		return $countEmot;
	} 
}
