<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toko Bintang MDHP</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body,
        html {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            color: #ffffff;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            background: url('landing.jpeg') no-repeat center center fixed;
            background-size: cover;
        }

        header {
            text-align: center;
            padding: 20px;
            background-color: rgba(41, 75, 139, 0.409);
        }

        header h1 {
            font-size: 48px;
            margin: 0;
            color: #fa872f;
            margin-bottom: 1px;
        }

        .content {
            display: flex;
            justify-content: space-between;
            padding: 100px 50px;
            flex-grow: 1;
            background-color: rgba(41, 75, 139, 0.409);
            align-items: center;
        }

        .info {
            width: 60%;
            max-width: 800px;
            margin: 0 auto;
            text-align: justify;
            background-color: rgba(40, 119, 159, 0.321);
            padding: 15px;
            border-radius: 25px;
        }

        .info h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #ffffff;
        }

        .info p {
            font-size: 18px;
            line-height: 1.8;
            margin-bottom: 30px;
        }

        .login {
            width: 35%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .btn-login {
            background-color: #F56C00;
            color: white;
            padding: 15px 30px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .btn-login:hover {
            background-color: #f78a41;
        }

        .footer {
            background-color: rgba(41, 75, 139, 0.409);
            color: #ffffff;
            text-align: center;
            padding: 10px 10px;
        }

        .footer p {
            margin: 0;
        }
    </style>
</head>

<body>
    <header>
        <h1>Toko Bintang MDHP</h1>
        <i>Menyediakan Kebutuhan Rumah Tangga</i>
    </header>

    <div class="content">
        <div class="info">
            <h2>Selamat datang di Toko Bintang MDHP</h2>
            <p>Toko Bintang MDHP telah berdiri sejak 2024, yang menyediakan berbagai jenis kebutuhan rumah tangga. Kami
                bertanggung jawab untuk memberikan layanan terbaik dengan produk yang berkualitas.</p>
            <p>Alamat kami: <strong>JL. Bantur, Kabupaten Malang, Jawa Timur</strong></p>

        </div>
        <div class="login">
            <a href="{{ route('login') }}" class="btn-login"><b>Lanjut ke Halaman Login</b></a>
        </div>
    </div>

    <footer class="footer">
        <p>&copy; 2024 Toko Bintang MDHP. All rights reserved.</p>
    </footer>
</body>

</html>
