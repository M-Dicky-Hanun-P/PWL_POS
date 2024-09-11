<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'kategori_id' => 1,
                'kategori_kode' => 'KCA',
                'kategori_nama' => 'Kaca Cermin',
            ],

            [
                'kategori_id' => 2,
                'kategori_kode' => 'ALM',
                'kategori_nama' => 'Aluminium',
            ],

            [
                'kategori_id' => 3,
                'kategori_kode' => 'LMP',
                'kategori_nama' => 'Lemari Pakaian',
            ],

            [
                'kategori_id' => 4,
                'kategori_kode' => 'LMB',
                'kategori_nama' => 'Lemari Belajar',
            ],

            [
                'kategori_id' => 5,
                'kategori_kode' => 'LMS',
                'kategori_nama' => 'Lemari Sepatu',
            ],
        ];
        DB::table('m_kategori')->insert($data);
    }
}
