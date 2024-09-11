<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'user_id' => 1,
                'level_id' => 'admin',
                'username' => 'admin',
                'nama' => 'Administrator',
                'password' => Hash::make('12345'),
            ],

            [
                'user_id' => 2,
                'level_id' => 'ADM',
                'username' => 'Administrator',
                'nama' => 'Administrator',
                'password' => Hash::make('12345'),
            ],

            [
                'user_id' => 1,
                'level_id' => 'ADM',
                'username' => 'Administrator',
                'nama' => 'Administrator',
                'password' => Hash::make('12345'),
            ],
        ];
        DB::table('m_level')->insert($data);
    }
}
