<section id="product-list" class="product-list">
     <h3 class="product-category">Produk</h3>
     <div class="row">
          <?php foreach ($produk as $row) : ?>
               <div class="col-3">
                    <a href="<?= base_url('upload/brosur/' . $row->produk_brosur); ?>">
                         <div class="name"><?= $row->produk_nama ?></div>
                         <div class="desc">
                              <img src="<?= base_url('upload/produk/' . $row->produk_gambar); ?>" alt="Suzuki XL7">
                              <div>Mulai Dari</div>
                              <div class="price">Rp.<strong><?= $row->produk_harga ?></strong></div>
                              <span class="link">Unduh Brosur ></span>
                         </div>
                    </a>
               </div>
          <?php endforeach ?>
     </div>
</section>