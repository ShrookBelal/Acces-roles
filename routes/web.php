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

use Illuminate\Support\Facades\Route;


Route::get('/dynamic_dependent', 'DynamicDependent@index');

Route::post('dynamic_dependent/fetch', 'DynamicDependent@fetch')->name('dynamicdependent.fetch');

Route::group(['middleware' => ['auth', 'auth.admin']], function () {
    Route::get('/admin', 'main@index');
});

Route::get('/auth/redirect/{provider}', 'SocialController@redirect');
Route::get('/callback/{provider}', 'SocialController@callback');
// Route::get('/redirect', 'SocialAuthFacebookController@redirect');
// Route::get('/callback', 'SocialAuthFacebookController@callback');

Route::get('google', function () {
    return view('googleAuth');
});

Route::get('auth/google', 'Auth\LoginController@redirectToGoogle');
Route::get('/google/callback', 'Auth\LoginController@handleGoogleCallback');
Route::get('/', 'WebsiteController@index')->name('home');
Route::get('/setting', 'sitting@index')->name('setting');
Route::post('/settingupdate/{id}', 'sitting@updateSetting');
Route::get('/configretion/ar', 'config@showen')->name('arabic');
Route::get('/configretion/en', 'config@index')->name('english');
Route::post('/configupdate/{id}', 'config@update');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');


//roles routes 
Route::group(['middleware' => ['auth', 'auth.admin']], function () {
    Route::get('/acess/roles', 'roles@index')->name('role');
    Route::get('/acess/role/{id}', 'roles@edit')->name('editrole');
    Route::get('/acess/role', 'roles@stor')->name('roleadd');
    Route::get('/acess/addrole', 'roles@store')->name('addrole');
    Route::get('/acess/updaterole/{id}', 'roles@update')->name('updaterole');
    Route::get('/acess/deleterole/{id}', 'roles@destroy')->name('deleterole');


    //prmission routes
    Route::get('/acess/permissions', 'permissions@index')->name('permission');
    Route::get('/acess/permission', 'permissions@stor')->name('per');
    Route::get('/acess/addpermission', 'permissions@store')->name('addper');
    Route::get('/acess/edit/{id}', 'permissions@edit')->name('editper');
    Route::get('/acess/updatepermission/{id}', 'permissions@update')->name('updateper');
    Route::get('/acess/deletepermission/{id}', 'permissions@destroy')->name('deleteper');

    //user routes
    Route::get('/acess/users', 'users@index')->name('user');
    Route::get('/acess/users/{id}', 'users@show')->name('edituser');
    Route::get('/acess/updateuser/{id}', 'users@update')->name('updateuser');
    Route::get('/acess/deleteuser/{id}', 'users@destroy')->name('deleteuser');
    Route::get('/acess/user', 'users@stor')->name('useradd');
    Route::get('/acess/adduser', 'users@store')->name('adduser');
});
