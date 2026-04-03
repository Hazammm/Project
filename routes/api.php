<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/newsletter', static function (Request $request) {
    $request->validate(['email' => 'required|email']);
    \Illuminate\Support\Facades\Mail::to($request->email)->send(new \App\Mail\NewsletterSubscribed());
    return response()->json(['success' => true]);
});
