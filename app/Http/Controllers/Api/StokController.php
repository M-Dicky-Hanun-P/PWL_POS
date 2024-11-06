<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StokModel;

class StokController extends Controller
{
    public function index()
    {
        return StokModel::all();
    }
    public function store(Request $request)
    {
        $Stok = StokModel::create($request->all());
        return response()->json($Stok, 201);
    }

    public function show(StokModel $Stok)
    {
        return StokModel::find($Stok);
    }

    public function update(Request $request, StokModel $Stok)
    {
        $Stok->update($request->all());
        return StokModel::find($Stok);
    }

    public function destroy(StokModel $Stok)
    {
        $Stok->delete();
        return response()->json([
            'success' => true,
            'message' => 'Data terhapus'
        ]);
    }
}
