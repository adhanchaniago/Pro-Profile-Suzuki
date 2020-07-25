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
                                    <h5 class="m-0">Data <?= ucfirst(uri_string(3)) ?></h5>
                                </div>
                                <div class="card-body">
                                    <a href="<?= base_url('harga/') . $harga->harga_id; ?>" class="btn btn-warning mb-3">Edit</a>
                                    <div id="show">
                                        <img class="card-img-top" style="width: 100%; height: 100%;" src="<?= base_url('upload/harga/') . $harga->harga_gambar; ?>" alt="">
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

        <!-- Main Footer -->
        <?php $this->load->view('backend/_partials/footer.php'); ?>

    </div>
    <!-- ./wrapper -->


    <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>