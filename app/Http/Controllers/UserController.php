<?php

namespace App\Http\Controllers;

use App\Models\UserModel;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
            //Praktikum 1
        // $data = [
        //     'level_id' => 2,
        //     'username' => 'manager_tiga',
        //     'nama' => 'Manager 3',
        //     'password' => Hash::make('12345')
        // ];
        // UserModel::create($data);

        // // Mencoba akses model UserModel
        // $user = UserModel::all();
        // return view('user', ['data' => $user]);

        $user = UserModel::find(1);
        return view('user', ['data' => $user]);

    }
}
