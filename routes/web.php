<?php
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Http\Controllers\CartController;
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



Route::get('/', 'LandingPageController@index')->name('home.index');

Route::get('/shop', 'ShopController@index')->name('shop.index');
Route::get('/search', 'ShopController@search')->name('search');

Route::get('/search-algolia', 'ShopController@searchAlgolia')->name('search-algolia');
Route::get('/shop/{id}', 'ShopController@show')->name('shop.show');

Route::get('/cart', 'CartController@index')->name('cart.index'); 
Route::post('/cart', 'CartController@store')->name('cart.store');
Route::delete('/cart/{id}', 'CartController@destroy')->name('cart.delete');
Route::patch('/cart/{id}', 'CartController@update')->name('cart.update');

Route::get('/empty', function(){

  Cart::destroy();
     
}); 


Route::get('/checkout', 'CheckOutController@index')->name('checkout.index')->middleware('auth');
Route::get('/checkout_as_guest', 'CheckOutController@index')->name('guestCheckout.index');
Route::post('/checkout', 'CheckOutController@store')->name('checkout.store');

Route::get('/thankyou', 'ConfirmationController@index')->name('confirmation.index');

// Route::view('/login', 'LoginPage');
// Route::view('/register', 'RegistrationPage');
// Route::view('/checkout', 'CheckOutPage');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
