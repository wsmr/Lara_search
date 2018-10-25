<?php

use App\Table;
use Illuminate\Support\Facades\Input;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('table', 'TablesController@index');

Route::any('/search',function(){
    $q = Input::get ( 'q' );
    $user = Table::where('objective','LIKE','%'.$q.'%')->orWhere('country','LIKE','%'.$q.'%')->orWhere('action_item','LIKE','%'.$q.'%')->get();
    if(count($user) > 0)
        return view('search')->withDetails($user)->withQuery ( $q );
    else 
        return view ('search')->withMessage('No Details found. Try to search again !');
});