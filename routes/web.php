<?php

use App\Http\Controllers\BarangController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\WelcomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LevelController;
use App\Http\Controllers\StokController;
use App\Http\Controllers\SupplierController;

Route::pattern('id', '[0-9]+'); // artinya ketika ada parameter {id}, maka harus berupa angka

Route::get('login', [AuthController::class, 'login'])->name('login');
Route::post('login', [AuthController::class, 'postlogin']);
Route::get('logout', [AuthController::class, 'logout'])->middleware('auth');
Route::get('register', [AuthController::class, 'register']);
Route::post('register', [AuthController::class, 'store']);

Route::middleware(['auth'])->group(function () {

    Route::get('/', [WelcomeController::class, 'index']);

    // Jobsheet 6 Praktikum 1, 2, 3
    // Jobsheet 8 Tugas 3
    Route::group(['prefix' => 'user'], function () {
        Route::get('/', [UserController::class, 'index']);      // Menampilkan halaman awal user
        Route::post('/list', [UserController::class, 'list']);      // Menampilkan data user dalam bentuk jeson untuk datatables
        Route::get('/create', [UserController::class, 'create']);      // Menampilkan halaman form tambah user
        Route::post('/', [UserController::class, 'store']);      // Menyimpan data user baru
        Route::get('/create_ajax', [UserController::class, 'create_ajax']); // Menampilkan halaman form tambah user Ajax
        Route::post('/ajax', [UserController::class, 'store_ajax']); // Menampilkan data user baru
        Route::get('/{id}', [UserController::class, 'show']);      // Menampilkan detail user
        Route::get('/{id}/edit', [UserController::class, 'edit']);      // Menampilkan halaman form edit user
        Route::put('/{id}', [UserController::class, 'update']);      // Menyimpan perubahan data user
        Route::get('/{id}/show_ajax', [UserController::class, 'show_ajax']); // Menampilkan halaman detail user
        Route::get('/{id}/edit_ajax', [UserController::class, 'edit_ajax']); // Menampilkan halaman form edit user Ajax
        Route::put('/{id}/update_ajax', [UserController::class, 'update_ajax']); // Menyimpan perubahan data user Ajax
        Route::get('/{id}/delete_ajax', [UserController::class, 'confirm_ajax']); // Untuk menampilkan form konfirmasi delete user Ajax
        Route::delete('/{id}/delete_ajax', [UserController::class, 'delete_ajax']); // Untuk menghapus data user Ajax
        Route::delete('/{id}', [UserController::class, 'destroy']);      // Menghapus data user
        Route::get('/import', [UserController::class, 'import']);      // ajax form upload excel
        Route::post('/import_ajax', [UserController::class, 'import_ajax']);      // ajax import excel
        Route::get('/export_excel', [UserController::class, 'export_excel']);      // export excel
        Route::get('/export_pdf', [UserController::class, 'export_pdf']);      // export pdf
    });

    // Jobsheet 6 Tugas m_level
    // Jobsheet 7 Praktikum 2
    // Jobsheet 8 Tugas 3
    Route::group(['prefix' => 'level', 'middleware' => 'authorize:ADM'], function () {
        Route::get('/', [LevelController::class, 'index']);         // menampilkan halaman awal level
        Route::post('/list', [LevelController::class, 'list']);     // menampilkan data level dalam bentuk json untuk datatables
        Route::get('/create', [LevelController::class, 'create']);  // menampilkan halaman form tambah level
        Route::post('/', [LevelController::class, 'store']);        // menyimpan data level baru
        Route::get('/create_ajax', [LevelController::class, 'create_ajax']); // Menampilkan halaman form tambah user Ajax
        Route::post('/ajax', [LevelController::class, 'store_ajax']);     // Menyimpan data user baru Ajax
        Route::get('/{id}', [LevelController::class, 'show']);      // menampilkan detail level
        Route::get('/{id}/edit', [LevelController::class, 'edit']); // menampilkan halaman form edit level
        Route::put('/{id}', [LevelController::class, 'update']);    // menyimpan perubahan data level
        Route::get('/{id}/show_ajax', [LevelController::class, 'show_ajax']); // Menampilkan halaman detail level
        Route::get('/{id}/edit_ajax', [LevelController::class, 'edit_ajax']); // Menampilkan halaman form edit level Ajax
        Route::put('/{id}/update_ajax', [LevelController::class, 'update_ajax']); // Menyimpan perubahan data level Ajax
        Route::get('/{id}/delete_ajax', [LevelController::class, 'confirm_ajax']); // Untuk menampilkan form konfirmasi delete level Ajax
        Route::delete('/{id}/delete_ajax', [LevelController::class, 'delete_ajax']); // Untuk menghapus data level Ajax
        Route::delete('/{id}', [LevelController::class, 'destroy']); // menghapus data level
        Route::get('/import', [LevelController::class, 'import']);      // ajax form upload excel
        Route::post('/import_ajax', [LevelController::class, 'import_ajax']);      // ajax import excel
        Route::get('/export_excel', [LevelController::class, 'export_excel']);      // export excel
        Route::get('/export_pdf', [LevelController::class, 'export_pdf']);      // export pdf
    });

    // Jobsheet 6 Tugas m_kategori
    // Jobsheet 7 Tugas 3
    // Jobsheet 8 Tugas 3
    Route::group(['prefix' => 'kategori', 'middleware' => 'authorize:ADM,MNG,STF'], function () {
        Route::get('/', [KategoriController::class, 'index']);      // Menampilkan halaman awal kategori
        Route::post('/list', [KategoriController::class, 'list']);      // Menampilkan data kategori dalam bentuk jeson untuk datatables
        Route::get('/create', [KategoriController::class, 'create']);      // Menampilkan halaman form tambah kategori
        Route::post('/', [KategoriController::class, 'store']);      // Menyimpan data kategori baru
        Route::get('/create_ajax', [KategoriController::class, 'create_ajax']); // Menampilkan halaman form tambah kategori Ajax
        Route::post('/ajax', [KategoriController::class, 'store_ajax']);     // Menyimpan data kategori baru Ajax
        Route::get('/{id}', [KategoriController::class, 'show']);      // Menampilkan detail kategori
        Route::get('/{id}/edit', [KategoriController::class, 'edit']);      // Menampilkan halaman form edit kategori
        Route::put('/{id}', [KategoriController::class, 'update']);      // Menyimpan perubahan data kategori
        Route::get('/{id}/show_ajax', [KategoriController::class, 'show_ajax']); // Menampilkan halaman detail kategori
        Route::get('/{id}/edit_ajax', [KategoriController::class, 'edit_ajax']); // Menampilkan halaman form edit kategori Ajax
        Route::put('/{id}/update_ajax', [KategoriController::class, 'update_ajax']); // Menyimpan perubahan data kategori Ajax
        Route::get('/{id}/delete_ajax', [KategoriController::class, 'confirm_ajax']); // Untuk menampilkan form konfirmasi delete kategori Ajax
        Route::delete('/{id}/delete_ajax', [KategoriController::class, 'delete_ajax']); // Untuk menghapus data kategori  Ajax
        Route::delete('/{id}', [KategoriController::class, 'destroy']);      // Menghapus data kategori
        Route::get('/import', [KategoriController::class, 'import']);      // ajax form upload excel
        Route::post('/import_ajax', [KategoriController::class, 'import_ajax']);      // ajax import excel
        Route::get('/export_excel', [KategoriController::class, 'export_excel']);      // export excel
        Route::get('/export_pdf', [KategoriController::class, 'export_pdf']);      // export pdf
    });

    // Jobsheet 6 Tugas m_supplier
    // Jobsheet 7 Tugas 3
    // Jobsheet 8 Tugas 3
    Route::group(['prefix' => 'supplier', 'middleware' => 'authorize:ADM,MNG,STF'], function () {
        Route::get('/', [SupplierController::class, 'index']);      // Menampilkan halaman awal Supplier
        Route::post('/list', [SupplierController::class, 'list']);      // Menampilkan data Supplier dalam bentuk jeson untuk datatables
        Route::get('/create', [SupplierController::class, 'create']);      // Menampilkan halaman form tambah Supplier
        Route::post('/', [SupplierController::class, 'store']);      // Menyimpan data Supplier baru
        Route::get('/create_ajax', [SupplierController::class, 'create_ajax']); // Menampilkan halaman form tambah supplier Ajax
        Route::post('/ajax', [SupplierController::class, 'store_ajax']);     // Menyimpan data supplier baru Ajax
        Route::get('/{id}', [SupplierController::class, 'show']);      // Menampilkan detail Supplier
        Route::get('/{id}/edit', [SupplierController::class, 'edit']);      // Menampilkan halaman form edit Supplier
        Route::put('/{id}', [SupplierController::class, 'update']);      // Menyimpan perubahan data Supplier
        Route::get('/{id}/show_ajax', [SupplierController::class, 'show_ajax']); // Menampilkan halaman detail supplier Ajax
        Route::get('/{id}/edit_ajax', [SupplierController::class, 'edit_ajax']); // Menampilkan halaman form edit supplier Ajax
        Route::put('/{id}/update_ajax', [SupplierController::class, 'update_ajax']); // Menyimpan perubahan data supplier Ajax
        Route::get('/{id}/delete_ajax', [SupplierController::class, 'confirm_ajax']); // Untuk menampilkan form supplier delete kategori Ajax
        Route::delete('/{id}/delete_ajax', [SupplierController::class, 'delete_ajax']); // Untuk menghapus data supplier  Ajax
        Route::delete('/{id}', [SupplierController::class, 'destroy']);      // Menghapus data Supplier
        Route::get('/import', [SupplierController::class, 'import']);      // ajax form upload excel
        Route::post('/import_ajax', [SupplierController::class, 'import_ajax']);      // ajax import excel
        Route::get('/export_excel', [SupplierController::class, 'export_excel']);      // export excel
        Route::get('/export_pdf', [SupplierController::class, 'export_pdf']);      // export pdf
    });

    // Jobsheet 6 Tugas m_barang
    // Jobsheet 7 Praktikum 3
    // Jobsheet 8 Tugas 3
    Route::group(['prefix' => 'barang', 'middleware' => 'authorize:ADM,MNG'], function () {
        Route::get('/', [BarangController::class, 'index']);      // Menampilkan halaman awal Barang
        Route::post('/list', [BarangController::class, 'list']);      // Menampilkan data Barang dalam bentuk jeson untuk datatables
        Route::get('/create', [BarangController::class, 'create']);      // Menampilkan halaman form tambah Barang
        Route::post('/', [BarangController::class, 'store']);      // Menyimpan data Barang baru
        Route::get('/create_ajax', [BarangController::class, 'create_ajax']); // Menampilkan halaman form tambah barang Ajax
        Route::post('/ajax', [BarangController::class, 'store_ajax']);     // Menyimpan data barang baru Ajax
        Route::get('/{id}', [BarangController::class, 'show']);      // Menampilkan detail Barang
        Route::get('/{id}/edit', [BarangController::class, 'edit']);      // Menampilkan halaman form edit Barang
        Route::put('/{id}', [BarangController::class, 'update']);      // Menyimpan perubahan data Barang
        Route::get('/{id}/show_ajax', [BarangController::class, 'show_ajax']); // Menampilkan halaman detail supplier Ajax
        Route::get('/{id}/edit_ajax', [BarangController::class, 'edit_ajax']); // Menampilkan halaman form edit barang Ajax
        Route::put('/{id}/update_ajax', [BarangController::class, 'update_ajax']); // Menyimpan perubahan data barang Ajax
        Route::get('/{id}/delete_ajax', [BarangController::class, 'confirm_ajax']); // Untuk menampilkan form barang delete barang Ajax
        Route::delete('/{id}/delete_ajax', [BarangController::class, 'delete_ajax']); // Untuk menghapus data barang  Ajax
        Route::delete('/{id}', [BarangController::class, 'destroy']);      // Menghapus data Barang
        Route::get('/import', [BarangController::class, 'import']);      // ajax form upload excel
        Route::post('/import_ajax', [BarangController::class, 'import_ajax']);      // ajax import excel
        Route::get('/export_excel', [BarangController::class, 'export_excel']);      // export excel
        Route::get('/export_pdf', [BarangController::class, 'export_pdf']);      // export pdf

    });

    // UTS fitur t_stok
    Route::group(['prefix' => 'stok'], function () {
        Route::get('/', [stokcontroller::class, 'index']);
        Route::post('/list', [stokcontroller::class, 'list']);
        Route::get('/create', [stokcontroller::class, 'create']);
        Route::post('/', [stokcontroller::class, 'store']);
        Route::get('/{id}', [stokcontroller::class, 'show']);
        Route::get('/{id}/edit', [stokcontroller::class, 'edit']);
        Route::put('/{id}', [stokcontroller::class, 'update']);
        Route::delete('/{id}', [stokcontroller::class, 'destroy']);
    });
});
