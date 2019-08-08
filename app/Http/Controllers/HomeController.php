<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class HomeController extends Controller
{
    public function index()
    {
    	$posts = DB::table('posts')
    				->select('posts.*', 'users.name as username', 'users.avatar', 'categories.name as catename')
    				->join('users', 'posts.author_id', '=', 'users.id')
    				->join('categories', 'posts.category_id', '=', 'categories.id')
    				->where('status', 'PUBLISHED')
    				->orderBy('posts.created_at', 'desc')
    				->limit(5)
    				->get();
    	return view('app.home', [
    		'posts' => $posts
    	]);
    }
}
