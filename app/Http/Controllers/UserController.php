<?php

namespace App\Http\Controllers;

use App\Models\UserModel;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        // Menambahkan data user dengan Eloquent Model
        $data = [
            'username' => 'customer-2',
            'nama' => 'Pelanggan',
            'password' => Hash::make('12345'),
            'level_id' => 3
        ];
        UserModel::insert($data); // Menambahkan data ke tabel m_user

        // Mencoba akses model UserModel
        $user = UserModel::all(); //Mengambil semua data dari tabel m_user
        return view('user', ['data' => $user]);
    }
}
