<?php include 'koneksi.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Admin</title>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <!-- CSS Styling -->
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            display: flex;
            min-height: 100vh;
            background-color: rgb(5, 31, 60);
            color: #fff;
        }

        /* Sidebar */
        .sidebar {
            width: 220px;
            background: rgb(15, 47, 103);
            display: flex;
            flex-direction: column;
            padding: 20px;
            transition: all 0.3s ease;
        }
        .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #E8EEF1;
        }
        .sidebar a {
            text-decoration: none;
            color: #E8EEF1;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .sidebar a:hover {
            background: #1F80C0;
        }
        .sidebar.collapsed {
            width: 60px;
        }
        .sidebar.collapsed h2 {
            display: none;
        }
        .sidebar.collapsed a {
            text-align: center;
        }

        /* Content */
        .main-content {
            flex: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
        }
        .header {
            background: rgb(18, 60, 113);
            padding: 10px 20px;
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }
        .header h1 {
            color: #E8EEF1;
        }
        .header .profile {
            display: flex;
            align-items: center;
        }
        .header .profile img {
            width: 35px;
            height: 35px;
            border-radius: 50%;
            margin-right: 10px;
            border: 2px solid #1F80C0;
        }
        .header .profile button {
            background: #F74C57;
            color: white;
            border: none;
            padding: 8px 12px;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s ease;
        }
        .header .profile button:hover {
            background: #D74048;
        }

        .card-container {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }
        .card {
            background: rgb(15, 47, 103);
            flex: 1;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }
        .card h3 {
            color: #1F80C0;
            margin-bottom: 10px;
        }
        .card p {
            font-size: 28px;
            font-weight: bold;
            color: #E8EEF1;
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 10px;
            margin-top: auto;
            background: #28374B;
            color: #C0C7D0;
        }

        /* Chart */
        canvas {
            background: #fff;
            border-radius: 10px;
            padding: 10px;
        }

        /* Hamburger Menu */
        .menu-toggle {
            display: none;
            background: #F74C57;
            border: none;
            color: white;
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
        }
        @media (max-width: 768px) {
            .menu-toggle {
                display: block;
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <h2>Admin Menu</h2>
        <a href="daftar_bencana.php">Daftar Bencana</a>
        <a href="daftar_korban.php">Daftar Korban</a>
        <a href="daftar_posko.php">Daftar Posko</a>
        <a href="daftar_keluarga.php">Daftar Keluarga</a>
        <a href="daftar_petugas.php">Daftar Petugas</a>
        <a href="logout.php" style="color: #F74C57;">Logout</a>
    </div>

    <!-- Menu Toggle Button -->
    <button class="menu-toggle" onclick="toggleSidebar()">☰</button>

    <!-- Main Content -->
    <div class="main-content">
        <div class="header">
            <h1>Dashboard Admin</h1>
            <div class="profile">
                <img src="https://via.placeholder.com/35" alt="Profile Picture">
                <button onclick="logout()">Sign Out</button>
            </div>
        </div>

        <!-- Card Section -->
        <div class="card-container">
            <div class="card">
                <h3>Total Bencana</h3>
                <?php
                $result = $conn->query("SELECT COUNT(*) AS total FROM bencana");
                $row = $result->fetch_assoc();
                echo "<p>" . $row['total'] . "</p>";
                ?>
            </div>
            <div class="card">
                <h3>Total Korban</h3>
                <?php
                $result = $conn->query("SELECT COUNT(*) AS total FROM korban");
                $row = $result->fetch_assoc();
                echo "<p>" . $row['total'] . "</p>";
                ?>
            </div>
        </div>

        <!-- Chart Section -->
        <h2 style="margin-bottom: 10px;">Statistik Bencana</h2>
        <canvas id="chartBencana" width="400" height="200"></canvas>

        <h2 style="margin-bottom: 10px;">Daftar Situasi Korban</h2>
        <canvas id="chartKorban" width="400" height="200"></canvas>

        <!-- Footer -->
        <div class="footer">
            <p>© 2024 Sistem Informasi Bencana. All Rights Reserved.</p>
        </div>
    </div>

    <!-- Chart.js Script -->
    <script>
        function logout() {
            alert("Anda telah keluar.");
            window.location.href = "login.php"; // Redirect ke halaman login
        }

        function toggleSidebar() {
            document.getElementById("sidebar").classList.toggle("collapsed");
        }

        const ctxBencana = document.getElementById('chartBencana').getContext('2d');
        const chartBencana = new Chart(ctxBencana, {
            type: 'bar',
            data: {
                labels: ['Banjir', 'Gempa', 'Kebakaran', 'Tanah Longsor'],
                datasets: [{
                    label: 'Jumlah Kejadian',
                    data: [12, 8, 5, 9],
                    backgroundColor: ['#1F80C0', '#F74C57', '#F2C94C', '#6FCF97'],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        display: true,
                        labels: {
                            color: '#333'
                        }
                    }
                },
                scales: {
                    x: {
                        ticks: { color: '#000' }
                    },
                    y: {
                        ticks: { color: '#000' }
                    }
                }
            }
        });

        const ctxKorban = document.getElementById('chartKorban').getContext('2d');
        const chartKorban = new Chart(ctxKorban, {
            type: 'pie',
            data: {
                labels: ['Luka Ringan', 'Luka Berat', 'Meninggal'],
                datasets: [{
                    label: 'Situasi Korban',
                    data: [20, 10, 5],
                    backgroundColor: ['#6FCF97', '#F74C57', '#F2C94C'],
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        display: true,
                        labels: {
                            color: '#333'
                        }
                    }
                }
            }
        });
    </script>
</body>
</html>
