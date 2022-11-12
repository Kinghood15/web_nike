<div id="boxSlideShow" class=" w-[1440px] relative rounded-[200px] bg-sky-600 h-96 shadow-lg" >
    <!-- Header slide show -->
    <div class="flex items-center justify-between space-x-3 absolute -top-3 left-56">
        <!-- <button class="w-6 h-6 rounded-full bg-red-600 border border-white "></button> -->
        <button onClick="handleClickBtnBlack()" class="w-6 h-6 rounded-full bg-black border border-white "></button>
        <button onClick="handleClickBtnSky()" class="w-6 h-6 rounded-full bg-sky-600 border border-white "></button>
    </div>
    <div class="mx-auto py-5 w-[80%] h-full max-h-full flex justify-between">
        <div class="relative max-w-1/3 w-1/3">
            <h1 class="absolute top-1/3 left-0 title w-[500px] text-white text-7xl font-bold">Nike Air Force</h1>
        </div>
        <div class="relative max-w-2/3 w-2/3 h-full">
            <!-- Image product -->
            <div class="absolute top-0 right-0 h-full w-full">
                <img id="imageSlideShow" class="absolute -top-56 right-0 w-[700px] -rotate-45 delay-200 transform-gpu transition ease-in-out hover:rotate-0" alt="<?php echo " "?>" src="<?php echo $_DOMAIN; ?>images/air-force-1-white.png" />
            </div>
        </div>
        <div class="w-32 h-32 bg-red-500 rounded-full absolute bottom-0 right-0 flex flex-col items-center align-center justify-center">
            <div class="rotate-45 flex flex-col items-center justify-between align-center">
            <i class="text-yellow-400  fa-solid text-2xl fa-star"></i>
            <p class="text-xl text-white">Best product</p>
            </div>
        </div>
    </div>
</div>