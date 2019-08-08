<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class ContentController extends Controller
{
    public function index(Request $request, $slug)
    {
    	$content = DB::table('posts')
    				->select('posts.*', 'users.name as username', 'users.avatar', 'categories.name as catename')
    				->join('users', 'posts.author_id', '=', 'users.id')
    				->join('categories', 'posts.category_id', '=', 'categories.id')
    				->where('posts.slug', $slug)
    				->orderBy('posts.created_at', 'desc')
    				->first();
    	$allEmot 	=	DB::table('emot_posts')
    					->where('post_id', $content->id)
    					->count();
    	$emotSenyum = DB::table('emot_posts')
    					->where('post_id', $content->id)
    					->where('emoticon', 'emot_senyum')
    					->count();
    	$emotLove = DB::table('emot_posts')
    					->where('post_id', $content->id)
    					->where('emoticon', 'emot_love')
    					->count();
    	$emotBete = DB::table('emot_posts')
    					->where('post_id', $content->id)
    					->where('emoticon', 'emot_bete')
    					->count();
    	$emotWow = DB::table('emot_posts')
    					->where('post_id', $content->id)
    					->where('emoticon', 'emot_wow')
    					->count();
    	$emotMarah = DB::table('emot_posts')
    					->where('post_id', $content->id)
    					->where('emoticon', 'emot_marah')
    					->count();

    	return view('app.content', [
    		'content' => $content,
    		'all_emot' => $allEmot,
    		'emot_senyum' => $emotSenyum,
    		'emot_love' => $emotLove,
    		'emot_bete' => $emotBete,
    		'emot_wow' => $emotWow,
    		'emot_marah' => $emotMarah,
    	]);
    }

    public function list()
    {
    	$content = DB::table('posts')
    				->select('posts.*', 'users.name as username', 'users.avatar', 'categories.name as catename')
    				->join('users', 'posts.author_id', '=', 'users.id')
    				->join('categories', 'posts.category_id', '=', 'categories.id')
    				->where('status', 'PUBLISHED')
    				->orderBy('posts.created_at', 'desc')
    				//->limit()
    				->get();
    	return view('app.content_list', [
    		'content' => $content
    	]);
    }

    public function postemot(Request $request)
    {
    	$idPost 	= $request->input('post');
    	$emot 		= $request->input('emot');
    	$ip 		= $request->ip();
    	$input 		= DB::table('emot_posts')
    					->insert(
    						[
    							'post_id' 		=> $idPost,
    							'emoticon' 		=> $emot,
    							'ip_address' 	=> $ip
    						]
    					);
    	
    }
}
