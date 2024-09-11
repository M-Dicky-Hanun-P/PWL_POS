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
            'nama' => 'Pelanggan Pertama',
        ];
        UserModel::where('username', 'customer-2')->update($data); // Menambahkan data ke tabel m_user

        // Mencoba akses model UserModel
        $user = UserModel::all(); //Mengambil semua data dari tabel m_user
        return view('user', ['data' => $user]);
    }
}
