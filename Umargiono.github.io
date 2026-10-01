<!DOCTYPE html>
<html lang="id" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ruang Belajar IPS - Interaktif & Menyenangkan</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['"Plus Jakarta Sans"', 'sans-serif'],
                    },
                    colors: {
                        brand: {
                            50: '#eef2ff',
                            100: '#e0e7ff',
                            500: '#6366f1',
                            600: '#4f46e5',
                            700: '#4338ca',
                        }
                    }
                }
            }
        }
    </script>
    <style>
        /* Custom scrollbar and aesthetics */
        ::-webkit-scrollbar {
            width: 8px;
        }
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }
        ::-webkit-scrollbar-thumb {
            background: #cbd5e1;
            border-radius: 4px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: #94a3b8;
        }
        .hero-pattern {
            background-color: #4f46e5;
            background-image: radial-gradient(rgba(255, 255, 255, 0.1) 1px, transparent 1px);
            background-size: 24px 24px;
        }
    </style>
</head>
<body class="bg-slate-50 text-slate-800 font-sans antialiased min-h-screen flex flex-col">

    <header class="sticky top-0 z-50 bg-white/90 backdrop-blur-md border-b border-slate-200 shadow-sm">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-20">
                <!-- Logo -->
                <div class="flex items-center space-x-3 cursor-pointer" onclick="switchTab('home')">
                    <div class="w-12 h-12 bg-indigo-600 rounded-xl flex items-center justify-center text-white shadow-lg shadow-indigo-200">
                        <i class="fa-solid fa-earth-asia text-2xl"></i>
                    </div>
                    <div>
                        <span class="text-xl font-extrabold text-slate-900 tracking-tight">IPS<span class="text-indigo-600">Verse</span></span>
                        <p class="text-xs font-medium text-slate-500">Portal Belajar Sosial Modern</p>
                    </div>
                </div>

                <!-- Desktop Menu -->
                <nav class="hidden md:flex items-center space-x-1 lg:space-x-2">
                    <button onclick="switchTab('home')" id="nav-home" class="nav-btn px-4 py-2 rounded-xl text-sm font-semibold transition-all duration-200 bg-indigo-50 text-indigo-600">
                        <i class="fa-solid fa-house mr-2"></i>Home
                    </button>
                    <button onclick="switchTab('materi')" id="nav-materi" class="nav-btn px-4 py-2 rounded-xl text-sm font-semibold text-slate-600 hover:bg-slate-100 transition-all duration-200">
                        <i class="fa-solid fa-book-open mr-2"></i>Materi
                    </button>
                    <button onclick="switchTab('video')" id="nav-video" class="nav-btn px-4 py-2 rounded-xl text-sm font-semibold text-slate-600 hover:bg-slate-100 transition-all duration-200">
                        <i class="fa-solid fa-play-circle mr-2"></i>Video
                    </button>
                    <button onclick="switchTab('tugas')" id="nav-tugas" class="nav-btn px-4 py-2 rounded-xl text-sm font-semibold text-slate-600 hover:bg-slate-100 transition-all duration-200">
                        <i class="fa-solid fa-clipboard-question mr-2"></i>Tugas
                    </button>
                    <button onclick="switchTab('serba')" id="nav-serba" class="nav-btn px-4 py-2 rounded-xl text-sm font-semibold text-slate-600 hover:bg-slate-100 transition-all duration-200">
                        <i class="fa-solid fa-lightbulb mr-2"></i>Serba-serbi
                    </button>
                </nav>

                <!-- Mobile Menu Button -->
                <div class="md:hidden flex items-center">
                    <button onclick="toggleMobileMenu()" class="p-2 rounded-xl text-slate-600 hover:bg-slate-100 focus:outline-none">
                        <i class="fa-solid fa-bars text-xl" id="menu-icon"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Mobile Dropdown Menu -->
        <div id="mobile-menu" class="hidden md:hidden bg-white border-b border-slate-200 px-4 pt-2 pb-4 space-y-1 shadow-lg">
            <button onclick="switchTab('home'); toggleMobileMenu();" class="mobile-nav-btn w-full text-left px-4 py-3 rounded-xl text-sm font-semibold bg-indigo-50 text-indigo-600">
                <i class="fa-solid fa-house mr-3"></i>Home
            </button>
            <button onclick="switchTab('materi'); toggleMobileMenu();" class="mobile-nav-btn w-full text-left px-4 py-3 rounded-xl text-sm font-semibold text-slate-600 hover:bg-slate-50">
                <i class="fa-solid fa-book-open mr-3"></i>Materi
            </button>
            <button onclick="switchTab('video'); toggleMobileMenu();" class="mobile-nav-btn w-full text-left px-4 py-3 rounded-xl text-sm font-semibold text-slate-600 hover:bg-slate-50">
                <i class="fa-solid fa-play-circle mr-3"></i>Video
            </button>
            <button onclick="switchTab('tugas'); toggleMobileMenu();" class="mobile-nav-btn w-full text-left px-4 py-3 rounded-xl text-sm font-semibold text-slate-600 hover:bg-slate-50">
                <i class="fa-solid fa-clipboard-question mr-3"></i>Tugas
            </button>
            <button onclick="switchTab('serba'); toggleMobileMenu();" class="mobile-nav-btn w-full text-left px-4 py-3 rounded-xl text-sm font-semibold text-slate-600 h
