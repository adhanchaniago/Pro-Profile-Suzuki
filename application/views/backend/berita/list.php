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
                                    <a href="<?= base_url('berita/add'); ?>" type="button" class="btn btn-primary mb-3">
                                        Tambah
                                    </a>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Judul Berita</th>
                                                <th>Tanggal Post</th>
                                                <th width="270">Action </th>
                                            </tr>
                                        </thead>
                                        <tbody id="show_headline">

                                        </tbody>
                                    </table>
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
    <script>
        $(document).ready(function() {
            tampil_slider();

            function tampil_slider() {
                $.ajax({
                    type: "GET",
                    url: "<?= base_url('backend/Berita/ajaxDataBerita') ?>",
                    async: "true",
                    dataType: "json",
                    success: function(data) {
                        console.log(data);
                        var html = '';
                        for (var i = 0; i < data.harga.length; i++) {
                            html += `
                                <tr>
                                <tr>
                                    <td>${data.harga[i].berita_judul}</td>
                                    <td>${data.harga[i].berita_post}</td>
                                    </td>
                                <td>
                                <a href="<?= base_url('berita/detail/') ?>${data.harga[i].berita_id}" class="btn btn-success">Detail</a>
                                <a href="<?= base_url('berita/edit/') ?>${data.harga[i].berita_id}" class="btn btn-warning">Edit</a>
                                <a href="<?= base_url('berita/delete/') ?>${data.harga[i].berita_id}" class="btn btn-danger">Hapus</a>
                                </td> 
                                </tr>
                                `;
                        }
                        console.log(html);
                        $('#show_headline').html(html);
                    }
                });
            }

            $('#show_headline').on('click', '.btn-danger', function() {
                var id = $(this).attr('data');
                $.ajax({
                    type: "POST",
                    url: "<?= base_url('berita/delete') ?>",
                    data: {
                        idSlider: id
                    },
                    success: function(res) {
                        tampil_slider();
                    }
                });
            });

            $('#show_headline').on('click', '.btn-warning', function() {
                var id = $(this).attr('data');
                $.ajax({
                    type: "POST",
                    url: "<?= base_url('backend/Contact/getById') ?>",
                    data: {
                        id: id
                    },
                    dataType: "JSON",
                    success: function(data) {
                        $('#facebook').val(data.contact_fb);
                        $('#instagram').val(data.contact_instagram);
                        $('#nohp').val(data.contact_nohp);
                        $('#modalEdit').modal('show');
                    }
                });
            });

            $('#btn-update').on('click', function() {
                var facebook = $('#facebook').val();
                var instagram = $('#instagram').val();
                var nohp = $('#nohp').val();
                $.ajax({
                    type: "POST",
                    url: "<?= base_url('backend/Contact/update') ?>",
                    data: {
                        contact_fb: facebook,
                        contact_instagram: instagram,
                        contact_nohp: nohp,
                    },
                    dataType: "JSON",
                    success: function(response) {
                        $('#facebook').val('');
                        $('#instagram').val('');
                        $('#nohp').val('');
                        $('#modalEdit').modal('hide');
                        tampil_slider();
                    }
                });

            });


        });
    </script>

    <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>