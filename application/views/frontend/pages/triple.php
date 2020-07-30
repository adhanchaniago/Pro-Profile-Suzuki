<ol class="breadcrumb mt-20 align-center">

     <li>
          <h2>Promo dan Berita</h2>
     </li>
</ol>
<section id="berita">
     <div class="row mx-0">
          <!-- Perulangan -->
          <?php
          foreach ($berita as $row) :
          ?>
               <div class="col-4 hero px-0">
                    <img src="<?= base_url('upload/berita/' . $row->berita_gambar); ?>" alt="">
                    <div class="caption" style="top:30px;">
                         <h3 class="mb-10"><?= $row->berita_judul ?></h3>
                         <p><?= tgl_indo($row->berita_post) ?></p>
                    </div>
                    <div class="caption" style="bottom:50px;">
                         <p><a href="<?php echo site_url('detail/' . $row->berita_id) ?>" class="btn-outline-white">Detail</a></p>
                    </div>
               </div>
          <?php endforeach ?>
          <!-- Akhir -->
     </div>
</section>