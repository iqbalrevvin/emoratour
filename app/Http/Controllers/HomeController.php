<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Visitor;
use Jenssegers\Agent\Agent;
use DB;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $agent      = new Agent();
        $platform   = $agent->device();
        $ip 		= $request->ip();
        $visitor = Visitor::Create([
            'ip_address'    => $ip,
            'perangkat'     => $platform,
            'deskripsi'     => 'Pengunjung dari IP '.$ip,
        ]);

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
