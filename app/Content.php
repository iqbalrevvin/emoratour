<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class Content extends Model
{
    public function countEmot($idpost){
		$countEmot = DB::table('emot_posts')
						->where('post_id', $idpost)
						->count();
		return $countEmot;
	} 
}
