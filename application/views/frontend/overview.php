<!DOCTYPE html>
<html lang="en">

<head>
	<?php $this->load->view('frontend/_partials/head.php'); ?>
</head>

<body class="politics_version">

	<div id="preloader">
		<div id="main-ld">
			<div id="loader"></div>
		</div>
	</div>

	<div class="topbar text-center hidden-xs">
		<marquee behavior="" direction="">
			<p>
				Selamat Datang di Website Dealer Suzuki Area Sumatra Barat !! info Hotline. + <?= $kontak->contact_nohp ?> ( WA|SMS|CALL )
				Yuuks Test Drive All New Ertiga Dapatkan Hadiah Mobil, Motor dllnya !! info Hotline. + <?= $kontak->contact_nohp ?> ( WA|SMS|CALL )
				Cabang Kami Hadir diKota Anda : Kota Padang | Payakumbuh | Solok | Bukittinggi | Dharmasraya | Pesisir Selatan | Pasaman Barat
			</p>
		</marquee>
	</div>

	<header style="background: transparent;" class="header header_style_01">
		<nav class="megamenu navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><img style="width: 250px;" src="<?= base_url('assets/frontend/images/logo_suzuki.png'); ?>" alt="image"></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a style="font-size: 15px; color:#c7c700; font-weight: bolder;" href="<?= site_url('/'); ?>">Home</a></li>
						<li><a style="font-size: 15px; color:#c7c700; font-weight: bolder;" data-scroll-nav="1" href="#haedline">Headline</a></li>
						<li><a style="font-size: 15px; color:#c7c700; font-weight: bolder;" href="<?= site_url('listHarga'); ?>">List Harga</a></li>
						<li><a style="font-size: 15px; color:#c7c700; font-weight: bolder;" data-scroll-nav="3" href="#produk">Produk Suzuki</a></li>
						<li><a style="font-size: 15px; color:#c7c700; font-weight: bolder;" data-scroll-nav="4" href="#berita">Berita dan Promo</a></li>
						<li><a style="font-size: 15px; color:#c7c700; font-weight: bolder;" target="_blank" href="https://api.whatsapp.com/send?phone=<?= $kontak->contact_nohp  ?>">Hubungi Kami</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>



	<!-- <div id="main-banner" class="banner-one" data-scroll-index="0">
		<div data-src="<?= base_url('assets/frontend/uploads/slide-1.jpg'); ?>">
			<div class="camera_caption">
				<div class="container">
					<h1 class="wow fadeInUp animated">World is greater than five #ELPolitic</h1>
					<p class="wow fadeInUp animated" data-wow-delay="0.2s">With ELPolitic responsive landing page template, you can showcase your next politics & politician websites!</p>
					<a data-scroll href="#" class="btn btn-light btn-radius btn-brd grd1">DONATE</a>
				</div> 
			</div> 
		</div>
		<div data-src="<?= base_url('assets/frontend/uploads/slide-2.jpg'); ?>">
			<div class="camera_caption">
				<div class="container">
					<h1 class="wow fadeInUp animated">World is greater than five #ELPolitic</h1>
					<p class="wow fadeInUp animated" data-wow-delay="0.2s">With ELPolitic responsive landing page template, you can showcase your next politics & politician websites!</p>
					<a data-scroll href="#" class="btn btn-light btn-radius btn-brd grd1">DONATE</a>
				</div> 
			</div> 
		</div>
		<div data-src="<?= base_url('assets/frontend/uploads/slide-3.jpg'); ?>">
			<div class="camera_caption">
				<div class="container">
					<h1 class="wow fadeInUp animated">World is greater than five #ELPolitic</h1>
					<p class="wow fadeInUp animated" data-wow-delay="0.2s">With ELPolitic responsive landing page template, you can showcase your next politics & politician websites!</p>
					<a data-scroll href="#" class="btn btn-light btn-radius btn-brd grd1">DONATE</a>
				</div> 
			</div> 
		</div>
	</div>  -->
	<div id="ke1" class="main-slider owl-carousel banner-one">
		<?php foreach ($slider as $dataSlider) : ?>
			<a href="<?= site_url('/'); ?>" class="item">
				<img src="<?= base_url('upload/slider/' . $dataSlider->slider_gambar); ?>" alt="" class="w-100">
			</a>
		<?php endforeach ?>
	</div>

	<!-- <div style="padding: 20px 0;" id="haedline " data-scroll-index="1" class="section wb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Headline</h3>
				<p class="lead">
					<?= $headline->headline_tag ?>
				</p>
			</div>
		</div>
	</div> -->
	<div style="padding: 20px 0;" id="haedline " data-scroll-index="1" class="section wb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Team Kami</h3>
				<div class="owl-carousel owl-theme">
					<?php foreach ($team as $row) : ?>
						<a target="_blank" href="tel:<?= $row->team_wa; ?>" class="item thumbnail">
							<img style="height: 300px;" src="<?= base_url('upload/team/' . $row->team_foto); ?>" alt="">
							<div class="caption">
								<p><?= $row->team_nama; ?> <br> <span class="fa fa-phone"></span> <?= $row->team_wa; ?></p>
							</div>
						</a>
					<?php endforeach; ?>
				</div>
				<script>
					$('.owl-carousel').owlCarousel({
						loop: true,
						margin: 10,
						nav: true,
						responsive: {
							0: {
								items: 1
							},
							600: {
								items: 3
							},
							1000: {
								items: 5
							}
						}
					})
				</script>
			</div>
		</div>
	</div>


	<!-- <div style="padding: 20px 0;" id="harga" data-scroll-index="2" class="section wb">
		<div class="container">
			<div class="section-title text-center">
				<h3>List Harga Suzuki</h3>
				<div class="row text-center">
					<p>Harga sewaktu-waktu dapat berubah</p>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="service-widget">
							<div class="post-media_pp wow fadeIn">
								<img width="100%" src="<?= base_url('upload/harga/' . $harga->harga_gambar); ?>" alt="" class="img-responsive">
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	<div style="padding: 20px 0;" id="produk" data-scroll-index="3" class="section wb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Produk Suzuki</h3>
				<p class="lead">Dealer Resmi Suzuki Padang Wilayah Sumatera Barat. Hubungi Kami <a href="https://api.whatsapp.com/send?phone=<?= $kontak->contact_nohp  ?>"><?= '+' . $kontak->contact_nohp ?></a></p>
			</div>

			<div class="row">
				<?php foreach ($produk as $dataProduk) : ?>
					<div class="col-md-4" style="margin-bottom: 15px;">
						<div class="issuse-wrap2 clearfix">
							<center>
								<div class="post-media wow fadeIn">
									<img style="width: 296px; height: 190px; margin-bottom: 10px;" src="<?= base_url('upload/produk/' . $dataProduk->produk_gambar); ?>" alt="" class="img-responsive img-rounded ">
									<a href="http://www.youtube.com/watch?v=nrJtHemSPW4" data-rel="prettyPhoto[gal]" class="playbutton"></a>
								</div>
								<h4 style="padding: 0px 0 0px;"><?= $dataProduk->produk_nama ?></h4>
								<small>Harga : <a href="<?= site_url('listHarga'); ?>">Klik di Sini</a></small>
								<p><a target="_blank" href="<?= base_url('upload/brosur/' . $dataProduk->produk_brosur) ?>" class="btn btn-primary btn-sm">Download Brosur</a></p>
							</center>
						</div>
					</div>
				<?php endforeach ?>
			</div>
		</div>
	</div>

	<div style="padding: 80px 0;" id="berita" data-scroll-index="4" class="section lb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Berita dan Promo</h3>
				<p class="lead">Syarat dan Ketentuan Berlaku, Hotline <a href="https://api.whatsapp.com/send?phone=<?= $kontak->contact_nohp ?>"><?= '+' . $kontak->contact_nohp ?></a></p>
			</div>

			<div class="row">
				<?php foreach ($berita as $dataBerita) : ?>
					<div class="col-md-4 col-sm-6 col-lg-4" style="margin-bottom: 30px;">
						<div class="post-box">
							<div class="post-thumb">
								<center>
									<img style="width: 100%; height: 220px" src="<?= base_url('upload/berita/' . $dataBerita->berita_gambar); ?>" class="img-responsive" style="height: 300px;" alt="post-img"></center>
								<div class="date">
									<span><?= $dataBerita->berita_post ?></span>
								</div>
							</div>
							<div class="post-info">
								<h4><?= $dataBerita->berita_judul ?></h4>
								<ul>
									<li>by admin</li>
								</ul>
								<p><a href="<?= site_url('detail/' . $dataBerita->berita_id); ?>" class="btn btn-primary btn-sm">Lanjut Baca</a></p>
							</div>
						</div>
					</div>
				<?php endforeach ?>
			</div>

		</div>
	</div>

	<?php $this->load->view('frontend/_partials/footer.php'); ?>

	<a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
	<?php $this->load->view('frontend/_partials/scripts.php'); ?>

</body>

</html>