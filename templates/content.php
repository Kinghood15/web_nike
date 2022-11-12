<div class="w-[1440px] mx-auto mt-[200px]">
<?php
    // Trang nội dung sản phẩm
    if (isset($_GET['id'])) {
        require 'templates/products.php';
    // Trang danh mục sản phẩm
    } else if (isset($_GET['sc'])) {
        require 'templates/categories.php';
    // Trang tìm kiếm 
    } else if (isset($_GET['s'])) {
        require 'templates/search.php';
    // Trang chủ
    } else {
        require 'templates/home.php';
    }
    
?>
</div>