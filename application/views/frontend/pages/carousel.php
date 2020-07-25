<div class="main-slider owl-carousel">
     <?php foreach ($slider as $row) : ?>
          <a href="<?php site_url('/') ?>" class="item">
               <img src="<?= base_url('upload/slider/') . $row->slider_gambar ?>" alt="" class="w-100">
          </a>
     <?php endforeach ?>
</div>