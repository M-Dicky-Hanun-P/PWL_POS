@extends('layouts.template')

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">Halo, apakabar!</h3>
        <div class="card-tools"></div>
    </div>
    <div class="card-body">
        <p>Selamat datang semua di toko Bintang MDHP, ini adalah halaman utama dari aplikasi ini.</p>
        <div style="display: flex; justify-content: center;">
        <img src="{{ asset('logoToko.svg') }}" alt="Selamat Datang" style="max-width: 50%; height: auto;">
    </div>
</div>

@endsection
