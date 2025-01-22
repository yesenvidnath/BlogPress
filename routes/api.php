<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Users\UserController;
use App\Http\Controllers\Common\SeoController;
use App\Http\Controllers\Common\PageController;
use App\Http\Controllers\Common\NavMenuController;
use App\Http\Controllers\Common\GalleryController;
use App\Http\Controllers\Common\CategoryController;
use App\Http\Controllers\Common\MenuItemController;
use App\Http\Controllers\Common\EmailListController;
use App\Http\Controllers\Common\ImageListController;
use App\Http\Controllers\Common\GlobalInfoController;
use App\Http\Controllers\Common\LocationsListController;
use App\Http\Controllers\Common\PhoneNumbersListController;


Route::prefix('auth')->group(function () {
    Route::post('/register', [UserController::class, 'register']);
    Route::post('/login', [UserController::class, 'login']);
    Route::post('/logout', [UserController::class, 'logout'])->middleware('auth:sanctum');
    Route::get('/profile', [UserController::class, 'userProfile'])->middleware('auth:sanctum');
});
