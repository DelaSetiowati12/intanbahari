<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestimoniController;


Route::get('/testimoni', [TestimoniController::class, 'index']);

Route::prefix('admin')->group(function () {
    Route::get('/testimoni', [TestimoniController::class, 'admin'])->name('testimoni');
    Route::get('/testimoni/create', [TestimoniController::class, 'create'])->name('testimoni.create');
    Route::post('/testimoni/store', [TestimoniController::class, 'store'])->name('testimoni.store');
    Route::get('/testimoni/edit/{id}', [TestimoniController::class, 'edit'])->name('testimoni.edit');
    Route::put('/testimoni/update/{id}', [TestimoniController::class, 'update'])->name('testimoni.update');
    Route::delete('/testimoni/delete/{id}', [TestimoniController::class, 'destroy'])->name('testimoni.delete');
});

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

Route::get('/', 'HomeController@index')->name('home');
Route::get('/detail/{slug}', 'DetailController@index')->name('detail');

Route::post('/checkout/{id}', 'CheckoutController@process')
    ->name('checkout_process')
    ->middleware(['auth','verified']);

Route::get('/checkout/{id}', 'CheckoutController@index')
    ->name('checkout')
    ->middleware(['auth','verified']);

Route::post('/checkout/create/{detail_id}', 'CheckoutController@create')
    ->name('checkout-create')
    ->middleware(['auth','verified']);

Route::get('/checkout/remove/{detail_id}', 'CheckoutController@remove')
    ->name('checkout-remove')
    ->middleware(['auth','verified']);

Route::get('/checkout/confirm/{id}', 'CheckoutController@success')
    ->name('checkout-success')
    ->middleware(['auth','verified']);



Route::prefix('admin')
    ->namespace('Admin')
    ->middleware(['auth','admin'])
    ->group(function() {
        Route::get('/', 'DashboardController@index')
            ->name('dashboard');

        Route::resource('travel-package', 'TravelPackageController');

        Route::resource('gallery', 'GalleryController');
        Route::resource('transaction', 'TransactionController');

    });

    Auth::routes(['verify' => true]);


    //Midtrans
    Route::post('/midtrans/callback', 'MidtransController@notificationHandler');
    Route::get('/midtrans/finish', 'MidtransController@finishRedirect');
    Route::get('/midtrans/unfinish', 'MidtransController@unfinishRedirect');
    Route::get('/midtrans/error', 'MidtransController@errorRedirect');

