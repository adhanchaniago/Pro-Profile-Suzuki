-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2020 at 10:43 AM
-- Server version: 10.1.46-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suzf5611_irpan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_username`, `admin_password`, `admin_nama`) VALUES
(1, 'admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `berita_id` int(11) NOT NULL,
  `berita_judul` varchar(255) NOT NULL,
  `berita_isi` text NOT NULL,
  `berita_post` varchar(255) NOT NULL,
  `berita_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`berita_id`, `berita_judul`, `berita_isi`, `berita_post`, `berita_gambar`) VALUES
(3, 'Gebyar September 2020', '<h2 style=\"font-size: 28px; color: rgb(0, 0, 0); font-family: SuzukiPRO, sans-serif;\">Program Home Test Drive, Home Service & Pickup Service dapat Anda dapatkan dengan cara menghubungi nomor telepon Halo Suzuki berikut 0813-7424-0720 (Bebas 24 Jam Sumbar). Syarat & Ketentuan Berlaku.</h2>', '2020-09-15', '668a79660f163b74262047ae7ed55f06.jpeg'),
(5, 'PROGRAM EXTRA CASHBACK AUTO VALUE DIPERPANJANG', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><strong>Jakarta, </strong><strong>3 Agustus 2020</strong> – Pada periode Juni sampai Juli 2020, Suzuki memberikan <em>extra cashback</em> hingga Rp4 Juta kepada calon pembeli XL7, All New Ertiga maupun SX4 S-Cross yang melakukan tukar tambah <em>(trade-in)</em> di Auto Value. Program ini mendapat sambutan yang baik dari masyarakat; sampai dengan Juli 2020 lebih dari 110 konsumen sudah diproses permintaan tukar tambahnya oleh Auto Value di Jakarta dan Surabaya. Merespons besarnya minat calon pembeli Suzuki untuk melakukan tukar tambah, <strong>program <em>extra cashback </em>ini diperpanjang sampai Agustus 2020</strong>.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">“<em>Program extra cashback di Jabodetabek serta Surabaya dan sekitarnya diperpanjang sampai 31 Agustus. Masih ada kesempatan untuk mendapatkan extra cashback hingga 4 juta rupiah untuk setiap pembelian XL7, All New Ertiga atau SX4 S-Cross dengan cara melakukan tukar tambah di Auto Value. Extra Cashback ini adalah keuntungan tambahan bagi pelanggan di luar program reguler yang ada di tiap daerah,” </em>jelas <strong>Hendro Kaligis, Head of Business Development PT Suzuki Indomobil Sales</strong>.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px;\"><img src=\"https://www.suzuki.co.id/uploads/image/Suzuki_Auto_Value_4.jpg\" alt=\"\" width=\"337\" height=\"227\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Berdasarkan data dari mitra Auto Value, sepertiga calon pelanggan Suzuki yang berminat melakukan tukar tambah adalah pemilik mobil dari merk yang berbeda. Hal tersebut tidak menjadi masalah karena Auto Value menerima semua merk kendaraan <em>(passenger car)</em> dengan tahun produksi 2011–2019. Untuk wilayah Jabodetabek, mobil lama harus berpelat nomor B, sedangkan untuk wilayah Surabaya dan sekitarnya, mobil lama harus berpelat nomor L, W, N atau S.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">“<em>Kami ingin program ini bisa dirasakan lebih banyak pelanggan, untuk itu kami perluas area cakupannya. Selain itu, kami juga minta seluruh mitra Auto Value untuk menerapkan protokol kesehatan dengan ketat. Tim Auto Value yang melakukan penilaian kendaraan adalah anggota yang sehat, menggunakan masker dan hand sanitizer. Kenyamanan dan kesehatan bersama adalah prioritas kami,”</em> lanjut Hendro Kaligis.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Untuk mengikuti program dari Auto Value ini, calon pelanggan yang hendak melakukan tukar tambah dapat menghubungi <em>showroom</em> Suzuki terdekat atau mengakses website Auto Value di <a href=\"http://www.autovalue.co.id/\" style=\"color: blue;\">www.AutoValue.co.id</a>. Selanjutnya, tim Auto Value akan membuat janji untuk dapat melakukan pengecekan dan penilain mobil lama secara langsung; bisa di mana saja sesuai dengan permintaan pelanggan.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Auto Value sendiri merupakan layanan jual beli mobil bekas resmi dari Suzuki Indonesia. Semua proses dilakukan secara profesional, transparan, dan sesuai protokol kesehatan.</p>', '2020-09-15', '84b36e23f6db0c3d69e564b0ffaaaf00.jpeg'),
(6, 'RAYAKAN KEMERDEKAAN RI, SUZUKI JOR-JORAN BERIKAN BANYAK PROMO', '<div><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><strong>Jakarta, 8 Agustus 2020</strong>&nbsp;– Untuk merayakan ulang tahun Republik Indonesia ke-75 sekaligus memperingati 50 tahun kiprah Suzuki di Tanah Air,&nbsp;<strong>PT Suzuki Indomobil Sales (SIS)</strong>&nbsp;memberikan banyak promosi selama bulan Agustus 2020 dalam&nbsp;<strong>program Midyear Festival</strong>. Tak tanggung-tanggung, sebanyak 7 model mobil Suzuki ikut serta dalam program ini. Setiap pembelian salah satu dari ke-7 model tersebut, konsumen berhak mendapatkan hadiah langsung disamping program pilihan lainnya seperti DP dan bunga rendah serta paket cicilan menarik.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><em>“Tahun ini Indonesia dan Suzuki sama-sama memperingati ulang tahun yang istimewa. Indonesia berumur 3/4 abad, sementara Suzuki sudah setengah abad hadir di Indonesia. Di momen ini, kami ingin memberikan kado yang juga istimewa untuk konsumen setia Suzuki berupa promo hadiah langsung seperti gadget keren, emas, atau sepeda motor. Selain itu, konsumen juga masih bisa mengikuti program lain mulai dari bunga 0%, DP rendah, sampai cicilan yang ringan,”&nbsp;</em>terang&nbsp;<strong>Donny Saputra, 4W Marketing Director PT SIS.</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Hadiah langsung dan promo tambahan yang bisa didapatkan konsumen berbeda-beda untuk setiap pembelian unit mobil. Untuk model andalan seperti XL7, konsumen bisa langsung membawa pulang iPhone 11 64 GB atau iPad Pro Gen 3 wifi + cell 64 GB tergantung tipe mobil. Konsumen juga bisa mendapatkan paket bunga ringan dan test drive berhadiah. Sedangkan untuk All New Ertiga semua tipe, hadiah langsungnya berupa Macbook 12 inchi 256 GB dan program pilihan berupa paket bunga ringan. Khusus untuk pembelian XL7 dan All New Ertiga selama Agustus, Suzuki memberikan asuransi gratis selama 1 tahun.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Model berikutnya adalah Karimun Wagon R. Setiap pembelian Karimun Wagon R tipe GL, konsumen berhak mendapatkan hadiah langsung Sony Smart LED TV 4K Ultra HD 43 inchi. Untuk New Baleno semua tipe, hadiah yang disiapkan adalah iPhone XS Max 64 GB. Sedangkan konsumen yang membeli New Ignis tipe apa saja, akan langsung menerima logam mulia dan ada pilihan program angsuran ringan. Begitupun dengan model lainnya, yaitu SX4 S-Cross, konsumen bisa langsung membawa pulang Sony Smart LED TV 4K Ultra HD 55 inchi dan ada pilihan program angsuran ringan atau bunga 0%.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Terakhir, Suzuki juga memberikan kado istimewa untuk para pelaku usaha yang menggunakan New Carry Pick Up. Untuk membantu mengembangkan usaha, Suzuki menyiapkan promo paket cicilan ringan dan DP rendah untuk pembelian New Carry Pick-Up. Tak hanya itu, konsumen juga berkesempatan mendapatkan hadiah langsung sepeda motor All New Satria F150 atau GSX-S150 Keyless tergantung tipe mobil.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><em>“Melalui program promo dan berbagai keringanan untuk membeli mobil-mobil Suzuki, kami harap dapat memberikan semangat bagi konsumen dalam menjalani adaptasi kebiasaan baru, seperti semangat para pahlawan memerdekakan Indonesia dahulu. Usia 50 tahun menjadi momentum bagi kami untuk terus fokus berkontribusi menyediakan&nbsp;</em><em>produk</em><em>-produk</em>&nbsp;<em>berkualitas,</em>&nbsp;<em>sesuai kebutuhan, dan bermanfaat bagi konsumen</em><em>,”</em>&nbsp;tutup Donny.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Untuk mengetahui informasi lebih lanjut mengenai program promosi yang berlangsung pada bulan Agustus ini, konsumen dapat menghubungi diler Suzuki terdekat atau mengunjungi website dan media sosial resmi Suzuki.</p></div>', '2020-08-21', 'b68b38d14815d85588041c0a77877ab5.jpg'),
(7, 'SUZUKI XL7, MOBIL TANGGUH PILIHAN MASYARAKAT INDONESIA', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><strong>Jakarta,&nbsp;</strong><strong>10</strong>&nbsp;<strong>Agustus</strong><strong>&nbsp;2020</strong>&nbsp;– Melewati semester pertama tahun 2020, tren industri otomotif mulai terlihat. Salah satunya adalah minat konsumen terhadap Medium SUV yang mencapai 16,2% dari total penjualan mobil selama Januari-Juni 2020. Angka ini meningkat dari periode yang sama tahun lalu sebesar 12,4%. Hal ini didukung oleh produk baru di segmen tersebut, salah satunya Suzuki XL7 yang berhasil menarik minat konsumen.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><em>“Saat ini masyarakat membutuhkan mobil yang bisa menemani aktivitas ke berbagai medan, tapi tetap dengan menerapkan protokol kesehatan. Suzuki memiliki XL7 untuk masyarakat Indonesia. Extra Ordinary SUV ini memiliki kabin lega sehingga maksimal menjaga jarak di dalam mobil, kompartemen banyak untuk menyimpan berbagai peralatan, serta fitur unggulan seperti Smart E-Mirror. Tidak heran penjualan wholesales XL7&nbsp;</em><em>di bulan Juni&nbsp;</em><em>2020&nbsp;</em><em>meningkat&nbsp;</em><em>cukup pesat hingga 107</em><em>,7</em><em>%&nbsp;</em><em>dan berkontribusi kepada penjualan total Suzuki di bulan Juni sebesar 13,4%</em><em>,”</em>&nbsp;terang&nbsp;<strong>Donny Saputra, 4W Marketing Director PT SIS.</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Selain kabin dan interior yang menunjang protokol kesehatan, tampilan XL7 yang gagah juga menjadi alasan konsumen memilih XL7. Tipe XL7 yang saat ini paling diminati adalah varian BETA sebesar 49%, lalu varian ALPHA sebesar 42%. Mengenai pilhan warna untuk&nbsp;<em>single tone</em>, permintaan warna pelanggan didominasi oleh&nbsp;<em>Snow White</em>&nbsp;sebesar 34% dan&nbsp;<em>Cool Black Metallic</em>&nbsp;27%. Sedangkan untuk warna&nbsp;<em>dual tone</em>, yang paling banyak diminati konsumen adalah warna utama XL7 ALPHA yaitu&nbsp;<em>Rising Orange + Black</em>&nbsp;dengan persentase 13% dari seluruh penjualan XL7. Angka ini turut berkontribusi terhadap lebih dari 13% penjualan mobil penumpang Suzuki dengan warna-warna terang (biru, oranye, merah) di paruh pertama tahun 2020. Hal ini menunjukkan tren konsumen yang mencari alternatif warna mobil yang lebih segar, berani, dan mampu merepresentasikan karakter penggunanya seperti XL7.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Khusus untuk tipe tertinggi XL7, yaitu ALPHA, memiliki&nbsp;<em>Smart E-Mirror</em>&nbsp;pertama di kelasnya.&nbsp;<em>Smart E-Mirror&nbsp;</em>berfungsi sebagai kaca spion digital yang dibekali dua kamera yang terletak di spion tengah dan di belakang mobil. Selain berfungsi layaknya&nbsp;<em>dashcam,&nbsp;</em>fitur canggih ini juga dapat merekam aktivitas mobil, menangkap momen tak terduga, serta meningkatkan kemampuan berkendara dan memarkir kendaraan. Semua keunggulan ini berhasil menyita perhatian keluarga Indonesia yang membutuhkan mobil untuk memulai kembali aktivitas di masa transisi. &nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Suzuki XL7 juga dilengkapi&nbsp;<em>Keyless Push Start-Stop Button,</em><em>&nbsp;Ventilated Cup Holders,</em><em>&nbsp;AC Digital Auto Climate with Heater&nbsp;</em>serta<em>&nbsp;Power Outlet&nbsp;</em>hingga baris ketiga. Selain itu fitur keselamatan menjadi salah satu fokus Suzuki seperti adanya&nbsp;<em>Pedestrian Protection</em>&nbsp;dan&nbsp;<em>Child Proof Door Lock</em>. Fitur-fitur yang dihadirkan XL7 memang ditujukan untuk dapat menarik konsumen dewasa muda baik yang sudah berkeluarga ataupun belum.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><em>“Peningkatan penjualan XL7 membuktikan bahwa model andalan Suzuki ini semakin diminati konsumen, terlebih bagi masyarakat membutuhkan kendaraan yang tangguh untuk beraktivitas kembali bersama keluarga dengan tetap menjaga protokol kesehatan. Dan XL7 adalah pilihan tepat. Kami berterima kasih atas kepercayaan konsumen yang telah memilih XL7. Hal ini memotivasi kami untuk terus memenuhi kebutuhan konsumen akan produk dan layanan yang berkualitas dan sesuai kebutuhan,”&nbsp;</em>tutup Donny.</p>', '2020-08-21', 'c2c4724d67d35eb745a84e5a5d926221.png'),
(8, 'EKSPOR SUZUKI XL7 SUV TERUS MENINGKAT Produk Lokal yang Diminati Masyarakat Global', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><strong>Jakarta,&nbsp;</strong><strong>18</strong><strong>&nbsp;Agustus 2020</strong>&nbsp;– Sebagai produk terbaru andalan&nbsp;<strong>PT Suzuki Indomobil&nbsp;</strong><strong>Motor</strong>&nbsp;<strong>(SIM)</strong>&nbsp;yang diproduksi di Indonesia, XL7 tidak hanya menjadi primadona di pasar domestik, namun juga pasar internasional. Hal ini terlihat dari tingginya permintaan ekspor XL7 dari berbagai negara. Di bulan Juli,&nbsp;<strong><em>The Extra Ordinary SUV</em></strong>&nbsp;ini terjual sebanyak 2.694 unit atau meningkat 541% jika dibandingkan bulan sebelumnya..</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><em>“Lonjakan ekspor di masa pandemi ini membangun optimisme kami bahwa ekonomi di banyak negara mulai pulih. Timing ini akan kami gunakan untuk terus menggenjot volume ekspor XL7, karena produk ini cocok dan disukai konsumen internasional. Terbukti di bulan Juli XL7 menjadi model ekspor Suzuki nomor 1. Bahkan sejak diluncurkan di Indonesia pada bulan Februari, XL7 telah berkontribusi&nbsp;</em><em>22,2% dari&nbsp;</em><em>total</em><em>&nbsp;ekspor Suzuki</em><em>,”</em>&nbsp;terang&nbsp;<strong>Aris Yuliyantoro, Assistant Dept. Head Production Planning Control PT SIM</strong>.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Saat ini, XL7 yang memiliki Tingkat Kandungan Dalam Negeri (TKDN) atau komponen lokal sebesar 85%, berhasil dipasarkan ke 20 negara lebih dan telah diluncurkan di beberapa negara seperti Barbados, Trinidad &amp; Tobago, Vietnam, dan Filipina. Bahkan, di Thailand XL7 diluncurkan di acara otomotif paling bergengsi Bangkok International Motor Show 2020. Jumlah tujuan negara ekspor pun akan terus ditingkatkan seiring dengan membaiknya kondisi perekonomian.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Tingginya minat konsumen internasional terhadap XL7 karena produk tersebut memiliki kualitas yang tinggi dan diproduksi menggunakan teknologi paling mutakhir serta fasilitas berstandar internasional di pabrik Cikarang, Bekasi. Sehingga dengan cepat menjadi primadona baru konsumen global yang menyukai kendaraan untuk berpetualang bersama orang-orang tercinta.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><em>“</em><em>Peningkatan jumlah unit ekspor XL7 ini juga menandakan Indonesia berhasil menjadi pilar ke-3 Suzuki Global</em>&nbsp;<em>serta&nbsp;</em><em>menjadi basis produksi dan ekspor XL7</em><em>. Sebagai basis produksi Suzuki terbesar ke-3 di dunia, kami akan terus menghadirkan produk berkualitas untuk para pecinta Suzuki</em><em>&nbsp;di Indonesia maupun internasional,”</em>&nbsp;tutup Aris.</p>', '2020-08-21', 'b45a2dbd54cc12c10acf1a4a4047866f.png'),
(9, 'KINI BELI SUKU CADANG MOBIL SUZUKI SEMAKIN MUDAH DI APLIKASI MY SUZUKI', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><strong>Jakarta,&nbsp;</strong><strong>4 September</strong><strong>&nbsp;2020</strong>&nbsp;– Sejak diluncurkan November 2018, aplikasi My Suzuki telah melayani kebutuhan pembelian suku cadang asli untuk para pengguna sepeda motor Suzuki di seluruh Indonesia secara daring. Kini, layanan My Suzuki telah ditingkatkan dengan adanya fitur pembelian suku cadang asli untuk mobil. Hal ini merupakan upaya Suzuki untuk memberikan kemudahan kepada konsumen setia.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Menurut&nbsp;<strong>Sparepart</strong>&nbsp;<strong>Dept. Head PT Suzuki Indomobil Motor</strong><strong>&nbsp;(SIM), Christiana Yuwantie</strong>,&nbsp;<em>“Pola konsumsi masyarakat yang bergeser dari konvensional ke daring, terus meningkat trennya pada saat pandemi Covid-19. Hal ini dapat dipahami sebagai respons dan kekhawatiran masyarakat terhadap kondisi saat ini. Untuk itu, dalam upaya meningkatkan pelayanan kepada konsumen sekaligus membantu memutus rantai penyebaran Covid-19, selain melayani pembelian suku cadang sepeda motor sekarang My Suzuki juga menjual suku cadang asli untuk mobil.”</em></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px;\"><em><img src=\"https://www.suzuki.co.id/uploads/image/MY_Suzuki_2.jpg\" alt=\"\" width=\"337\" height=\"227\" style=\"display: block; margin-left: auto; margin-right: auto;\"></em></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Para pengguna mobil Suzuki bisa membeli semua jenis suku cadang asli di aplikasi My Suzuki, baik untuk suku cadang mesin, transmisi, kelistrikan, suspensi, dan bodi. Selain itu, My Suzuki juga melayani pembelian oli dan&nbsp;<em>chemical</em>&nbsp;Suzuki. Untuk memastikan pesanan suku cadang atau membutuhkan informasi lain, konsumen bisa memanfaatkan menu&nbsp;<em>chat</em>&nbsp;di aplikasi My Suzuki.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Suku cadang yang sudah dibeli nantinya bisa dikirimkan atau diambil dari diler-diler terdekat, dan khusus bagi konsumen yang memilih untuk mengambil langsung suku cadang ke diler, tidak akan dikenakan ongkos kirim. Saat ini, diler-diler yang melayani pengiriman suku cadang masih berada di area Jabodetabek, Sumatera, Jawa Barat, Jawa Tengah, Jawa Timur, dan Bali. Namun konsumen tidak perlu khawatir, karena pengiriman meliputi ke seluruh Indonesia dengan jaminan sistem 1 harga. Jadi, tidak akan ada perbedaan harga suku cadang dari Sabang sampai Merauke.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\"><em>“Untuk menjamin ketersediaan suku cadang mobil,&nbsp;</em><em>kami&nbsp;</em><em>selalu&nbsp;</em><em>melakukan pengecekan&nbsp;</em><em>baik di diler maupun gudang pusat</em><em>.</em>&nbsp;<em>Kami juga menjamin transaksi di aplikasi My Suzuki 100% aman dan terpercaya. Kami harap dengan adanya aplikasi My Suzuki konsumen bisa lebih mudah mendapatkan suku cadang dan tetap menjaga kesehatan dengan meminimalkan kontak langsung saat bertransaksi,”&nbsp;</em>tutup Christiana.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: justify;\">Untuk dapat menggunakan aplikasi My Suzuki, konsumen dapat mengunduh langsung dari Play Store untuk pengguna Android atau Apps Store untuk pengguna iPhone. Untuk informasi lebih lanjut, silakan kunjungi&nbsp;<a href=\"http://www.suzuki.co.id/\" style=\"color: blue;\">www.suzuki.co.id</a>&nbsp;atau menghubungi layanan Halo Suzuki di&nbsp;<strong>0800-1100-800&nbsp;</strong>(bebas pulsa 24 jam). Melalui Halo Suzuki pula, pelanggan bisa mendapatkan layanan Home Service, Pick Up Service, dan SERA (Suzuki Emergency Roadside Assistance).</p>', '2020-09-15', '8ac482fd984e5c8d8efc0f2549949299.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_contact`
--

CREATE TABLE `tb_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_fb` varchar(255) NOT NULL,
  `contact_nohp` varchar(255) NOT NULL,
  `contact_instagram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_contact`
--

INSERT INTO `tb_contact` (`contact_id`, `contact_fb`, `contact_nohp`, `contact_instagram`) VALUES
(1, 'https://www.facebook.com/irpansuzukipadang/', '6281374240720', 'https://www.instagram.com/irpansuzukipadang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_harga`
--

CREATE TABLE `tb_harga` (
  `harga_id` int(11) NOT NULL,
  `harga_gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_harga`
--

INSERT INTO `tb_harga` (`harga_id`, `harga_gambar`) VALUES
(1, '3fb415a876253f1264561f7c54e9e24f.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_headline`
--

CREATE TABLE `tb_headline` (
  `headline_id` int(11) NOT NULL,
  `headline_tag` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_headline`
--

INSERT INTO `tb_headline` (`headline_id`, `headline_tag`) VALUES
(1, '<h1 style=\"font-size: 40px; color: rgb(0, 0, 0); font-family: SuzukiPRO, sans-serif; text-align: center;\"><span style=\"font-family: Arial;\">Temukan Mobil Suzuki Yang Tepat Untuk Anda!</span></h1><h3 style=\"line-height: 30px; color: rgb(0, 0, 0); font-size: 30px; text-align: center; margin-top: 50px !important;\">Temukan Berbagai Mobil Pilihan Suzuki Yang Di Rancang Khusus Dengan Persisi Melalui Teknologi Modern Dan Desain Stylish Gaya Anda.</h3><h2 class=\"mt-50\" style=\"font-size: 30px; font-family: SuzukiPROHeadline, Arial, Helvetica, sans-serif; line-height: 30px; color: rgb(0, 0, 0); text-align: center; margin-top: 50px !important;\"><span style=\"font-family: Arial;\">Berkendara bukan hanya sebuah perjalanan, namun cerita dan kebanggaan.</span></h2>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_des` text NOT NULL,
  `produk_harga` int(11) DEFAULT NULL,
  `produk_gambar` text NOT NULL,
  `produk_brosur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`produk_id`, `produk_nama`, `produk_des`, `produk_harga`, `produk_gambar`, `produk_brosur`) VALUES
(11, 'Suzuki XL-7', '<p><span style=\"color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Suzuki XL7 hadir dengan tampilan maskulin, tangguh dan berkarakter. Desain modern SUV 7-Seater memberikan kebanggaan dan kepercayaan bagi penggunanya. Dilengkapi dengan fitur canggih semakin membuat XL7 menjadi SUV yang luar biasa di kelasnya</span><br></p>', 0, 'a88f1556836f35ecb11f7b4ff8771383.png', '45980c6e439967b389e4e0b1f34bcd22.pdf'),
(12, 'New Baleno', '<h1 style=\"margin: 20px 0px 15px; font-size: 36px; font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); text-align: justify; background-color: rgb(247, 247, 247);\">Suzuki New Baleno</h1><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">The Complete Hatchback</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Tampil berkelas bersama New Baleno dengan desain terbaru yang begitu menawan di setiap sisinya. Dilengkapi fitur terbaru menjadikannya hatchback yang lengkap dan berkelas membuat aktivitas berkendara Anda semakin dinamis.&nbsp;<span style=\"font-weight: 700;\">New Baleno, Gear to Define!</span></p>', 0, 'c62fdc706c0fbd1394149a0544bb4d48.png', '1afba3fa2cc4f70ac1f8b2bf388b8f3a.pdf'),
(13, 'Karimun Wagon R', '<h1 style=\"margin: 20px 0px 15px; font-size: 36px; font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); text-align: justify; background-color: rgb(247, 247, 247);\">Karimun Wagon R GS</h1><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Mobil SUPER* Untuk Semua</p><h2 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247);\">Karimun Wagon R GS Mobil S.U.P.E.R</h2><h3 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);\">Spacious</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Interior dengan headroom dan legroom yang lega (5 penumpang), kursi belakang dapat dilipat menambah kapasitas bagasi yang semakin luas.</p><h3 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);\">Useful</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Posisi pengemudi tinggi, pandangan lebih luas dan nyaman. Dirancang untuk memudahkan keluar/masuk penumpang.</p><h3 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);\">Practical</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Under seat tray yang bisa dibawa, Dual Cup Holder &amp; Rear Cup Holder untuk menyimpan botol ukuran 660ml, 11 kompartemen multifungsi dan ergonomis.</p><h3 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);\">Efficient</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Mesin K10B &amp; DOHC, Multi Point Injection, Penggerak Roda Depan, Metal Timing Chain, Intake Manifold plastik.</p><h3 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 24px; text-align: justify; background-color: rgb(247, 247, 247);\">Reasonable</h3><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Harga terjangkau, jaringan pelayanan &amp; penjualan tersebar di mana-mana.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\"><br></p>', 0, 'b029f67bd5e4e994bc57bca7752ed260.jpg', '9b751b08a8479127261edb0d1dfcaac3.pdf'),
(14, 'New Ignis', '<h2 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247);\">GEAR TO IGNITE</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Nikmati sensasi baru berkendara untuk seluruh eksplorasi Anda dengan NEW IGNIS, The New Breed of Urban SUV. Hadirkan konsep semakin stylish dan penuh petualangan, jadikan NEW IGNIS Urban SUV paling bergaya di kelasnya!</p>', 0, '2f94c5491c6a850cc9a4bbf0f8f9292b.png', '0a4224bd9900ccd239a1b2ad20f46c50.pdf'),
(15, 'New Apv Luxury', '<h2 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247);\">Semakin Berkelas</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Suzuki New APV Luxury dengan desain dan fitur istimewa menghadirkan indahnya kenyamanan dalam kemewahan untuk Anda dan keluarga. Desain baru pada eksterior dan interiornya berkesan elegan dengan beragam fungsi, kenyamanan serta kemewahan yang berpadu sangat indah menjadikan APV New Luxury tak lekang oleh waktu.</p>', 0, '8f2848816cb288abb5374fe32db3d9e3.jpg', '9434dcc6420aba40a5c9204938d4a795.pdf'),
(16, 'All New Ertiga', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">KAMI PERCAYA BERKENDARA BUKAN HANYA SEBUAH PERJALANAN.<br>BERSAMA KELUARGA, BANYAK CERITA DAN KEHANGATAN TERCIPTA DARI SEBUAH PERJALANAN.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Rasakan pengalaman menyenangkan bersama orang-orang tercinta<br>dengan kendaraan yang mampu memberikan kenyamanan,<br>performa irit dan bertenaga, serta kebanggaan memilikinya.</p>', 0, '781db292bad74f10b7478f81b1134cdc.jpg', 'a61f6f9b08238828a9cb0f3031628db4.pdf'),
(17, 'New Carry Pick Up', '<p><span style=\"color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Bodi Mobil Tangguh. Bodi kuat dan tangguh dalam berbagai kondisi jalan, dilengkapi dengan pelindung belakang kabin.</span><br></p>', 0, '4086657be70b2c1651786c884f13d786.jpg', 'd39190d0250bf37a59367e3bbd250119.pdf'),
(18, 'ALL NEW ERTIGA SPORT', '<h2 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247);\">All New Ertiga Suzuki Sport,&nbsp;mobil keluarga terbaru untuk Anda&nbsp;yang berjiwa sporty.</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Gaya hidup Anda semakin istimewa dengan desain yang memberikan kebanggaan, kenyamanan, dan keamanan.</p>', 0, '7a24bbdcad27607bad6c1a6ad9c749ba.jpg', '7b1a8d4e682d4a0d7bb15a1d91ec8330.pdf'),
(20, 'New SX4 S-CROSS', '<h2 style=\"font-family: Lato, &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(92, 95, 104); margin-top: 20px; margin-bottom: 15px; font-size: 30px; text-align: justify; background-color: rgb(247, 247, 247); font-style: italic;\">PERPADUAN&nbsp;<span style=\"font-weight: 700;\">KENYAMANAN<br>&amp; KETANGGUHAN</span></h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(247, 247, 247);\">Hidup Anda kini semakin lengkap dengan kehadiran crossover premium terbaru yang memadukan kepuasan berkendara khas sedan serta ketangguhan SUV. New SX4 S-CROSS tampil lebih gagah dengan desain eksterior baru yang solid tanpa meninggalkan kesan premium yang selama ini telah hadir. Gear to explore!</p>', 0, '9656480c1440717e4c4a4f557015862b.jpg', '4a4ac1a0627d8785a82bc939de70ef7c.pdf'),
(22, 'New Jimmy', '<p><span style=\"color: rgb(92, 95, 104); font-family: &quot;Open Sans&quot;, Helvetica, Arial, sans-serif; font-size: 15px; text-align: justify; background-color: rgb(238, 238, 238);\">Membawa Anda ke mana pun Anda ingin pergi dengan kelincahan yang tak tertandingi dan torsi yang kuat ketika Anda membutuhkannya.</span><br></p>', 0, '24bf57f4f01bba81fa94d7959c39704d.jpg', '21a570ac338e708c98b8f0b21d8a2d02.pdf'),
(23, 'APV Arena', '<p><span style=\"font-family: SuzukiPRO, sans-serif; font-size: 15px;\">Apapun bisa Anda lakukan bersama APV Arena, mulai dari menyenangkan istri berbelanja, memanjakan anak-anak ke tempat rekreasi, liburan bersama keluarga besar hingga mengembangkan bisnis dan usaha. Berkendara terasa lebih nyaman dan aman.</span><br></p>', 0, 'f70146b1ed4fcc6d043d59adfb5c2107.jpg', '5fbd71f3fd29ad587b055296567416a1.pdf'),
(24, 'New Carry Luxury', '<p><span style=\"font-family: SuzukiPRO, sans-serif; font-size: 15px;\">Telah hadir Suzuki New Carry Luxury!&nbsp;</span><span style=\"font-family: SuzukiPRO, sans-serif; font-size: 15px;\">Kini dengan sentuhan krom serta teruji kekuatannya&nbsp;</span><span style=\"font-family: SuzukiPRO, sans-serif; font-size: 15px;\">untuk muatan banyak, penggunaan irit dan perwatan hemat.&nbsp;</span><span style=\"font-family: SuzukiPRO, sans-serif; font-size: 15px;\">Rejeki makin mantep pakai Suzuki New Carry Luxury!</span><br></p>', 0, '35b4cafa314f78e2a2cf01cb947bc438.png', '86e5d7e8cdcbfb342d7aa27824fce4e3.pdf'),
(25, 'Karimun Wagon R GS', '<p><span style=\"font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: center;\">Karimun Wagon R dengan mesin generasi baru semakin efisien dan bertenaga,&nbsp;</span><span style=\"font-family: SuzukiPRO, sans-serif; font-size: 15px; text-align: center;\">menjadikannya kendaraan favorit keluarga.</span><br></p>', 0, '38d5474a5cd959dbdc6bccff88c9f258.jpg', '4c861dcd8e5df1394a7ccffbc440fcf9.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`slider_id`, `slider_gambar`) VALUES
(10, '20d2dc32b22a6deb8dc03c1852cc7085.jpg'),
(11, 'fb2c2d9137ce482b0bfbc5c75fe976d1.jpg'),
(12, '548880afadbe7343f8f8578a5b945632.jpg'),
(13, 'ff91bd91ab46256dfc41ecdde8d3272a.png'),
(14, 'a7186d9235b391b3b5674b9ea9598167.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_team`
--

CREATE TABLE `tb_team` (
  `team_id` int(11) NOT NULL,
  `team_nama` varchar(255) NOT NULL,
  `team_foto` varchar(255) NOT NULL,
  `team_email` varchar(255) NOT NULL,
  `team_wa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_team`
--

INSERT INTO `tb_team` (`team_id`, `team_nama`, `team_foto`, `team_email`, `team_wa`) VALUES
(5, 'Novem', '2a351df9a3c509e8e8059f71a8d643ae.jpeg', 'novem@gmail.com', '+6282382228826'),
(6, 'Nanda', '751df11dc36c660cc826de357ffbaa82.jpeg', 'nanda@gmail.com', '+6281363928822'),
(7, 'Nila', '5131b3f2e303719f59ab470e2e8eb68f.jpeg', 'nila@gmail.com', '+6281268785609'),
(8, 'Nopen Satria', '356ac2c6d3b6f53c75cd6792244c9623.jpeg', '', '081268127186'),
(9, 'Hafiizh', '7a8f2f9ffaf28053da62959f81219f00.jpeg', '', '081374610689');

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
-- Indexes for table `tb_team`
--
ALTER TABLE `tb_team`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_contact`
--
ALTER TABLE `tb_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_harga`
--
ALTER TABLE `tb_harga`
  MODIFY `harga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_headline`
--
ALTER TABLE `tb_headline`
  MODIFY `headline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_team`
--
ALTER TABLE `tb_team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
