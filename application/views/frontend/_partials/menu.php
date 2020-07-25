<header class="">
     <a href="<?= site_url() ?>" class="logo">
          <img alt="" src="<?= base_url('assets/frontend/img/logo-white.png'); ?>" class="logo-white">
          <img alt="" src="<?= base_url('assets/frontend/img/logo-color.png'); ?>" class="logo-color">
     </a>
     <a href="<?= site_url() ?>" class="logo">
          <img alt="" src="<?= base_url('assets/frontend/img/logo-50-th.png'); ?>" style="width: 70px;">
     </a>
     <div class="top-nav">
          <a href="<?= site_url() ?>">Home</a>
          <a href="<?= site_url('/') ?>#product-list">Produk Suzuki</a>
          <a href="<?= site_url('listHarga') ?>">Harga</a>
          <a href="<?= site_url('/') ?>#berita">Promo dan Berita</a>
          <a href="https://wa.me/<?= $kontak->contact_nohp ?>">Hubungi Kami</a>
     </div>
     <a href="javascript:void(0)" class="menu-toggle" onclick="openNav()">
          <span></span>
          <span></span>
          <span></span>
     </a>
</header>

<nav id="nav">

     <div style="position:absolute;right:30px;top:15px;z-index:999;padding:5px 5px 0px 5px;border:1px solid #676262">
          <a href="javascript:void(0)" class="menu-toggle" onclick="closeNav()">
               <img alt="" src="<?= base_url('assets/frontend/img/icon-close.png'); ?>">
          </a>
     </div>

     <div class="nav" id="nav-main">
          <a href="javascript:void(0)">Menu</a>
          <hr>
          <a href="<?= site_url() ?>">Home</a>
          <a href="<?= site_url('/') ?>#product-list">Produk Suzuki</a>
          <a href="<?= site_url('listHarga') ?>">Harga</a>
          <a href="<?= site_url('/') ?>#berita">Promo dan Berita</a>
          <a href="https://wa.me/<?= $kontak->contact_nohp ?>">Hubungi Kami</a>
     </div>

</nav>