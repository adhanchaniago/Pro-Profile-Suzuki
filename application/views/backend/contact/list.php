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
                                    <div id="show_headline">

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

        <!-- Modal -->
        <div class="modal col-md-12 fade" id="modalEdit">
            <div class="modal-dialog" style=" max-height: 5000px;">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Default Modal</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Facebook</label>
                            <input type="text" name="facebook" id="facebook" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Instagram</label>
                            <input type="text" name="instagram" id="instagram" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>No Hp</label>
                            <input type="text" name="nohp" id="nohp" class="form-control">
                        </div>
                    </div>
                    <script>
                        // CKEDITOR.replace('modalTag');
                    </script>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" id="btn-update" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

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
    <script>
        $(function() {
            // Summernote
            $('.textarea').summernote()
        })
    </script>
    <script>
        $(document).ready(function() {
            tampil_contact();

            function tampil_contact() {
                $.ajax({
                    type: "GET",
                    url: "<?= base_url('backend/Contact/ajaxDataContact') ?>",
                    async: "true",
                    dataType: "json",
                    success: function(data) {
                        var html = '';
                        html = `
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Facebook</th>
                                    <th>Instagram</th>
                                    <th>No HP</th>
                                </tr>
                            </thead>
                            <thead>
                                <tr>
                                    <td>${data.contact_fb}</td>
                                    <td>${data.contact_instagram}</td>
                                    <td>${data.contact_nohp}</td>
                                </tr>
                            </thead>
                        </table>
                        <a href="javascript:void(0)" data="'${data.contact_id}'" class="btn btn-warning">Edit<a/>
                        `;
                        $('#show_headline').html(html);
                    }
                });
            }

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
                        tampil_contact();
                    }
                });

            });


        });
    </script>

    <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>