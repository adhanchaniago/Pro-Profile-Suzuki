<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark"><?= ucfirst($this->uri->segment(1)) ?></h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <?php foreach ($breadcrumb as $key => $value) : ?>
                        <?php if ($value != '') : ?>
                            <li class="breadcrumb-item "><a href="<?= $value ?>"><?= $key ?></a> </li>
                        <?php else : ?>
                            <li class="breadcrumb-item active"><?= $key ?></li>
                        <?php endif; ?>
                    <?php endforeach ?>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>