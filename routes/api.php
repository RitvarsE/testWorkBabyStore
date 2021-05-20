<?php

use App\Http\Controllers\ImageController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/upload', [ImageController::class, 'upload'])->middleware('cors');
Route::post('/create', [ImageController::class, 'create'])->middleware('cors');
Route::get('/getSliderImages', [ImageController::class, 'getSliderImages'])->middleware('cors');
Route::get('/getBottomImages', [ImageController::class, 'getBottomImages'])->middleware('cors');
Route::get('/getSideBarImages', [ImageController::class, 'getSideBarImages'])->middleware('cors');
Route::post('/addClick/{id}', [ImageController::class, 'addClick'])->middleware('cors');
Route::post('/addView/{id}', [ImageController::class, 'addView'])->middleware('cors');
Route::get('/all', [ImageController::class, 'all'])->middleware('cors');
