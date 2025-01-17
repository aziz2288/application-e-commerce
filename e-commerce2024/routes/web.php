<?php

use App\Http\Controllers\about;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\AppController;
use App\Http\Controllers\blog;
use App\Http\Controllers\cartController;
use App\Http\Controllers\contact;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WishlistController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/',[AppController::class,'index'])->name('app.index');
Route::get('/shop',[ShopController::class,'index'])->name('shop.index');
Route::get('/product/{slug}',[ShopController::class,'productDetails'])->name('shop.product.details');
Route::get('/cart-wishlist-count',[ShopController::class,'getCartAndWishlistCount'])->name('shop.cart.wishlist.count');

Route::get('/cart',[cartController::class,'index'])->name('cart.index');
Route::post('/cart/store',[cartController::class,'addToCart'])->name('cart.store');
Route::put('/cart/update',[cartController::class,'updateCart'])->name('cart.update');
Route::delete('/cart/remove',[cartController::class,'removeItem'])->name('cart.remove');
Route::delete('/cart/clear',[cartController::class,'clearCar'])->name('cart.clear');

Route::get('/wishlist',[WishlistController::class,'getWishlistedProducts'])->name('wishlist.list');
Route::post('/wishlist/add',[WishlistController::class,'addProductToWishlist'])->name('wishlist.store');
Route::delete('/wishlist/remove',[WishlistController::class,'removeProductFromWishlist'])->name('wishlist.remove');
Route::delete('/wishlist/clear',[WishlistController::class,'clearWishlist'])->name('wishlist.clear');
Route::post('/wishlist/move-to-cart',[WishlistController::class,'moveToCart'])->name('wishlist.move.to.cart');

Route::get('/blog',[blog::class,'index'])->name('blog.index');
Route::get('/contact',[contact::class,'index'])->name('contact.index');
Route::get('/about',[about::class,'index'])->name('about.index');

Auth::routes();

Route::middleware('auth')->group(function(){
    Route::get('/my-account',[UserController::class,'index'])->name('user.index');
});

Route::middleware(['auth','auth.admin'])->group(function(){
    Route::get('/admin',[AdminController::class,'index'])->name('admin.index');
});