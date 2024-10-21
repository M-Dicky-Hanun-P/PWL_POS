@extends('layouts.template')

@section('content')
    <div class="container mt-3">
        @if (session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @elseif (session('error'))
            <div class="alert alert-danger">{{ session('error') }}</div>
        @endif

        <h2 class="text-center mb-2">Edit Profil</h2>

        <!-- Menampilkan foto profil -->
        <div class="text-center mb-4">
            <div class="position-relative">
                <img src="{{ asset('storage/' . Auth()->user()->avatar) }}" alt="Profile Photo"
                    class="rounded-circle img-thumbnail" style="width: 200px; height: 200px; object-fit: cover;">
                {{-- <label for="avatar" class="btn btn-outline-primary position-absolute bottom-0 start-50 translate-middle-x">
                    <i class="fas fa-camera"></i> Ubah Foto
                </label> --}}
            </div>
        </div>

        <!-- Form untuk memperbarui foto profil -->
        <div class="card mb-4 shadow-sm">
            <div class="card-header bg-primary text-white text-center">
                <h5>Ubah Foto Profil</h5>
            </div>
            <div class="card-body">
                <form action="{{ url('profile/update_profile') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group mb-3">
                        <label for="avatar">Pilih Foto</label>
                        <input type="file" name="avatar" id="avatar" class="form-control">
                        @error('avatar')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-success btn-block">Simpan Perubahan Foto</button>
                </form>
            </div>
        </div>

        <!-- Kotak informasi pengguna -->
        <div class="card shadow-sm mb-4">
            <div class="card-header text-center bg-primary text-white">
                <h5>Informasi Pengguna</h5>
            </div>
            <div class="card-body">
                <div class="form-group mb-2">
                    <label><i class="fas fa-user"></i> Username</label>
                    <p class="form-control-plaintext">{{ $user->username }}</p>
                </div>
                <div class="form-group mb-2">
                    <label><i class="fas fa-id-card"></i> Nama</label>
                    <p class="form-control-plaintext">{{ $user->nama }}</p>
                </div>
                <div class="form-group mb-2">
                    <label><i class="fas fa-users-cog"></i> Level</label>
                    <p class="form-control-plaintext">{{ $user->level->level_nama }}</p>
                </div>
            </div>
        </div>

        <!-- Form untuk memperbarui profil -->
        <div class="card mb-4 shadow-sm">
            <div class="card-header bg-primary text-white text-center">
                <h5>Perbarui Informasi Profil</h5>
            </div>
            <div class="card-body">
                <form action="{{ url('profile/update_info') }}" method="POST">
                    @csrf
                    <div class="form-group mb-3">
                        <label for="level">Level</label>
                        <select name="level_id" class="form-control" disabled>
                            <option value="{{ $user->level_id }}">{{ $level_nama }}</option>
                        </select>
                        <small class="form-text text-muted">Level saat ini: {{ $level_nama }}</small>
                    </div>

                    <div class="form-group mb-3">
                        <label for="username">Username</label> <i>*isi apabila ingin merubah username*</i>
                        <input type="text" name="username" id="username" class="form-control" value="{{ $user->username }}">
                        @error('username')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>

                    <div class="form-group mb-3">
                        <label for="nama">Nama</label><i>*isi apabila ingin merubah nama*</i>
                        <input type="text" name="nama" id="nama" class="form-control" value="{{ $user->nama }}">
                        @error('nama')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>

                    <div class="form-group mb-3">
                        <label for="password">Password</label><i>*isi apabila ingin merubah password*</i>
                        <input type="password" name="password" id="password" class="form-control">
                        @error('password')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>

                    <div class="form-group mb-3">
                        <label for="password_confirmation">Konfirmasi Password</label>
                        <input type="password" name="password_confirmation" id="password_confirmation" class="form-control">
                        @error('password_confirmation')
                            <small class="text-danger">{{ $message }}</small>
                        @enderror
                    </div>

                    <button type="submit" class="btn btn-success btn-block">Simpan Perubahan Biodata</button>
                </form>
            </div>
        </div>
    </div>
@endsection
