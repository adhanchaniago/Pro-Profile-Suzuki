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
            <div class="col-lg-6">
            </div>
            <!-- /.col-md-6 -->
            <div class="col-lg-12">

              <div class="card card-primary card-outline">
                <div class="card-header">
                  <h5 class="m-0">Halaman Utama</h5>
                </div>
                <div class="card-body">
                  <h6 class="text-center">Selamat Datang di Halaman Utama</h6>

                  <p class="card-text text-center">Pilih Menu yang Akan di Gunakan</p>
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

    <!-- Control Sidebar -->
    <!-- <aside class="control-sidebar control-sidebar-dark">
      <div class="p-3">
        <h5>Title</h5>
        <p>Sidebar content</p>
      </div>
    </aside> -->
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <?php $this->load->view('backend/_partials/footer.php'); ?>

  </div>
  <!-- ./wrapper -->

  <!-- REQUIRED SCRIPTS -->

  <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>