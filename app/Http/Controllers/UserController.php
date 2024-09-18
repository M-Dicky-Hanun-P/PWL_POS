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

        // Praktikum 2.4, 2.5
        $user = UserModel::create([
            'username' => 'manager11',
            'nama' => 'Manager11',
            'password' => Hash::make('12345'),
            'level_id' => 2,

        ],
    );
    $user->username = 'manager12';

    // $user->isDirty(); //true
    // $user->isDirty('username'); //true
    // $user->isDirty('nama'); //false
    // $user->isDirty('nama', 'username'); //true
    
    // $user->isClean(); //false
    // $user->isClean('username'); //false
    // $user->isClean('nama'); //true
    // $user->isClean('nama', 'username'); //false

    $user->save();

    $user->wasChanged(); //true
    $user->wasChanged('username'); //true
    $user->wasChanged('username', 'level_id'); //true
    $user->wasChanged('nama'); //false
    dd($user->wasChanged(['nama', 'username'])); //true
    }
}
