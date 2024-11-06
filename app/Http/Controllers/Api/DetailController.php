<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\DetailModel;

class DetailController extends Controller
{
    public function index()
    {
        return DetailModel::all();
    }
    public function store(Request $request)
    {
        $Detail = DetailModel::create($request->all());
        return response()->json($Detail, 201);
    }

    public function show(DetailModel $Detail)
    {
        return DetailModel::find($Detail);
    }

    public function update(Request $request, DetailModel $Detail)
    {
        $Detail->update($request->all());
        return DetailModel::find($Detail);
    }

    public function destroy(DetailModel $Detail)
    {
        $Detail->delete();
        return response()->json([
            'success' => true,
            'message' => 'Data terhapus'
        ]);
    }
}
