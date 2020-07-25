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
                                    <form action="<?php site_url('berita/save') ?>" method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Judul Berita</label>
                                            <input value="<?= $berita->berita_id ?>" type="hidden" name="id" class="form-control">
                                            <input value="<?= $berita->berita_gambar ?>" type="hidden" name="gambar" class="form-control">
                                            <input value="<?= $berita->berita_judul ?>" type="text" name="judul" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Gambar Berita</label> <br>
                                            <input type="file" name="gambar"><br><br>
                                            <label>Gambar Lama</label> <br>
                                            <img src="<?= base_url('upload/berita/' . $berita->berita_gambar); ?>" class="img-responsive img-thumbnail">
                                        </div>
                                        <div class="form-group">
                                            <label>Isi Berita</label>
                                            <textarea name="isi" id="isi" cols="30" rows="10" class="form-control"><?= $berita->berita_isi ?></textarea>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                        </div>

                                    </form>
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
            $('textarea').summernote()
        })
    </script>

    <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>