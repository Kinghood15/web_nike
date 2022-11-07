<?php
 
// Trang nội dung sản phẩm
if (isset($_GET['sp']) && isset($_GET['id'])) {
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