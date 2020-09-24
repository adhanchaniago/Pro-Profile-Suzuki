-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21 Jul 2020 pada 17.15
-- Versi Server: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_profil_suzuki`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_nama` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_username`, `admin_password`, `admin_nama`) VALUES
(1, 'admin', 'admin', 'Egova Riva Gustino');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE IF NOT EXISTS `tb_berita` (
  `berita_id` int(11) NOT NULL,
  `berita_judul` varchar(255) NOT NULL,
  `berita_isi` text NOT NULL,
  `berita_post` varchar(255) NOT NULL,
  `berita_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`berita_id`, `berita_judul`, `berita_isi`, `berita_post`, `berita_gambar`) VALUES
(3, 'Jualan Tak Laris, Honda Suntik Mati Honda Jazz di Amerika Serikat', '<p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; display: inline; font-family: helvetica, arial, sans-serif;">Nasib&nbsp;<a href="https://www.detik.com/tag/honda-jazz" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Honda Jazz</a>&nbsp;kurang beruntung di Amerika Serikat. Penjualan mobil itu kurang laris sehingga Honda memilih untuk menghentikan penjualan. </p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; display: inline; font-family: helvetica, arial, sans-serif;">Faktanya mobil jenis hatchback kini kurang diminati di Amerika Serikat.</p><p style="box-sizing: content-box; margin: 20px 0px; font-family: helvetica, arial, sans-serif;">Dikutip dari Autoblog, Selasa (21/7/2020) penjualan&nbsp;<a href="https://www.detik.com/tag/honda-jazz" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Honda Jazz</a>&nbsp;atau Honda Fit yang kurang laris, membuat pabrikan berlambang huruf H tegak itu mengatur strategi. Honda HR-V dan Honda Civic hatchback jadi fokus Honda di segmen&nbsp;<em style="box-sizing: content-box;">entry level</em>&nbsp;untuk pasar Amerika Serikat.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Penerimaan Honda Jazz di negeri paman sam makin menukik. Dilansir dari Carscoops, Selasa (21/7) Honda Amerika Serikat mampu menjual Jazz sebanyak 56.630 pada 2016. Tapi jumlahnya menyusut menjadi sekitar 35.000 unit selama dua tahun terakhir. Hingga penjualannya dihentikan tahun ini.</p><div class="clearfix" style="box-sizing: content-box; padding: 0px; font-family: helvetica, arial, sans-serif; clear: both !important; float: none !important; height: 0px !important;"></div><div class="parallax_detail parallaxB" style="box-sizing: content-box; font-family: helvetica, arial, sans-serif; margin: 0px auto; position: relative;"><div class="parallax_abs" style="box-sizing: content-box; width: 430px;"><div class="parallax_fix" style="box-sizing: content-box; width: 430px;"><div class="parallax_ads" style="box-sizing: content-box; width: 430px;"></div></div></div></div><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Dengan demikian, generasi keempat Honda Jazz yang mengaspal di Tokyo Motor Show pada 23 Oktober 2019 lalu, tidak akan dipasarkan di Amerika Serikat.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Sebenarnya tak hanya&nbsp;<a href="https://www.detik.com/tag/honda-jazz" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Honda Jazz</a>, Toyota juga resmi menyetop produksi Yaris di Amerika Serikat. Yaris hatchback dan Yaris sedan akan dihentikan produksinya mulai akhir Juni 2020.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Nasib Honda Jazz tidak jauh berbeda dengan penjualan Civic Coupe dan Accord transmisi manual di negeri paman sam itu.</p>', '2020-07-21', '83699883588dce3b6dead23f8529eec7.jpeg'),
(4, 'Masalah Fuel Pump, Suzuki Baleno Di-recall', '<p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; display: inline; font-family: helvetica, arial, sans-serif;">Masalah&nbsp;<a href="https://www.detik.com/tag/fuel-pump" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">fuel pump</a>&nbsp;atau pompa bahan bakar pada beberapa mobil, terutama mobil Jepang, juga dialami Suzuki. Di India, hatchback&nbsp;<a href="https://www.detik.com/tag/suzuki-baleno" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Suzuki Baleno</a>&nbsp;dan WagonR harus ditarik kembali (recall) karena masalah fuel pump.</p><p style="box-sizing: content-box; margin: 20px 0px; font-family: helvetica, arial, sans-serif;">Diberitakan&nbsp;<em style="box-sizing: content-box;">Financial Express</em>, pemilik mobil Suzuki WagonR dan Baleno akan dihubungi oleh dealer resmi untuk penggantian part fuel pump. Sebanyak 134.885 unit mobil Suzuki di India terpengaruh kampanye recall tersebut.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Secara spesifik, Suzuki WagonR yang diproduksi antara 15 November 2018 sampai 15 Oktober 2019 harus di-recall. Sementara&nbsp;<a href="https://www.detik.com/tag/suzuki-baleno" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Suzuki Baleno</a>&nbsp;yang diproduksi 8 Januari 2019 sampai 4 November 2019 juga terpengaruh.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Suzuki akan memeriksa 56.663 unit Wagon R dan 78.222 unit Baleno. Masalahnya karena fuel pump yang harus diganti secara gratis.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Kemungkinan Suzuki Baleno di Indonesia juga mengalami hal yang sama. Soalnya, Suzuki Baleno di Indonesia masih diimpor dari India.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Kampanye recall juga dilakukan oleh Toyota. Toyota yang di India menjual kembaran Suzuki Baleno dalam bentuk Toyota Glanza harus me-recall mobil tersebut.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Masalah fuel pump mempengaruhi 6.500 unit Toyota Glanza yang diproduksi antara 2 April 2019 sampai 6 Oktober 2019. Dealer lokal akan menghubungi pemilik kendaraan yang diduga bermasalah, dan fuel pump akan diganti tanpa biaya.<span style="font-size: 1rem;">Masalah fuel pump juga dialami mobil-mobil Mitsubishi, Nissan, dan Honda di Indonesia. Beberapa waktu lalu, Mitsubishi mengumumkan kampanye recall terhadap Xpander untuk penggantian fuel pump yang bermasalah. Mitsubishi Xpander yang terdampak produksi tahun 2017 sampai 2019, totalnya sebanyak 139.111 unit.</span></p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Nissan juga me-recall All New Nissan Livina yang diproduksi antara 22 Februari 2019 sampai 24 Agustus 2019. Jumlah mobil yang terdampak sebanyak 9.314 unit. Masalahnya sama, yakni pada fuel pump.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Terakhir, baru-baru ini PT Honda Prospect Motor (HPM) mengumumkan sebanyak 85.025 unit mobil yang sudah beredar di Indonesia masuk program kampanye recall. Nyaris semua model mobil Honda terkena dampak, model yang terindentifikasi dalam program ini meliputi Honda Brio, Honda Mobilio, Honda Jazz, Honda BR-V, Honda HR-V, Honda CR-V, Honda City, Honda Civic dan Honda Accord dengan tahun model antara 2017 hingga 2019.</p><div><br></div>', '2020-07-21', '4af4f5a1b2c97e151ea5943aea5b9d09.jpeg'),
(5, 'Utang VW Rp 2,8 Kuadriliun, Bisa Buat Beli 1 Juta Toyota Alphard', '<p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; display: inline; font-family: helvetica, arial, sans-serif;">Sebuah studi baru-baru ini merilis daftar perusahaan dunia yang memiliki utang yang cukup besar. Salah satu di antaranya adalah perusahaan otomotif.</p><p style="box-sizing: content-box; margin: 20px 0px; font-family: helvetica, arial, sans-serif;">Volkswagen (VW) menjadi pabrikan otomotif dengan utang paling banyak. VW tercatat menempati posisi urutan pertama sebagai perusahaan yang paling banyak berutang di dunia.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Utang VW pada 2019 lalu mencapai USD 192 miliar. Jika dirupiahkan berarti mencapai Rp 2,8 kuadriliun. Sebagian besar utang VW berasal dari divisi pembiayaannya.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Buat yang belum tahu, Rp 2,8 kuadriliun sama dengan Rp 2.800 triliun atau Rp 2.800.000.000.000.000 .</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Bahkan jumlah utang itu lebih besar daripada utang negara, seperti Afrika Selatan sebesar USD 180 miliar atau Rp 2,6 kuadriliun dan Hungaria USD 101 miliar Rp 1,4 kuadriliun.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Utang Rp 2,8 kuadriliun tergolong sangat besar. Jika dialokasikan untuk membeli mobil, uang segitu banyak bisa untuk membeli jutaan unit mobil baru.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Dana sebesar Rp 2,8 kuadriliun bisa untuk membeli sekitar 1.454.806 unit Toyota Alphard tipe 3.5 Q A/T. Untuk diketahui, Alphard tipe itu harganya mencapai 1.952.150.000.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Kalau dialokasikan untuk beli Toyota Avanza, dana sebesar Rp 2,8 kuadriliun bisa untuk membeli 14.369.796 unit Toyota Avanza tipe E STD M/T. Avanza tipe itu harga per unitnya Rp 197.700.000.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Wah banyak banget ya detikers. Mungkin bisa untuk bikin pabrik mobil baru lagi tuh.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Volkswagen tidak sendirian dalam posisinya sebagai pembuat mobil dengan tumpukan utang. Pembuat mobil Jerman lainnya, Daimler adalah perusahaan dengan jumlah utang terbesar ketiga di dunia. Angkanya mencapai USD 151 miliar atau Rp 2,2 kuadriliun.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Perusahaan otomotif lainnya yang berada di belakang dengan utang terbesar adalah Toyota. Perusahaan otomotif terbesar di dunia ini memiliki utang USD 138 miliar atau Rp 2,02 kuadriliun. Selanjutnya ada juga BMW yang berhutang sebesar USD 114 miliar atau Rp 1,8 kuadriliun.</p>', '2020-07-21', 'feb666160c8bef368d969e53645a2ba6.jpg'),
(6, 'Kerja Sama Lamborghini, Pertamina Hadirkan Pertamax Turbo di Sinjai', '<p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; display: inline; font-family: helvetica, arial, sans-serif;">Warga Sinjai Sulawesi Selatan kini bisa merasakan langsung keandalan dari Bahan Bakar Minyak (BBM) berkualitas tinggi dari Pertamax Turbo yang merupakan hasil kerja sama dengan Lamborghini. Kehadiran di Sinjai kali ini ditengarai suksesnya BBM yang yang sama di beberapa kota di Sulawesi.</p><p style="box-sizing: content-box; margin: 20px 0px; font-family: helvetica, arial, sans-serif;">Pertamax Turbo merupakan produk fuel Pertamina dengan kualitas yang tinggi dengan Research Octane Number (RON) 98 yang dilengkapi Ignition Boost Formula (IBF). Dengan kualitas tersebut, Pertamax Turbo bakal membuat mesin lebih responsif serta meningkatkan akselerasi dan performa mesin kendaraan.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Pertamax Turbo juga diklaim sebagai BBM yang ramah lingkungan dikarenakan emisi gas buang dengan kadar karbon yang rendah. Kadar sulfur Pertamax Turbo saat ini maksimal di angka 50 part per million (ppm) atau setara dengan standar Euro 4.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Unit Manager Communication &amp; CSR MOR VII PT Pertamina (Persero) Marketing Operation Region (MOR) VII, Laode Syarifuddin Mursali, menjelaskan dengan segala karakteristik tersebut, produk Pertamax Turbo cocok untuk kendaraan dengan spesifikasi teknologi tinggi serta yang membutuhkan akselerasi.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">"Pertamax Turbo merupakan BBM berkualitas tinggi yang diformulasikan Pertamina bekerja sama dengan Lamborghini dan telah diuji di kejuaraan Lamborghini Blancpain Super Trofeo Series di Eropa," ungkap Laode dalam keterangan tertulis, Senin (20/7/2020).</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">"Kami mengajak masyarakat Kabupaten Sinjai serta penggiat otomotif untuk dapat merasakan langsung kehandalan Pertamax Turbo," pungkasnya.Laode optimis produk gasoline terbaik dari Pertamina ini akan disambut baik oleh masyarakat.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Launching penyaluran perdana Pertamax Turbo di Sinjai dilaksanakan di Stasiun Pengisian Bahan Bakar Umum (SPBU) 74.92465 Balanipa Sinjai pada Rabu (1/7) yang lalu. Sebelumnya, produk Pertamax Turbo telah hadir lebih dahulu di 11 kota atau kabupaten di Sulawesi Selatan, mulai dari Kota Makassar, Gowa, Maros, Pangkep, Takalar, Jeneponto, Bulukumba, Pinrang, Sidrap, Luwu Utara, dan Toraja.</p><div><br></div>', '2020-07-21', '7280588fd375ec42a293e8f07566a60d.jpeg'),
(7, 'Daihatsu Terkejut Lihat Hasil Recall Gran Max-Luxio', '<p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; display: inline; font-family: helvetica, arial, sans-serif;">PT&nbsp;<a href="https://www.detik.com/tag/astra-daihatsu-motor" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Astra Daihatsu Motor (ADM)</a>&nbsp;menyebut program kampanye perbaikan connecting rod Gran Max 1.5 dan Luxio mendapat respon positif dari masyarakat. Dalam laporannya, program recall&nbsp;<a href="https://www.detik.com/tag/gran-max" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Gran Max</a>&nbsp;dan Luxio sudah melakukan perbaikan sebanyak 9.034 unit sejak berjalan pada awal November 2019.</p><p style="box-sizing: content-box; margin: 20px 0px; font-family: helvetica, arial, sans-serif;">Daihatsu mengumumkan melakukan pergantian connecting rod pada mesin Gran Max 1.5 L, dan Luxio untuk produksi Maret 2018 - April 2019. Total unit yang kena program recall sejumlah 36.915.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Direktur Pemasaran PT ADM Amelia Tjandra menjelaskan angka 24 persen untuk ukuran mobil komersial dan penumpang dirasa cukup memuaskan.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">"Target kita sebenarnya 3 tahun itu 30 persen, apakah 24 persen dicapai dalam 8 bulan, bagus atau tidak? Sangat bagus. Saya bisa katakan program recall untuk gran max ini luar biasa hasilnya kami juga tidak duga hasilnya akan secepat ini. 24 persen bisa dicapai dalam periode 8 bulan," ujar Amel saat konferensi virtual, Jumat (17/7/2020).</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Dalam kesempatan yang sama, Division Head Marketing &amp; CR PT AI-DSO, Hendrayadi Lastiyoso mengatakan Covid-19 juga membuat percepatan recall Luxio dan Gran Max sedikit terhambat. Sebab banyak operasional bengkel mengurangi kapasitas dan waktu pelayanan untuk konsumen.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">"Ini kan baru jalan 6-7 bulan apalagi di bulan Maret-Juni terkendala dengan adanya Covid-19. Sehingga bengkel-bengkel PSBB itu kan kita juga tutup," tutur Hendra.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Head Product Improvement/ EDER Dept Technical Service Division PT&nbsp;<a href="https://www.detik.com/tag/astra-daihatsu-motor" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Astra Daihatsu Motor</a>, Bambang Supriyadi menjelaskan selain Covid-19 terdapat beberapa hal lain yang menghambat penyelesaian perbaikan connecting rod.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">"Kendalanya, bahwa kalau dilihat yang terkendala khususnya di luar Jawa, bahwa bengkel jauh dan banyak konsumen yang belum tau mengenai perbaikan ini. Ini kita tetap berkomunikasi, berusaha untuk sedekat mungkin dengan pelanggan kita untuk melakukan perbaikan ini," kata dia.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">"Beberapa konsumen banyak juga yang sudah janjian atau booking namun tidak jadi datang. Ini kita himbau, segera melakukan perbaikan, pemeriksaan untuk memastikan bahwa kendaraan yang kita pakai tetap dalam kondisi prima," pungkas Bambang.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Pada penggantian komponen ini, pelanggan tidak akan dikenakan biaya apapun, alias gratis, estimasi pengerjaan bakal dilakukan selama 14 jam. Selain itu, pelanggan juga akan mendapat kompensasi berupa voucher paket ganti oli mesin gratis untuk service berikutnya bagi yang berpartisipasi dalam program ini.</p>', '2020-07-21', '454f183245234ab69517b0c115b9cbae.jpg'),
(8, 'Nissan Magnite Siap Tantang Rocky-Raize, Wajahnya Mirip Datsun Rangga Rahadiansyah ', '<p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; display: inline; font-family: helvetica, arial, sans-serif;">Nissan akhirnya memperkenalkan wajah SUV mungil terbarunya. SUV bernama <a href="https://www.detik.com/tag/nissan-magnite" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Nissan Magnite</a> itu hadir dengan wajah yang mirip Datsun.</p><p style="box-sizing: content-box; margin: 20px 0px; font-family: helvetica, arial, sans-serif;"><a href="https://www.detik.com/tag/nissan-magnite" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Nissan Magnite</a> yang masih menjadi mobil konsep melakoni debut globalnya. Nissan merilis foto-foto Nissan Magnite, SUV mungil yang bakal menantang Daihatsu Rocky dan Toyota Raize.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Di bagian depan, Nissan Magnite mendapatkan grille berbentuk trapesium. Grille trapesium pada Nissan Magnite itu mengingatkan kita kepada jajaran mobil-mobil Datsun yang memiliki grille serupa.</p><div class="clearfix" style="box-sizing: content-box; padding: 0px; font-family: helvetica, arial, sans-serif; clear: both !important; float: none !important; height: 0px !important;"></div><div class="parallax_detail parallaxB" style="box-sizing: content-box; font-family: helvetica, arial, sans-serif; margin: 0px auto; position: relative;"><div class="parallax_abs" style="box-sizing: content-box; width: 430px;"><div class="parallax_fix" style="box-sizing: content-box; width: 430px;"><div class="parallax_ads" style="box-sizing: content-box; width: 430px;"></div></div></div></div><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Dari desainnya, sepertinya konsep Nissan Magnite ini bakal dibekali lampu LED. Ada juga lampu DRL yang didesain seperti bumerang.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Ukiran pada kap mesinnya membuat <a href="https://www.detik.com/tag/nissan-magnite" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s; background-color: rgb(255, 255, 255);">Nissan Magnite</a> tampak kekar. Di bagian bawah, terdapat semacam skid plate yang membuat tampilan mobil ini menjadi lebih gagah.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Beralih ke bagian samping, Nissan telah merancang mobil ini dengan menonjolkan kesan sporty. Dari samping akan terlihat efek mengambang atau floating roof. Di atapnya juga sudah dilengkapi dengan roofrail.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Kesan kekar juga digambarkan pada over-fender berkelir hitam yang cukup tebal. Ditambah ground clearance yang terlihat cukup tinggi.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Desain bagian belakang tampak berbeda dengan mobil-mobil Nissan sebelumnya. Kesan kekar ditonjolkan dari bumper hitam dengan sisipan silver pada skid plate. Desain lampu belakangnya terlihat keren dengan teknologi LED. Ditambah spoiler hitam yang menambah kesan sporty pada mobil ini.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Nissan Magnite bakal menggunkan platform CMF-A milik aliansi Renault-Nissan, evolusi dari platform Renault Kwid dan Triber. Sementara mesin di balik kapnya belum terungkap. Namun kemungkinan mobil ini bakal menggendong mesin 1.000 cc tiga silinder bertenaga 72 bhp atau mesin 1.000 cc turbo bertenaga 95 bhp.</p><p style="box-sizing: content-box; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: helvetica, arial, sans-serif;">Nissan juga belum menginformasikan tanggal peluncuran konsep <a href="https://www.detik.com/tag/nissan-magnite" style="box-sizing: content-box; color: rgb(168, 0, 12); transition: all 200ms linear 0s;">Nissan Magnite</a> ini. Kemungkinan mobil ini bakal meluncur tahun depan.</p>', '2020-07-21', '4d7c40d138c0e758775ab47594ee7e09.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_contact`
--

CREATE TABLE IF NOT EXISTS `tb_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_fb` varchar(255) NOT NULL,
  `contact_nohp` varchar(255) NOT NULL,
  `contact_instagram` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_contact`
--

INSERT INTO `tb_contact` (`contact_id`, `contact_fb`, `contact_nohp`, `contact_instagram`) VALUES
(1, 'https://www.facebook.com/irpansuzukipadang/', '6281374240720', 'https://www.instagram.com/irpansuzukipadang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_harga`
--

CREATE TABLE IF NOT EXISTS `tb_harga` (
  `harga_id` int(11) NOT NULL,
  `harga_gambar` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_harga`
--

INSERT INTO `tb_harga` (`harga_id`, `harga_gambar`) VALUES
(1, '55b57cef02a259536ce833350f54bef3.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_headline`
--

CREATE TABLE IF NOT EXISTS `tb_headline` (
  `headline_id` int(11) NOT NULL,
  `headline_tag` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_headline`
--

INSERT INTO `tb_headline` (`headline_id`, `headline_tag`) VALUES
(1, '<h1 style="font-size: 40px; color: rgb(0, 0, 0); font-family: SuzukiPRO, sans-serif; text-align: center;"><span style="font-family: Arial;">Temukan Mobil Suzuki Yang Tepat Untuk Anda!</span></h1><h3 style="line-height: 30px; color: rgb(0, 0, 0); font-size: 30px; text-align: center; margin-top: 50px !important;">Temukan Berbagai Mobil Pilihan Suzuki Yang Di Rancang Khusus Dengan Persisi Melalui Teknologi Modern Dan Desain Stylish Gaya Anda.</h3><h2 class="mt-50" style="font-size: 30px; font-family: SuzukiPROHeadline, Arial, Helvetica, sans-serif; line-height: 30px; color: rgb(0, 0, 0); text-align: center; margin-top: 50px !important;"><span style="font-family: Arial;">Berkendara bukan hanya sebuah perjalanan, namun cerita dan kebanggaan.</span></h2>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_des` text NOT NULL,
  `produk_harga` int(11) DEFAULT NULL,
  `produk_gambar` text NOT NULL,
  `produk_brosur` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `produk_nama`, `produk_des`, `produk_harga`, `produk_gambar`, `produk_brosur`) VALUES
(11, 'Suzuki XL-7', '<p><span style="color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Suzuki XL7 hadir dengan tampilan maskulin, tangguh dan berkarakter. Desain modern SUV 7-Seater memberikan kebanggaan dan kepercayaan bagi penggunanya. Dilengkapi dengan fitur canggih semakin membuat XL7 menjadi SUV yang luar biasa di kelasnya</span><br></p>', 0, 'a88f1556836f35ecb11f7b4ff8771383.png', '45980c6e439967b389e4e0b1f34bcd22.pdf'),
(12, 'New Baleno', '<h1 style="margin: 20px 0px 15px; font-size: 36px; font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); text-align: justify; background-color: rgb(247, 247, 247);">Suzuki New Baleno</h1><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">The Complete Hatchback</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Tampil berkelas bersama New Baleno dengan desain terbaru yang begitu menawan di setiap sisinya. Dilengkapi fitur terbaru menjadikannya hatchback yang lengkap dan berkelas membuat aktivitas berkendara Anda semakin dinamis.&nbsp;<span style="font-weight: 700;">New Baleno, Gear to Define!</span></p>', 0, 'c62fdc706c0fbd1394149a0544bb4d48.png', '1afba3fa2cc4f70ac1f8b2bf388b8f3a.pdf'),
(13, 'Karimun Wagon R', '<h1 style="margin: 20px 0px 15px; font-size: 36px; font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); text-align: justify; background-color: rgb(247, 247, 247);">Karimun Wagon R GS</h1><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Mobil SUPER* Untuk Semua</p><h2 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247);">Karimun Wagon R GS Mobil S.U.P.E.R</h2><h3 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);">Spacious</h3><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Interior dengan headroom dan legroom yang lega (5 penumpang), kursi belakang dapat dilipat menambah kapasitas bagasi yang semakin luas.</p><h3 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);">Useful</h3><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Posisi pengemudi tinggi, pandangan lebih luas dan nyaman. Dirancang untuk memudahkan keluar/masuk penumpang.</p><h3 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);">Practical</h3><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Under seat tray yang bisa dibawa, Dual Cup Holder &amp; Rear Cup Holder untuk menyimpan botol ukuran 660ml, 11 kompartemen multifungsi dan ergonomis.</p><h3 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);">Efficient</h3><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Mesin K10B &amp; DOHC, Multi Point Injection, Penggerak Roda Depan, Metal Timing Chain, Intake Manifold plastik.</p><h3 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);">Reasonable</h3><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Harga terjangkau, jaringan pelayanan &amp; penjualan tersebar di mana-mana.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);"><br></p>', 0, 'b029f67bd5e4e994bc57bca7752ed260.jpg', '9b751b08a8479127261edb0d1dfcaac3.pdf'),
(14, 'New Ignis', '<h2 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247);">GEAR TO IGNITE</h2><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Nikmati sensasi baru berkendara untuk seluruh eksplorasi Anda dengan NEW IGNIS, The New Breed of Urban SUV. Hadirkan konsep semakin stylish dan penuh petualangan, jadikan NEW IGNIS Urban SUV paling bergaya di kelasnya!</p>', 0, '2f94c5491c6a850cc9a4bbf0f8f9292b.png', '0a4224bd9900ccd239a1b2ad20f46c50.pdf'),
(15, 'New Apv Luxury', '<h2 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247);">Semakin Berkelas</h2><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Suzuki New APV Luxury dengan desain dan fitur istimewa menghadirkan indahnya kenyamanan dalam kemewahan untuk Anda dan keluarga. Desain baru pada eksterior dan interiornya berkesan elegan dengan beragam fungsi, kenyamanan serta kemewahan yang berpadu sangat indah menjadikan APV New Luxury tak lekang oleh waktu.</p>', 0, '8f2848816cb288abb5374fe32db3d9e3.jpg', '9434dcc6420aba40a5c9204938d4a795.pdf'),
(16, 'All New Ertiga', '<p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">KAMI PERCAYA BERKENDARA BUKAN HANYA SEBUAH PERJALANAN.<br>BERSAMA KELUARGA, BANYAK CERITA DAN KEHANGATAN TERCIPTA DARI SEBUAH PERJALANAN.</p><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Rasakan pengalaman menyenangkan bersama orang-orang tercinta<br>dengan kendaraan yang mampu memberikan kenyamanan,<br>performa irit dan bertenaga, serta kebanggaan memilikinya.</p>', 0, '781db292bad74f10b7478f81b1134cdc.jpg', 'a61f6f9b08238828a9cb0f3031628db4.pdf'),
(17, 'New Carry Pick Up', '<p><span style="color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Bodi Mobil Tangguh. Bodi kuat dan tangguh dalam berbagai kondisi jalan, dilengkapi dengan pelindung belakang kabin.</span><br></p>', 0, '4086657be70b2c1651786c884f13d786.jpg', 'd39190d0250bf37a59367e3bbd250119.pdf'),
(18, 'ALL NEW ERTIGA SPORT', '<h2 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247);">All New Ertiga Suzuki Sport,&nbsp;mobil keluarga terbaru untuk Anda&nbsp;yang berjiwa sporty.</h2><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Gaya hidup Anda semakin istimewa dengan desain yang memberikan kebanggaan, kenyamanan, dan keamanan.</p>', 0, '7a24bbdcad27607bad6c1a6ad9c749ba.jpg', '7b1a8d4e682d4a0d7bb15a1d91ec8330.pdf'),
(20, 'New SX4 S-CROSS', '<h2 style="font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247); font-style: italic;">PERPADUAN&nbsp;<span style="font-weight: 700;">KENYAMANAN<br>&amp; KETANGGUHAN</span></h2><p style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);">Hidup Anda kini semakin lengkap dengan kehadiran crossover premium terbaru yang memadukan kepuasan berkendara khas sedan serta ketangguhan SUV. New SX4 S-CROSS tampil lebih gagah dengan desain eksterior baru yang solid tanpa meninggalkan kesan premium yang selama ini telah hadir. Gear to explore!</p>', 0, '9656480c1440717e4c4a4f557015862b.jpg', '4a4ac1a0627d8785a82bc939de70ef7c.pdf'),
(22, 'New Jimmy', '<p><span style="color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(238, 238, 238);">Membawa Anda ke mana pun Anda ingin pergi dengan kelincahan yang tak tertandingi dan torsi yang kuat ketika Anda membutuhkannya.</span><br></p>', 0, '24bf57f4f01bba81fa94d7959c39704d.jpg', '21a570ac338e708c98b8f0b21d8a2d02.pdf'),
(23, 'APV Arena', '<p><span style="font-family: SuzukiPRO, sans-serif; font-size: 15px;">Apapun bisa Anda lakukan bersama APV Arena, mulai dari menyenangkan istri berbelanja, memanjakan anak-anak ke tempat rekreasi, liburan bersama keluarga besar hingga mengembangkan bisnis dan usaha. Berkendara terasa lebih nyaman dan aman.</span><br></p>', 0, 'f70146b1ed4fcc6d043d59adfb5c2107.jpg', '5fbd71f3fd29ad587b055296567416a1.pdf'),
(24, 'New Carry Luxury', '<p><span style="font-family: SuzukiPRO, sans-serif; font-size: 15px;">Telah hadir Suzuki New Carry Luxury!&nbsp;</span><span style="font-family: SuzukiPRO, sans-serif; font-size: 15px;">Kini dengan sentuhan krom serta teruji kekuatannya&nbsp;</span><span style="font-family: SuzukiPRO, sans-serif; font-size: 15px;">untuk muatan banyak, penggunaan irit dan perwatan hemat.&nbsp;</span><span style="font-family: SuzukiPRO, sans-serif; font-size: 15px;">Rejeki makin mantep pakai Suzuki New Carry Luxury!</span><br></p>', 0, '35b4cafa314f78e2a2cf01cb947bc438.png', '86e5d7e8cdcbfb342d7aa27824fce4e3.pdf'),
(25, 'Karimun Wagon R GS', '<p><span style="font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: center;">Karimun Wagon R dengan mesin generasi baru semakin efisien dan bertenaga,&nbsp;</span><span style="font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: center;">menjadikannya kendaraan favorit keluarga.</span><br></p>', 0, '38d5474a5cd959dbdc6bccff88c9f258.jpg', '4c861dcd8e5df1394a7ccffbc440fcf9.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE IF NOT EXISTS `tb_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`slider_id`, `slider_gambar`) VALUES
(8, 'd2a86e2094bd55a8bc3f2dbeddad1b4e.png'),
(9, 'd1160ec99056e3330fe8e84015d562a6.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indexes for table `tb_contact`
--
ALTER TABLE `tb_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tb_harga`
--
ALTER TABLE `tb_harga`
  ADD PRIMARY KEY (`harga_id`);

--
-- Indexes for table `tb_headline`
--
ALTER TABLE `tb_headline`
  ADD PRIMARY KEY (`headline_id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_harga`
--
ALTER TABLE `tb_harga`
  MODIFY `harga_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_headline`
--
ALTER TABLE `tb_headline`
  MODIFY `headline_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
db_profil_suzuki