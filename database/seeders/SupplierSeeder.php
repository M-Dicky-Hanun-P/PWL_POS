<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SupplierSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'supplier_id' => 1,
                'supplier_kode' => 'KCA',
                'supplier_nama' => 'Aluminuim Kepanjen',
                'supplier_alamat' => 'Kepanjen',
            ],
            [
                'supplier_id' => 2,
                'supplier_kode' => 'MLG',
                'supplier_nama' => 'Aluminuim Kota Malang',
                'supplier_alamat' => 'Malang',
            ],
            [
                'supplier_id' => 3,
                'supplier_kode' => 'BLT',
                'supplier_nama' => 'Aluminium Blitar',
                'supplier_alamat' => 'Blitar',
            ],
        ];
        DB::table('m_supplier')->insert($data);
    }
}
