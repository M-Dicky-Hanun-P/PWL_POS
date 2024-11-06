<?php


use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\RegisterController;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\LogoutController;
use App\Http\Controllers\Api\LevelController;
use App\Http\Controllers\Api\UserController;
use App\Http\Controllers\Api\KategoriController;
use App\Http\Controllers\Api\StokController;
use App\Http\Controllers\Api\BarangController;
use App\Http\Controllers\Api\DetailController;
use App\Http\Controllers\Api\PenjualanController;
use App\Http\Controllers\Api\SupplierController;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::post('/register', App\Http\Controllers\Api\RegisterController::class)->name('register');
Route::post('/register1', App\Http\Controllers\Api\RegisterController::class)->name('register1');
Route::post('/login', App\Http\Controllers\Api\LoginController::class)->name('login');
Route::middleware('auth:api')->get('/user', function (Request $request){
    return $request->user();
});
Route::post('/logout', App\Http\Controllers\Api\LogoutController::class)->name('logout');

// Jobsheet 10 Praktikum 4
Route::group(['prefix'=>'levels'], function(){
    Route::get('/', [LevelController::class, 'index']);
    Route::post('/', [LevelController::class, 'store']);
    Route::get('/{level}', [LevelController::class, 'show']);
    Route::put('/{level}', [LevelController::class, 'update']);
    Route::delete('/{level}', [LevelController::class, 'destroy']);
});

// Jobsheet 10 Tugas tabel m_user
Route::group(['prefix'=>'users'], function(){
    Route::get('/', [UserController::class, 'index']);
    Route::post('/', [UserController::class, 'store']);
    Route::get('/{user}', [UserController::class, 'show']);
    Route::put('/{user}', [UserController::class, 'update']);
    Route::delete('/{user}', [UserController::class, 'destroy']);
});

// Jobsheet 10 Tugas tabel m_kategori
Route::group(['prefix'=>'kategoris'], function(){
    Route::get('/', [KategoriController::class, 'index']);
    Route::post('/', [KategoriController::class, 'store']);
    Route::get('/{kategori}', [KategoriController::class, 'show']);
    Route::put('/{kategori}', [KategoriController::class, 'update']);
    Route::delete('/{kategori}', [KategoriController::class, 'destroy']);
});

// Jobsheet 10 Tugas tabel m_barang
Route::group(['prefix'=>'barangs'], function(){
    Route::get('/', [BarangController::class, 'index']);
    Route::post('/', [BarangController::class, 'store']);
    Route::get('/{barang}', [BarangController::class, 'show']);
    Route::put('/{barang}', [BarangController::class, 'update']);
    Route::delete('/{barang}', [BarangController::class, 'destroy']);
    
    // Jobsheet 11 Tugas
    Route::post('/barang1', App\Http\Controllers\Api\BarangController::class)->name('barang1');
});

Route::group(['prefix'=>'stoks'], function(){
    Route::get('/', [StokController::class, 'index']);
    Route::post('/', [StokController::class, 'store']);
    Route::get('/{stok}', [StokController::class, 'show']);
    Route::put('/{stok}', [StokController::class, 'update']);
    Route::delete('/{stok}', [StokController::class, 'destroy']);
});

Route::group(['prefix'=>'suppliers'], function(){
    Route::get('/', [SupplierController::class, 'index']);
    Route::post('/', [SupplierController::class, 'store']);
    Route::get('/{supplier}', [SupplierController::class, 'show']);
    Route::put('/{supplier}', [SupplierController::class, 'update']);
    Route::delete('/{supplier}', [SupplierController::class, 'destroy']);
});

Route::group(['prefix'=>'penjualans'], function(){
    Route::get('/', [PenjualanController::class, 'index']);
    Route::post('/', [PenjualanController::class, 'store']);
    Route::get('/{penjualan}', [PenjualanController::class, 'show']);
    Route::put('/{penjualan}', [PenjualanController::class, 'update']);
    Route::delete('/{penjualan}', [PenjualanController::class, 'destroy']);

    // Jobsheet 11 Tugas
    Route::post('/penjualan1', App\Http\Controllers\Api\PenjualanController::class)->name('penjualan1');
});

Route::group(['prefix'=>'details'], function(){
    Route::get('/', [DetailController::class, 'index']);
    Route::post('/', [DetailController::class, 'store']);
    Route::get('/{detail}', [DetailController::class, 'show']);
    Route::put('/{detail}', [DetailController::class, 'update']);
    Route::delete('/{detail}', [DetailController::class, 'destroy']);
});