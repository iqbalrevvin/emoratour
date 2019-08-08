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
    	return view('app.content', [
    		'content' => $content
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
}
