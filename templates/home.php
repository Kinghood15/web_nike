<div class="container">
    <?php
    require 'includes/slideShow.php';
    ?>
    <div class="w-full grid grid-cols-1 gap-y-10 gap-x-6 sm:grid-cols-3 lg:grid-cols-5 xl:gap-x-15 my-32">
        <?php
        // In chuyên mục của sản phẩm
        $sql_get_data_product = "SELECT * FROM product";
        if ($db->num_rows($sql_get_data_product)) {
            // $data_menu = $db->fetch_assoc($sql_get_data_menu, 1);
            foreach ($db->fetch_assoc($sql_get_data_product, 0) as $data_product) {
                echo '
                    <a href="' . $_DOMAIN . $data_product['name_slug'] . '-' . $data_product['id'] . '.html">
                        <div class="w-56 h-full p-3 gap-6 rounded-xl bg-slate-200 shadow-xl">
                            <div class="w-full h-56 flex items-center border border-slate-500 rounded-xl">
                                <img id="imageSlideShow" class="mx-auto w-[90%] h-[90%] delay-200 transform-gpu transition ease-in-out transition-y-0 hover:transition-y-100" alt="' . $data_product['name_product'] . '" src="' . $data_product['url'] . '" />
                            </div>
                            <div class="w-full h-full py-2 my-1">
                                <p class="text-lg font-bold my-1">' . $data_product['name_product'] . '</p>
                                <div class="list-star flex flex-row space-x-1 my-1 justify-between w-fit">
                                    <i class="text-yellow-300 fa-solid fa-star"></i>
                                    <i class="text-yellow-300 fa-solid fa-star"></i>
                                    <i class="text-yellow-300 fa-solid fa-star"></i>
                                    <i class="text-yellow-300 fa-solid fa-star"></i>
                                    <i class="text-yellow-300 fa-regular fa-star"></i>
                                </div>
                                <div class="flex justify-between my-2">
                                    <p class="text-base text-stale-400 font-semibold">' . $data_product['price'] - ($data_product['price'] * $data_product['discount'] / 100) . '$</p> 
                                    <p class="text-base text-stale-400 font-semibold line-through">' . $data_product['price'] . '$</p> 
                                </div>
                            </div>
                        </div>
                    </a>
                ';
            }
        }
        ?>

    </div>
</div>