<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SupplierModel;

class SupplierController extends Controller
{
    public function index()
    {
        return SupplierModel::all();
    }
    public function store(Request $request)
    {
        $Supplier = SupplierModel::create($request->all());
        return response()->json($Supplier, 201);
    }

    public function show(SupplierModel $Supplier)
    {
        return SupplierModel::find($Supplier);
    }

    public function update(Request $request, SupplierModel $Supplier)
    {
        $Supplier->update($request->all());
        return SupplierModel::find($Supplier);
    }

    public function destroy(SupplierModel $Supplier)
    {
        $Supplier->delete();
        return response()->json([
            'success' => true,
            'message' => 'Data terhapus'
        ]);
    }
}
