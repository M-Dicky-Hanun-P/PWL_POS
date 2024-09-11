<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BarangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'barang_id' => 1,
                'kategori_id' => 1,
                'barang_kode' => 'KCB',
                'barang_nama' => 'Kaca Bening',
                'harga_beli' => '200000',
                'harga_jual' => '250000',
            ],

            [
                'barang_id' => 2,
                'kategori_id' => 1,
                'barang_kode' => 'KCC',
                'barang_nama' => 'Kaca Cermin',
                'harga_beli' => '250000',
                'harga_jual' => '300000',
            ],

            [
                'barang_id' => 3,
                'kategori_id' => 1,
                'barang_kode' => 'KCH',
                'barang_nama' => 'Kaca Hitam',
                'harga_beli' => '400000',
                'harga_jual' => '450000',
            ],

            [
                'barang_id' => 4,
                'kategori_id' => 1,
                'barang_kode' => 'KCM',
                'barang_nama' => 'Kaca Modif Bunga',
                'harga_beli' => '500000',
                'harga_jual' => '550000',
            ],

            [
                'barang_id' => 5,
                'kategori_id' => 1,
                'barang_kode' => 'KCP',
                'barang_nama' => 'Kaca Premium',
                'harga_beli' => '600000',
                'harga_jual' => '650000',
            ],

            [
                'barang_id' => 6,
                'kategori_id' => 2,
                'barang_kode' => 'ALT',
                'barang_nama' => 'Aluminium Tipis',
                'harga_beli' => '200000',
                'harga_jual' => '240000',
            ],

            [
                'barang_id' => 7,
                'kategori_id' => 2,
                'barang_kode' => 'ALB',
                'barang_nama' => 'Aluminuim Tebal',
                'harga_beli' => '350000',
                'harga_jual' => '400000',
            ],

            [
                'barang_id' => 8,
                'kategori_id' => 2,
                'barang_kode' => 'ALH',
                'barang_nama' => 'Aluminuim Hitam',
                'harga_beli' => '450000',
                'harga_jual' => '450000',
            ],

            [
                'barang_id' => 9,
                'kategori_id' => 2,
                'barang_kode' => 'ALU',
                'barang_nama' => 'Aluminuim Bulat',
                'harga_beli' => '100000',
                'harga_jual' => '150000',
            ],

            [
                'barang_id' => 10,
                'kategori_id' => 2,
                'barang_kode' => 'ALB',
                'barang_nama' => 'Aluminuim Besi',
                'harga_beli' => '300000',
                'harga_jual' => '350000',
            ],

            [
                'barang_id' => 11,
                'kategori_id' => 3,
                'barang_kode' => 'PRK',
                'barang_nama' => 'Paku Rivet Kecil',
                'harga_beli' => '50000',
                'harga_jual' => '750000',
            ],

            [
                'barang_id' => 12,
                'kategori_id' => 3,
                'barang_kode' => 'PRB',
                'barang_nama' => 'Paku Rivet Besar',
                'harga_beli' => '750000',
                'harga_jual' => '100000',
            ],

            [
                'barang_id' => 13,
                'kategori_id' => 3,
                'barang_kode' => 'PRT',
                'barang_nama' => 'Paku Rivet Tembok',
                'harga_beli' => '750000',
                'harga_jual' => '100000',
            ],

            [
                'barang_id' => 14,
                'kategori_id' => 3,
                'barang_kode' => 'PRP',
                'barang_nama' => 'Paku Rivet Plastik',
                'harga_beli' => '50000',
                'harga_jual' => '750000',
            ],

            [
                'barang_id' => 15,
                'kategori_id' => 3,
                'barang_kode' => 'TRK',
                'barang_nama' => 'Triplek Putih',
                'harga_beli' => '25000',
                'harga_jual' => '50000',
            ],
        ];
        DB::table('m_barang')->insert($data);
    }
}
