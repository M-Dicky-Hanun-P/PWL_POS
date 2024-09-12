<?php

namespace App\Http\Controllers;

use App\Models\UserModel;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function index()
    {
        // Menambahkan data user dengan Eloquent Model
        // $data = [
        //     'username' => 'customer-1',
        //     'nama' => 'Pelanggan',
        //     'password' => Hash::make('12345'),
        //     'level_id' => 4
        // ];
        // UserModel::insert($data); // Menambahkan data ke tabel m_user

        // // Mencoba akses model UserModel
        $user = UserModel::all(); //Mengambil semua data dari tabel m_user
        return view('user', ['data' => $user]);

        // $row = DB::update('update m_user set user_id = ?, level_id = ?, username = ? where nama = ? ', [4, 4, 'customer-1', 'Pelanggan Pertama']);
        // return 'update data berhasil. jumlah data yang diupdate: ' . $row . 'baris';
    }
}
