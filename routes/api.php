<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Route::get('/user', function (Request $request) {
//     return $request->user();
// })->middleware('auth:sanctum');



Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

Route::group(['middleware' =>['auth:sanctum', 'IsTokenActive']], function() {
    Route::get('/isTokenValid', fn() => ["success" => true, "authenticated" => true]);
});

Route::group(['middleware' => ['auth:sanctum', 'IsAdmin', 'IsTokenActive']], function() {
    Route::get('/isAdmin', fn() => ['Admin' => true]);
    Route::get('/users', [UserController::class, 'users']);
});