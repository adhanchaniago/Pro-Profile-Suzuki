<aside class="main-sidebar sidebar-dark-primary elevation-4 ">
     <!-- Brand Logo -->
     <a href="index3.html" class="brand-link">
          <img src="<?= base_url('assets/frontend/images/icon.png'); ?>" alt="Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
          <span class="brand-text font-weight-light"><b>SUZUKI</b></span>
     </a>

     <!-- Sidebar -->
     <div class="sidebar">
          <!-- Sidebar user panel (optional) -->
          <div class="user-panel mt-3 pb-3 mb-3 d-flex">
               <div class="image">
                    <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image"> -->
               </div>
               <div class="info">
                    <a href="#" class="d-block"><?= $_SESSION['user']->admin_nama ?></a>
               </div>
          </div>

          <!-- Sidebar Menu -->
          <nav class="mt-2">
               <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                    <li class="nav-item">
                         <a href="<?= site_url('slider') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-sliders-h"></i>
                              <p>
                                   Slider
                              </p>
                         </a>
                    </li>
                    <li class="nav-item">
                         <a href="<?= site_url('team') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-users"></i>
                              <p>
                                   Team
                              </p>
                         </a>
                    </li>
                    <li class="nav-item">
                         <a href="<?= site_url('produk') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-cube"></i>
                              <p>
                                   Produk
                              </p>
                         </a>
                    </li>
                    <li class="nav-item">
                         <a href="<?= site_url('headline') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-grip-lines"></i>
                              <p>
                                   Tag Headline
                              </p>
                         </a>
                    </li>
                    <li class="nav-item">
                         <a href="<?= site_url('berita') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-newspaper  "></i>
                              <p>
                                   Berita
                              </p>
                         </a>
                    </li>
                    <li class="nav-item">
                         <a href="<?= site_url('harga') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-money-bill  "></i>
                              <p>
                                   Harga
                              </p>
                         </a>
                    </li>
                    <li class="nav-item">
                         <a href="<?= site_url('contact') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-phone"></i>
                              <p>
                                   Contact
                              </p>
                         </a>
                    </li>
                    <li class="nav-item">
                         <a href="<?= site_url('user') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-user"></i>
                              <p>
                                   Setting Akun
                              </p>
                         </a>
                    </li>
                    <li class="nav-item">
                         <a href="<?= site_url('logout') ?>" class="nav-link">
                              <i class="nav-icon fas  fa-power-off"></i>
                              <p>
                                   Logout
                              </p>
                         </a>
                    </li>
               </ul>
          </nav>
          <!-- /.sidebar-menu -->
     </div>
     <!-- /.sidebar -->
</aside>