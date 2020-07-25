<!DOCTYPE html>
<html lang="en">

<head>
	<?php $this->load->view('frontend/_partials/head.php'); ?>
</head>

<body>
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N6Q95LX" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
	<!-- <noscript><strong>We're sorry but Suzuki doesn't work properly without JavaScript enabled. Please enable it to continue.</strong></noscript> -->
	<div id="app">
		<div id='clickable'>
			<?php $this->load->view('frontend/_partials/menu.php'); ?>
		</div>
		<!-- Disini Script, liat di script -->
		<main id="product" class="mt-0 product-automobile">
			<section class="headline">
				<?php $this->load->view('frontend/pages/carousel.php'); ?>
				<div class="container">
					<ol class="breadcrumb mt-20 align-center">
						<li>
							<center>
								<h2 class="mb-2">Detail <?= $produk->produk_nama ?></h2>
								<small>Brosur : <a href="<?= base_url('upload/brosur/' . $produk->produk_brosur); ?>"><?= $produk->produk_nama ?></a></small>
							</center>
						</li>
					</ol>
					<div class="row">
						<div class="col-6">
							<img src="<?= base_url('upload/produk/' . $produk->produk_gambar); ?>" alt="">
						</div>
						<div class="col-6">
							<p>
								<?= $produk->produk_des ?>
								<small><?= $produk->produk_harga ?></small>
							</p>
						</div>
					</div>
				</div>
			</section>
			<?php $this->load->view('frontend/pages/float-menu.php'); ?>
		</main>
		<?php $this->load->view('frontend/_partials/footer.php'); ?>
	</div>

	<?php $this->load->view('frontend/_partials/scripts.php'); ?>
</body>

</html>