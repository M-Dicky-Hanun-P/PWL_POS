<?php

use App\Http\Controllers\barangcontroller;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\WelcomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LevelController;
use App\Http\Controllers\SupplierController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [WelcomeController::class, 'index']);
Route::get('/level', [WelcomeController::class, 'index']);

// Jobsheet 5 Praktikum 3
Route::group(['prefix' => 'user'], function(){
    Route::get('/', [UserController::class, 'index']);      // Menampilkan halaman awal user
    Route::post('/list', [UserController::class, 'list']);      // Menampilkan data user dalam bentuk jeson untuk datatables
    Route::get('/create', [UserController::class, 'create']);      // Menampilkan halaman form tambah user
    Route::post('/', [UserController::class, 'store']);      // Menyimpan data user baru
    Route::get('/{id}', [UserController::class, 'show']);      // Menampilkan detail user
    Route::get('/{id}/edit', [UserController::class, 'edit']);      // Menampilkan halaman form edit user
    Route::put('/{id}', [UserController::class, 'update']);      // Menyimpan perubahan data user
    Route::delete('/{id}', [UserController::class, 'destroy']);      // Menghapus data user
});

Route::group(['prefix' => 'level'], function(){
    Route::get('/', [LevelController::class, 'index']);      // Menampilkan halaman awal level
    Route::post('/list', [LevelController::class, 'list']);      // Menampilkan data level dalam bentuk jeson untuk datatables
    Route::get('/create', [LevelController::class, 'create']);      // Menampilkan halaman form tambah level
    Route::post('/', [LevelController::class, 'store']);      // Menyimpan data level baru
    Route::get('/{id}', [LevelController::class, 'show']);      // Menampilkan detail level
    Route::get('/{id}/edit', [LevelController::class, 'edit']);      // Menampilkan halaman form edit level
    Route::put('/{id}', [LevelController::class, 'update']);      // Menyimpan perubahan data level
    Route::delete('/{id}', [LevelController::class, 'destroy']);      // Menghapus data level
});

Route::group(['prefix' => 'kategori'], function(){
    Route::get('/', [KategoriController::class, 'index']);      // Menampilkan halaman awal kategori
    Route::post('/list', [KategoriController::class, 'list']);      // Menampilkan data kategori dalam bentuk jeson untuk datatables
    Route::get('/create', [KategoriController::class, 'create']);      // Menampilkan halaman form tambah kategori
    Route::post('/', [KategoriController::class, 'store']);      // Menyimpan data kategori baru
    Route::get('/{id}', [KategoriController::class, 'show']);      // Menampilkan detail kategori
    Route::get('/{id}/edit', [KategoriController::class, 'edit']);      // Menampilkan halaman form edit kategori
    Route::put('/{id}', [KategoriController::class, 'update']);      // Menyimpan perubahan data kategori
    Route::delete('/{id}', [KategoriController::class, 'destroy']);      // Menghapus data kategori
});

Route::group(['prefix' => 'supplier'], function(){
    Route::get('/', [SupplierController::class, 'index']);      // Menampilkan halaman awal Supplier
    Route::post('/list', [SupplierController::class, 'list']);      // Menampilkan data Supplier dalam bentuk jeson untuk datatables
    Route::get('/create', [SupplierController::class, 'create']);      // Menampilkan halaman form tambah Supplier
    Route::post('/', [SupplierController::class, 'store']);      // Menyimpan data Supplier baru
    Route::get('/{id}', [SupplierController::class, 'show']);      // Menampilkan detail Supplier
    Route::get('/{id}/edit', [SupplierController::class, 'edit']);      // Menampilkan halaman form edit Supplier
    Route::put('/{id}', [SupplierController::class, 'update']);      // Menyimpan perubahan data Supplier
    Route::delete('/{id}', [SupplierController::class, 'destroy']);      // Menghapus data Supplier
});

Route::group(['prefix' => 'barang'], function(){
    Route::get('/', [BarangController::class, 'index']);      // Menampilkan halaman awal Barang
    Route::post('/list', [BarangController::class, 'list']);      // Menampilkan data Barang dalam bentuk jeson untuk datatables
    Route::get('/create', [BarangController::class, 'create']);      // Menampilkan halaman form tambah Barang
    Route::post('/', [BarangController::class, 'store']);      // Menyimpan data Barang baru
    Route::get('/{id}', [BarangController::class, 'show']);      // Menampilkan detail Barang
    Route::get('/{id}/edit', [BarangController::class, 'edit']);      // Menampilkan halaman form edit Barang
    Route::put('/{id}', [BarangController::class, 'update']);      // Menyimpan perubahan data Barang
    Route::delete('/{id}', [BarangController::class, 'destroy']);      // Menghapus data Barang
});

