<div class="sidebar">
    <!-- SidebarSearch Form -->
    <div class="form-inline mt-2">
        <div class="input-group" data-widget="sidebar-search">
            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
                <button class="btn btn-sidebar">
                    <i class="fas fa-search fa-fw"></i>
                </button>
            </div>
        </div>
    </div>
    <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Menu Dashboard -->
            <li class="nav-item">
                <a href="{{ url('/dashboard') }}" class="brand-link">
                    <img src="{{ asset('logoToko.svg') }}" alt="Logo Toko" class="brand-image img-circle"
                        style="opacity: .9">
                    <span class="brand-text font-weight-bold">Bintang MDHP</span>
                </a>
            </li>
            <li class="nav-header">Profile Pengguna</li>
            <li class="nav-item">
                <a href="{{ url('profile/edit') }}" class="nav-link {{ $activeMenu == 'profile' ? 'active' : '' }}">
                    <i class="nav-icon fas fa-user"></i>
                    <p>Edit Profile</p>
                </a>
            </li>

            <!-- Profile Modal -->
            <div class="modal fade" id="profileModal" tabindex="-1" role="dialog" aria-labelledby="profileModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="profileModalLabel">User Profile</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body text-center"> <!-- Centered text -->
                            <!-- Profile Information -->
                            <img src="{{ auth()->user()->avatar ? asset('storage/' . auth()->user()->avatar) : asset('foto.png') }}"
                                alt="User Avatar" class="img-circle mb-3" width="100">
                            <p><strong>Username:</strong> {{ auth()->user()->username }}</p>
                            <p><strong>Nama:</strong> {{ auth()->user()->nama }}</p>
                            <p><strong>Level:</strong>
                                {{ auth()->user()->level ? auth()->user()->level->level_nama : 'Tidak ada level' }}</p>
                        </div>
                        <div class="modal-footer justify-content-center"> <!-- Centered footer -->
                            <a href="{{ url('profile/edit') }}" class="btn btn-primary">Edit Profile</a>
                        </div>
                    </div>
                </div>
            </div>

            <li class="nav-item">
                <a href="#" class="nav-link" data-toggle="modal" data-target="#profileModal">
                    <i class="nav-icon fas fa-info-circle"></i>
                    <p>Detail Profile</p>
                </a>
            </li>

            <!-- Data Pengguna -->
            <li class="nav-header">Data Pengguna</li>
            <li class="nav-item">
                <a href="{{ url('/level') }}" class="nav-link {{ $activeMenu == 'level' ? 'active' : '' }}">
                    <i class="nav-icon fas fa-layer-group"></i>
                    <p>Level User</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ url('/user') }}" class="nav-link {{ $activeMenu == 'user' ? 'active' : '' }}">
                    <i class="nav-icon far fa-user"></i>
                    <p>Data User</p>
                </a>
            </li>

            <!-- Data Barang -->
            <li class="nav-header">Data Barang</li>
            <li class="nav-item">
                <a href="{{ url('/kategori') }}" class="nav-link {{ $activeMenu == 'kategori' ? 'active' : '' }}">
                    <i class="nav-icon far fa-bookmark"></i>
                    <p>Kategori Barang</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ url('/barang') }}" class="nav-link {{ $activeMenu == 'barang' ? 'active' : '' }}">
                    <i class="nav-icon far fa-list-alt"></i>
                    <p>Data Barang</p>
                </a>
            </li>

            <!-- Data Supplier -->
            <li class="nav-header">Data Supplier</li>
            <li class="nav-item">
                <a href="{{ url('/supplier') }}" class="nav-link {{ $activeMenu == 'supplier' ? 'active' : '' }}">
                    <i class="fas fa-fighter-jet nav-icon"></i>
                    <p>Data Supplier</p>
                </a>
            </li>

            <!-- Data Transaksi -->
            <li class="nav-header">Data Transaksi</li>
            <li class="nav-item">
                <a href="{{ url('/stok') }}" class="nav-link {{ $activeMenu == 'stok' ? 'active' : '' }}">
                    <i class="nav-icon fas fa-cubes"></i>
                    <p>Stok Barang</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{ url('/penjualan') }}" class="nav-link {{ $activeMenu == 'penjualan' ? 'active' : '' }}">
                    <i class="nav-icon fas fa-cash-register"></i>
                    <p>Transaksi Penjualan</p>
                </a>
            </li>

            <!-- Menu Logout -->
            <li class="nav-header">Keluar</li>
            <li class="nav-item">
                <a href="#" class="nav-link logout-link" id="logout-link">
                    <i class="nav-icon fas fa-sign-out-alt"></i>
                    <p>Logout</p>
                </a>
            </li>

            <style>
                .nav-sidebar .nav-link {
                    transition: background-color 0.4s ease, transform 0.4s ease, box-shadow 0.4s ease;
                    border-radius: 5px;
                }

                .nav-sidebar .nav-link:hover {
                    background: linear-gradient(45deg, #0658fae9, #00f2fe);
                    color: white;
                    transform: scale(1.1);
                    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
                }

                .nav-sidebar .nav-link i {
                    transition: transform 0.4s cubic-bezier(0.68, -0.55, 0.27, 1.55);
                }

                .nav-sidebar .nav-link:hover i {
                    transform: scale(1.3) rotate(20deg);
                }

                .logout-link:hover {
                    background: linear-gradient(45deg, #ff416c, #ff4b2b);
                    color: white;
                    transform: scale(1.1);
                    box-shadow: 0 5px 10px rgba(115, 210, 0, 0.3);
                }
            </style>


        </ul>
    </nav>
</div>

<script>
    document.getElementById('logout-link').addEventListener('click', function(e) {
        e.preventDefault(); // Prevent default action of the link

        // Trigger SweetAlert for confirmation
        Swal.fire({
            title: 'Apakah Anda yakin ingin keluar?',
            text: "Anda tidak dapat membatalkan tindakan ini!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, keluar!',
            cancelButtonText: 'Batal'
        }).then((result) => {
            if (result.isConfirmed) {
                // AJAX request for logout
                $.ajax({
                    url: '{{ url('logout') }}', // Logout URL
                    type: 'GET', // Request method
                    data: {
                        _token: '{{ csrf_token() }}'
                    },
                    success: function(response) {
                        Swal.fire(
                            'Berhasil!',
                            'Anda telah berhasil keluar.',
                            'success'
                        ).then(() => {
                            window.location.href =
                                "{{ url('/login') }}";
                        });
                    },
                    error: function(xhr) {
                        Swal.fire(
                            'Gagal!',
                            'Terjadi kesalahan saat logout. Coba lagi nanti.',
                            'error'
                        );
                    }
                });
            }
        });
    });
</script>
