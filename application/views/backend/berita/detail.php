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
                                    <a href="<?= base_url('berita'); ?>" type="button" class="btn btn-primary mb-3">
                                        Kembali
                                    </a>

                                    <div class="row">
                                        <div class="col-md-8">
                                            <h2 class="mb-0"><?= $berita->berita_judul ?></h2>
                                            <small><?= $berita->berita_post ?></small>
                                            <p align="justify">
                                                <?= $berita->berita_isi ?>
                                            </p>
                                        </div>
                                        <div class="col-md-4">
                                            <img src="<?= base_url('upload/berita/' . $berita->berita_gambar); ?>" class="card-img-top">
                                        </div>
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

        </aside> -->
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <?php $this->load->view('backend/_partials/footer.php'); ?>

    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->
    <script>
        $(function() {
            // Summernote
            $('.textarea').summernote()
        })
    </script>

    <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>