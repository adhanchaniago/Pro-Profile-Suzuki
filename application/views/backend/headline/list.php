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
                                    <h5 class="m-0">Headline</h5>
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
            <div class="modal-dialog" style="max-width: 80%; max-height: 5000px;">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Default Modal</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <textarea id="modalTag" class="textarea" placeholder="Place some text here"></textarea>
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
            tampil_headline();

            function tampil_headline() {
                $.ajax({
                    type: "GET",
                    url: "<?= base_url('backend/Headline/dataHeaedline') ?>",
                    async: "true",
                    dataType: "json",
                    success: function(data) {
                        var html = '';
                        html = '<p>' + data.headline_tag + '<br></p>' +
                            '<a href="javascript:void(0)" data="' + data.headline_id + '" class="btn btn-warning">Edit<a/>';
                        $('#show_headline').html(html);
                    }
                });
            }

            $('#show_headline').on('click', '.btn-warning', function() {
                var id = $(this).attr('data');
                $.ajax({
                    type: "GET",
                    url: "<?= base_url('backend/Headline/getHeadline') ?>",
                    data: {
                        id: id
                    },
                    dataType: "JSON",
                    success: function(data) {
                        $('#modalEdit').modal('show');
                        $('#modalTag').summernote('code', data.headline_tag);
                    }
                });
            });

            $('#btn-update').on('click', function() {
                var tag = $('#modalTag').val();
                var id = 1;
                $.ajax({
                    type: "POST",
                    url: "<?= base_url('backend/Headline/updateBarang') ?>",
                    data: {
                        headline_tag: tag,
                        headline_id: id
                    },
                    dataType: "JSON",
                    success: function(response) {
                        $('#modalTag').val('');
                        $('#modalEdit').modal('hide');
                        tampil_headline();
                    }
                });

            });


        });
    </script>

    <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>