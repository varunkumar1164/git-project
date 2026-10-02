<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StreamFlix</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #141414;
            color: white;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* NAVBAR */
        .navbar {
            height: 70px;
            background: #000;
            display: flex;
            align-items: center;
            padding: 0 5%;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 100;
        }

        .logo {
            color: #e50914;
            font-size: 30px;
            font-weight: bold;
            margin-right: 40px;
        }

        .nav-links {
            display: flex;
            gap: 25px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 15px;
        }

        .nav-links a:hover {
            color: #aaa;
        }

        .profile {
            margin-left: auto;
            font-size: 14px;
        }

        /* HERO */
        .hero {
            height: 650px;
            background:
                linear-gradient(to right, #000 10%, transparent 70%),
                linear-gradient(to top, #141414 2%, transparent 30%),
                url("https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=1600&q=80");

            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            padding: 100px 5% 0;
        }

        .hero-content {
            max-width: 550px;
        }

        .hero h1 {
            font-size: 55px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 25px;
        }

        .buttons {
            display: flex;
            gap: 12px;
        }

        button {
            border: none;
            padding: 13px 25px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .play {
            background: white;
            color: black;
        }

        .info {
            background: rgba(100,100,100,.8);
            color: white;
        }

        button:hover {
            opacity: .8;
        }

        /* MOVIE ROWS */
        .section {
            padding: 20px 5%;
        }

        .section h2 {
            margin-bottom: 15px;
        }

        .movie-row {
            display: flex;
            gap: 15px;
            overflow-x: auto;
            padding-bottom: 15px;
        }

        .movie-row::-webkit-scrollbar {
            height: 6px;
        }

        .movie-row::-webkit-scrollbar-thumb {
            background: #555;
        }

        .movie {
            min-width: 200px;
            height: 290px;
            border-radius: 5px;
            overflow: hidden;
            transition: transform .3s;
            cursor: pointer;
        }

        .movie:hover {
            transform: scale(1.08);
        }

        .movie img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* FOOTER */
        footer {
            padding: 50px 5%;
            color: #888;
            text-align: center;
        }

        @media(max-width: 700px) {

            .nav-links {
                display: none;
            }

            .hero {
                height: 550px;
            }

            .hero h1 {
                font-size: 40px;
            }

            .hero p {
                font-size: 15px;
            }

            .movie {
                min-width: 150px;
                height: 220px;
            }
        }
    </style>
</head>

<body>

    <!-- NAVIGATION -->
    <nav class="navbar">

        <div class="logo">
            STREAMFLIX
        </div>

        <div class="nav-links">
            <a href="#">Home</a>
            <a href="#">TV Shows</a>
            <a href="#">Movies</a>
            <a href="#">New & Popular</a>
            <a href="#">My List</a>
        </div>

        <div class="profile">
            👤 Profile
        </div>

    </nav>


    <!-- HERO SECTION -->
    <section class="hero">

        <div class="hero-content">

            <h1>The Last Journey</h1>

            <p>
                A group of survivors begins an incredible journey
                through a world filled with mystery, danger and adventure.
            </p>

            <div class="buttons">

                <button class="play" onclick="playMovie()">
                    ▶ Play
                </button>

                <button class="info" onclick="showInfo()">
                    ⓘ More Info
                </button>

            </div>

        </div>

    </section>


    <!-- TRENDING -->
    <section class="section">

        <h2>Trending Now</h2>

        <div class="movie-row">

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=500&q=80">
            </div>

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=500&q=80">
            </div>

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&w=500&q=80">
            </div>

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1574267432644-f610f45a0c66?auto=format&fit=crop&w=500&q=80">
            </div>

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1594909122845-11baa439b7bf?auto=format&fit=crop&w=500&q=80">
            </div>

        </div>

    </section>


    <!-- POPULAR -->
    <section class="section">

        <h2>Popular Movies</h2>

        <div class="movie-row">

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=500&q=80">
            </div>

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1518709268805-4e9042af9f23?auto=format&fit=crop&w=500&q=80">
            </div>

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1535016120720-40c646be5580?auto=format&fit=crop&w=500&q=80">
            </div>

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=500&q=80">
            </div>

            <div class="movie">
                <img src="https://images.unsplash.com/photo-1542206395-9feb3edaa68d?auto=format&fit=crop&w=500&q=80">
            </div>

        </div>

    </section>


    <footer>
        © 2026 StreamFlix | DevOps Project
    </footer>


    <script>

        function playMovie() {
            alert("Starting movie...");
        }

        function showInfo() {
            alert("The Last Journey - An adventure movie.");
        }

    </script>

</body>
</html>
