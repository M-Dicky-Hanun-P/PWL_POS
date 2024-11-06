<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\PenjualanModel;
use Illuminate\Support\Facades\Validator;

class PenjualanController extends Controller
{
    public function index()
    {
        return PenjualanModel::all();
    }
    public function store(Request $request)
    {
        $Penjualan = PenjualanModel::create($request->all());
        return response()->json($Penjualan, 201);
    }

    public function show(PenjualanModel $Penjualan)
    {
        return PenjualanModel::find($Penjualan);
    }

    public function update(Request $request, PenjualanModel $Penjualan)
    {
        $Penjualan->update($request->all());
        return PenjualanModel::find($Penjualan);
    }

    public function destroy(PenjualanModel $Penjualan)
    {
        $Penjualan->delete();
        return response()->json([
            'success' => true,
            'message' => 'Data terhapus'
        ]);
    }

    public function __invoke(Request $request)
    {
        // set validation
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
            'pembeli' => 'required',
            'penjualan_kode' => 'required',
            'penjualan_tanggal' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        // if validations fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        // Handle file upload
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image->storeAs('public/posts', $image->hashName());
        }

        // create penjualan
        $penjualan = PenjualanModel::create([
            'user_id' => $request->user_id,
            'pembeli' => $request->pembeli,
            'penjualan_kode' => $request->penjualan_kode,
            'penjualan_tanggal' => $request->penjualan_tanggal,
            'image' => $image->hashName(),
        ]);

        // return response JSON if user is created
        if ($penjualan) {
            return response()->json([
                'success' => true,
                'barang' => $penjualan,
            ], 201);
        }

        // return JSON if insert process failed
        return response()->json([
            'success' => false,
        ], 409);
    }
}
