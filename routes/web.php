<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('app/home');
// });

Route::get('/', 'HomeController@index')->name('home.index');
Route::get('/content/{slug}', 'ContentController@index')->name('content.index');
Route::get('/list-content', 'ContentController@list')->name('content.list');
Route::get('/postemot', 'ContentController@postemot')->name('content.postemot');


Route::group(['prefix' => 'admin'], function() {
    Voyager::routes();
});
