<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <title>Newspage Administration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <!-- Liên kết Taildwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Liên kết thư viện jQuery -->
    <script src="<?php echo $_DOMAIN; ?>js/jquery.min.js"></script>
    <!--Liên kết thư viện fontawesome -->
    <script src="<?php echo $_DOMAIN; ?>fontawesome-free-6.2.0-web/js/all.min.js"></script>
</head>

<body>

    <div class="header border-bottom border-stale-700 shadow-sm max-w-screen">
        <div class="w-[1440px] flex justify-between items-center space-x-2 relative mx-auto h-24 mt-5 mx-auto max-w-[1440px] px-2 sm:px-6 lg:px-8">
            <div class="header-left flex relative justify-between space-x-2">
                <div class="logo">
                    <img src="https://www.freeiconspng.com/uploads/nike-logo-shape-symbol-png-9.png" width="100" alt="nike logo shape symbol png" />
                </div>
                <div class="nav-bar flex justify-between space-x-5">

                    <ul class="flex justify-between space-x-6">
                        <?php
                        // In chuyên mục của bài viết
                        $sql_get_data_menu = "SELECT * FROM menu";
                        if ($db->num_rows($sql_get_data_menu)) {
                            // $data_menu = $db->fetch_assoc($sql_get_data_menu, 1);
                            foreach ($db->fetch_assoc($sql_get_data_menu, 0) as $data_menu) {
                                echo '<li class="p-3 border-2 border-white rounded hover:border-b-black "><a class="btn btn-primary btn-sm" href="' . $_DOMAIN . 'category/' . strtolower($data_menu['name_menu']) . '">' . $data_menu['name_menu'] . '</a></li> ';
                            }
                        }
                        ?>
                    </ul>
                </div>
            </div>
            <div class="header-right flex">
                <div class="search-box mr-8">
                    <button type="button" class="hidden sm:flex items-center w-72 text-left space-x-3 px-4 h-12 bg-white ring-1 ring-slate-900/10 hover:ring-slate-300 border focus:outline-none focus:ring-2 focus:ring-sky-500 shadow-sm rounded-2xl text-slate-400 dark:bg-white dark:ring-0 dark:text-slate-300 dark:highlight-white/5"><svg width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="flex-none text-slate-300 dark:text-slate-400" aria-hidden="true">
                            <path d="m19 19-3.5-3.5"></path>
                            <circle cx="11" cy="11" r="6"></circle>
                        </svg><span class="flex-auto">Search...</span>
                    </button>
                </div>
                <div class="absolute inset-y-0 right-0 flex justify-between space-x-6 items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                    <button type="button" class="h-8 w-8 flex justify-center border border-red-400 align-center items-center flex-cols rounded-full bg-red-400 p-1 text-white hover:border-gray-200 hover:bg-white hover:text-black focus:outline-none focus:ring-2 focus:ring-red-400 focus:ring-offset-2 focus:ring-offset-gray-800">
                        <span class="sr-only">View cart</span>
                        <!-- Heroicon name: outline/bell -->
                        <i class="h-4 w-4 fa-solid fa-cart-arrow-down"></i>
                    </button>
                    <button type="button" class="border rounded-full bg-white p-1 text-gray-400 hover:bg-black hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800">
                        <span class="sr-only">View notifications</span>
                        <!-- Heroicon name: outline/bell -->
                        <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M14.857 17.082a23.848 23.848 0 005.454-1.31A8.967 8.967 0 0118 9.75v-.7V9A6 6 0 006 9v.75a8.967 8.967 0 01-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 01-5.714 0m5.714 0a3 3 0 11-5.714 0" />
                        </svg>
                    </button>
                    <!-- Profile dropdown -->
                    <?php
                    // Nếu chưa đăng nhập
                    if (!$user) {
                        echo
                        '
                        <div class="relative ml-3">
                            <div>
                                <button type="button" class="h-8 w-8 flex items-center justify-center align-center rounded-full bg-gray-800 text-sm focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800" id="user-menu-button" aria-expanded="false" aria-haspopup="true">
                                <i class="h-5 w-5 text-white fa-solid fa-user"></i>
                                </button>
                            </div>
                        </div>
                    ';
                    }
                    // Nếu đăng nhập
                    else {
                        echo
                        '
                        <div class="relative ml-3">
                            <div>
                                <button type="button" class="flex rounded-full bg-gray-800 text-sm focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800" id="user-menu-button" aria-expanded="false" aria-haspopup="true">
                                    <span class="sr-only">Open user menu</span>
                                    <img class="h-8 w-8 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
                                </button>
                            </div>
                            <div class="absolute right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none" role="menu" aria-orientation="vertical" aria-labelledby="user-menu-button" tabindex="-1">
                                <!-- Active: "bg-gray-100", Not Active: "" -->
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-0">Your Profile</a>
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-1">Settings</a>
                                <a href="#" class="block px-4 py-2 text-sm text-gray-700" role="menuitem" tabindex="-1" id="user-menu-item-2">Sign out</a>
                            </div>
                        </div>
                        ';
                    }

                    ?>
                </div>
            </div>
        </div>