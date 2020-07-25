<!DOCTYPE html>
<html lang="en">

<head>
     <?php $this->load->view('backend/_partials/head.php'); ?>
</head>

<body class="hold-transition sidebar-mini">
     <div class="wrapper">

          <!-- Navbar -->
          <?php $this->load->view('backend/_partials/top-bar.php'); ?>
          <!-- /.navbar -->

          <!-- Main Sidebar Container -->
          <?php $this->load->view('backend/_partials/side-bar.php'); ?>

          <!-- Content Wrapper. Contains page content -->
          <div class="content-wrapper">
               <?php $this->load->view('backend/_partials/breadcrump.php'); ?>
               <div class="content">
                    <div class="container-fluid">
                         <div class="row">
                              <div class="col-lg-12">
                                   <div class="card card-primary card-outline">
                                        <div class="card-header">
                                             <h5 class="m-0">Data <?= ucfirst($this->uri->segment(1)) ?></h5>
                                        </div>
                                        <div class="card-body">
                                             <a href="<?= base_url('berita'); ?>" type="button" class="btn btn-success mb-3">
                                                  Kembali
                                             </a>
                                             <form action="<?= site_url('produk/add'); ?>" method="POST" enctype="multipart/form-data">
                                                  <div class="form-group">
                                                       <label>Nama</label>
                                                       <input type="text" name="nama" id="nama" class="form-control">
                                                  </div>
                                                  <div class="form-group">
                                                       <label>Harga</label>
                                                       <input type="number" name="harga" id="harga" class="form-control">
                                                  </div>
                                                  <div class="form-group">
                                                       <label>Gambar</label>
                                                       <input type="file" name="gambar">
                                                  </div>
                                                  <div class="form-group">
                                                       <label>Brosur</label>
                                                       <input type="file" name="brosur">
                                                  </div>
                                                  <div class="form-group">
                                                       <label>Deskripsi</label>
                                                       <textarea name="des" id="isi" cols="30" rows="10" class="form-control"></textarea>
                                                  </div>
                                                  <div class="form-group">
                                                       <button type="reset" class="btn btn-default">Reset</button>
                                                       <button type="submit" class="btn btn-primary">Save changes</button>
                                                  </div>
                                             </form>
                                        </div>

                                   </div>
                              </div>
                         </div>
                         <!-- /.col-md-6 -->
                    </div>
                    <!-- /.row -->
               </div><!-- /.container-fluid -->
          </div>
     </div>
     <!-- /.content-wrapper -->
     <script>
          $(function() {
               // Summernote
               $('textarea').summernote()
          })
     </script>
     <?php $this->load->view('backend/_partials/footer.php'); ?>

     </div>
     <!-- ./wrapper -->
     <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>