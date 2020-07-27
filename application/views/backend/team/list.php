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
                                    <a href="<?= base_url('team/add'); ?>" type="button" class="btn btn-primary mb-3">
                                        Tambah
                                    </a>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Nama</th>
                                                <th width="250">Action </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($teams as $row) : ?>
                                                <tr>
                                                    <td><?= $row->team_nama ?></td>
                                                    <td>
                                                        <a href="<?= base_url('team/detail/' . $row->team_id) ?>" class="btn btn-success">Detail</a>
                                                        <a href="<?= base_url('team/edit/' . $row->team_id) ?>" class="btn btn-warning">Edit</a>
                                                        <a href="<?= base_url('team/delete/' . $row->team_id) ?>" class="btn btn-danger">Hapus</a>
                                                    </td>

                                                </tr>
                                            <?php endforeach ?>
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

    <?php $this->load->view('backend/_partials/scripts.php'); ?>

</body>

</html>