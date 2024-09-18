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

        //Praktikum 2.1
        // $user = UserModel::findOr(20, ['username', 'nama'], function () {
        //     abort(404);
        // });
        // return view('user', ['data' => $user]);

        //Praktikum 2.2, 2.3
        // $user = UserModel::where('level_id', 2)->count();
        // return view('user', ['data' => $user]);

        // Praktikum 2.4
        $user = UserModel::firstOrNew([
            'username' => 'manager33',
            'nama' => 'Manager Tiga Tiga',
            'password' => Hash::make('12345'),
            'level_id' => 2

        ],
    );
    $user->save();
    
    return view('user', ['data' => $user]);
    }
}
