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
						<li><a style="font-size: 15px;color:yellow;  font-weight: bolder;" href="<?= site_url('/'); ?>">Home</a></li>
						<li><a style="font-size: 15px;color:yellow;  font-weight: bolder;" href="<?= site_url('/'); ?>#haedline">Headline</a></li>
						<li><a style="font-size: 15px;color:yellow;  font-weight: bolder;" href="<?= site_url('listHarga'); ?>#haedline">>List Harga</a></li>
						<li><a style="font-size: 15px;color:yellow;  font-weight: bolder;" href="<?= site_url('/'); ?>#produk">Produk Suzuki</a></li>
						<li><a style="font-size: 15px;color:yellow;  font-weight: bolder;" href="<?= site_url('/'); ?>#berita">Berita dan Promo</a></li>
						<li><a style="font-size: 15px;color:yellow;  font-weight: bolder;" target="_blank" href="https://api.whatsapp.com/send?phone=<?= $kontak->contact_nohp  ?>">Hubungi Kami</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div id="ke1" class="main-slider owl-carousel banner-one">
		<?php foreach ($slider as $dataSlider) : ?>
			<a href="<?= site_url('/'); ?>" class="item">
				<img src="<?= base_url('upload/slider/' . $dataSlider->slider_gambar); ?>" alt="" class="w-100">
			</a>
		<?php endforeach ?>
	</div>

	<div style="padding: 20px 0;" id="haedline " data-scroll-index="1" class="section wb">
		<div class="container">
			<div style="margin-bottom: 10px;" class="section-title text-center">
				<h3>Headline</h3>
				<p class="lead">
					<?= $headline->headline_tag ?>
				</p>
			</div>
		</div>
	</div>

	<!-- Tidak ada Gunanya -->
	<div style="padding: 40px 0;" id="detail" class="section lb">
		<div class="container">
			<div style="margin-bottom: 20px;" class="section-title text-left">
				<h3>Detail Berita</h3>
				<h4><?= $berita->berita_judul ?></h4>
				<small><?= $berita->berita_post ?></small>
			</div>

			<div class="row">
				<div class="col-md-5">
					<div class="issuse-wrap2 clearfix">
						<center>
							<img src="<?= base_url('upload/berita/' . $berita->berita_gambar); ?>" alt="" class="img-responsive img-rounded">

						</center>
					</div>
				</div>
				<div class="col-md-7">
					<p><?= $berita->berita_isi ?></p>
				</div>
			</div>
		</div>
	</div>
	<div style="padding: 60px 10px;" id="kontak" data-scroll-index="5" class="copyrights">
		<div class="container">
			<div class="footer-distributed">
				<div class="row">
					<div class="col-md-4 ">
						<p>
							<span class="fa fa-building"></span>
							Jl. Khatib Sulaiman No.87 Padang <br>
							<span class="fa fa-building"></span>
							Jl. Dr. Sutomo No. 10 Marapalam Padang <br>
							<span class="fa fa-envelope"></span> irpansuzuki@gmail.com <br>
							<span class="fa fa-phone"></span> +<?= $kontak->contact_nohp ?>
						</p>
						<a style="color: white;" href="<?= $kontak->contact_fb ?>"><span class="fa fa-facebook"></span></a> &nbsp;
						<a style="color: white;" href="<?= $kontak->contact_instagram ?>"><span class="fa fa-instagram"></span></a> &nbsp;
						<a style="color: white;" href="https://twitter.com/Irfan25Sukmi"><span class="fa fa-twitter"></span></a> &nbsp;
						<a style="color: white;" href="https://www.youtube.com/watch?v=p4LlwKxSXhA"><span class="fa fa-youtube"></span></a> &nbsp;
					</div>
					<div class="col-md-4">
						<p>
							Menu
							<ol>
								<li><a style="color:white ;" href="<?= site_url('/'); ?>">Home</a></li>
								<li><a style="color:white ;" href="<?= site_url('/'); ?>#haedline">Headline</a></li>
								<li><a style="color:white ;" href="<?= site_url('listHarga'); ?>">List Harga</a></li>
								<li><a style="color:white ;" href="<?= site_url('/'); ?>#produk">Produk Suzuki</a></li>
								<li><a style="color:white ;" href="<?= site_url('/'); ?>#berita">Berita dan Promo</a></li>
								<li><a style="color:white ;" target="_blank" href="https://api.whatsapp.com/send?phone=<?= $kontak->contact_nohp  ?>">Hubungi Kami</a></li>
							</ol>
						</p>
					</div>
					<div class="col-md-4">
						<p>Media Sosial</p>
						<iframe src="http://www.facebook.com/plugins/likebox.php?href=https://www.facebook.com/irpansuzukipadang/&amp;width=350px&amp;height=350&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true&amp;appId=352861198057415" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100%; height:220px;" allowtransparency="true"></iframe>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<p class="footer-company-name">
							<center>
								All Rights Reserved. &copy; <?= date('Y') ?> <a style="color: white;" href="https://instagram.com/egovaflavia">PT. Elang Perkasa Motor - Suzuki</a> Custome By :
								<a href="https://instagram.com/egovaflavia" style="color: white;">Mediatama Web Indonesia</a>
							</center>
						</p>
					</div>
				</div>
				<!-- <div class="footer-left">
					<p class="footer-company-name">
						Fanspage : <a href="<?= $kontak->contact_fb ?>">Klik Disini</a> <br>
						Email : <a href="maito:irpansuzuki@gmail.com">irpansuzuki@gmail.com</a> <br>
						Hotline : <a href="https://api.whatsapp.com/send?phone=<?= $kontak->contact_nohp ?>"><?= '+' . $kontak->contact_nohp ?> | What'sApp</a> <br>
						All Rights Reserved. &copy; <?= date('Y') ?> <a href="#">PT. Elang Perkasa Motor - Suzuki</a> Custome By :
						<a href="https://instagram.com/egovaflavia">egvflv</a></p>
				</div>

				<div class="footer-right">
					<p>
						Kontak Kami <br>
						Kantor : <br>
						Jl. Khatib Sulaiman No.87 Padang <br>
						Jl. Dr. Sutomo No. 10 Marapalam Padang
					</p>
				</div> -->
			</div>
		</div>
	</div>
	<a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
	<?php $this->load->view('frontend/_partials/scripts.php'); ?>

</body>

</html>