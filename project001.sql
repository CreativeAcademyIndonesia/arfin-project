-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for project_001
CREATE DATABASE IF NOT EXISTS `project_001` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `project_001`;

-- Dumping structure for table project_001.cabang
CREATE TABLE IF NOT EXISTS `cabang` (
  `cabang_id` int(11) NOT NULL AUTO_INCREMENT,
  `cabang_nama` varchar(350) DEFAULT NULL,
  `cabang_alamat` text DEFAULT NULL,
  `cabang_notelp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cabang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.cabang: ~4 rows (approximately)
INSERT INTO `cabang` (`cabang_id`, `cabang_nama`, `cabang_alamat`, `cabang_notelp`) VALUES
	(1, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Jl. Titang', '085399077612'),
	(2, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'JL. Titang Raya', '085343871034'),
	(3, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 'JL. H. PAROJAI', '081903884328'),
	(4, 'PPS ABU BAKAR ASH-SHIDDIQ WI WUSTHA', 'JL. H. PAROJAI', '085340555196');

-- Dumping structure for table project_001.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.cache: ~0 rows (approximately)

-- Dumping structure for table project_001.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.cache_locks: ~0 rows (approximately)

-- Dumping structure for table project_001.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table project_001.jabatan
CREATE TABLE IF NOT EXISTS `jabatan` (
  `jabatan_id` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan_nama` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`jabatan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.jabatan: ~0 rows (approximately)

-- Dumping structure for table project_001.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.jobs: ~0 rows (approximately)

-- Dumping structure for table project_001.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.job_batches: ~0 rows (approximately)

-- Dumping structure for table project_001.karyawan
CREATE TABLE IF NOT EXISTS `karyawan` (
  `karyawan_id` int(11) NOT NULL AUTO_INCREMENT,
  `karyawan_nik` varchar(255) NOT NULL,
  `karyawan_nama` varchar(255) NOT NULL,
  `karyawan_cabang` varchar(255) DEFAULT NULL,
  `karyawan_email` varchar(255) NOT NULL,
  `karyawan_username` varchar(25) NOT NULL,
  `karyawan_password` varchar(35) NOT NULL,
  `karyawan_role` enum('User','Kepala Sekolah','Super Admin','Ketua Yayasan') NOT NULL DEFAULT 'User',
  `karyawan_aktif` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `karyawan_numseq` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`karyawan_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2228 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table project_001.karyawan: 41 rows
/*!40000 ALTER TABLE `karyawan` DISABLE KEYS */;
INSERT INTO `karyawan` (`karyawan_id`, `karyawan_nik`, `karyawan_nama`, `karyawan_cabang`, `karyawan_email`, `karyawan_username`, `karyawan_password`, `karyawan_role`, `karyawan_aktif`, `karyawan_numseq`) VALUES
	(56, 'US/2505-00018', 'Sukmi Susilawati, S.Pd.', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'sukmi.misk@gmail.com', 'sukmi', 'ef958ce1365f8e145359c218e0d64be7', 'User', 'Aktif', 18),
	(60, 'US/2505-00022', 'Nur Wahida, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'nurwahidaoppp@mail.com', 'nurwahida', '7606604be12fa50fb7d89439723f083f', 'User', 'Aktif', 22),
	(58, 'US/2505-00020', 'Rismawati S.Pd.I', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'rismawati211@guru.sd.belajar.id', 'rismawati', 'fe1a69f0ce9491fbe8bf373b62f099fe', 'User', 'Aktif', 20),
	(59, 'US/2505-00021', 'A. Nur Alang, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'a.nuralang95@gmail.com', 'nuralang', '6f53fc99b6e59531a88085da99668380', 'User', 'Aktif', 21),
	(54, 'US/2505-00016', 'Arifal Makmur, S.E', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Arifalmakmur83@gmail.com', 'arifal', 'dff93d88ba5b4f2594bbd3fb6e1c5a0e', 'User', 'Aktif', 16),
	(55, 'US/2505-00017', 'Subhang Halik', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'abuimam76@gmail.com', 'subhang', '576bd7e5773507f25bdec0857c35f161', 'User', 'Aktif', 17),
	(61, 'US/2505-00023', 'Hasrawati, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'hasrahasrawati4@gmail.com', 'hasrawati', 'd5f88248fe8ef23955050d1f874acbfd', 'User', 'Aktif', 23),
	(53, 'US/2505-00015', 'Admin SIMA YWIB', NULL, 'admin123@gmail.com', 'admin123', '0192023a7bbd73250516f069df18b500', 'Super Admin', 'Aktif', 15),
	(57, 'US/2505-00019', 'Siti Nurbaya, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'nurbayabulukumba91@gmail.com', 'nurbaya', 'f9bd6668440d14fdff0973d0fca9743a', 'User', 'Aktif', 19),
	(62, 'US/2505-00024', 'Al-Fiyyah Amalia, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'fiyyahalfiyyah46@gmail.com', 'amalia', '51e0a46ceb9b9f53a96281bd6b4f38e8', 'User', 'Aktif', 24),
	(63, 'US/2505-00025', 'Sukmiati, S.Pd.I', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'sukmiatI.sdit@gmail.com', 'sukmiati', '095f577abc1c6d4997df03df22a833a2', 'User', 'Aktif', 25),
	(64, 'US/2505-00026', 'Masyita, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'masyitaburhan887@gmail.com', 'masyita', '49f5a880f3b97a4f88665afcafc03c63', 'User', 'Aktif', 26),
	(65, 'US/2505-00027', 'Banriati,S.Pd.I', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'banriatispdi@guru.sd.belajar.id', 'banriati', 'db2b6bafc2acc09f5b61fb740ff8c541', 'User', 'Aktif', 27),
	(66, 'US/2505-00028', 'Nurhasana Tunnisa, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'hasanahtunnisa15@gmail.com', 'nurhasana', '47b738be93ea17b6bce9ae2ebd821974', 'User', 'Aktif', 28),
	(67, 'US/2505-00029', 'Saenab, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'saenabspd53@guru.sd.belajar.id', 'saenab', 'ddce732038b6514d08057addd422cab4', 'User', 'Aktif', 29),
	(68, 'US/2505-00030', 'Nurmiati, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'nurmi.ummu.ubay@gmail.com', 'nurmiatai', '4c7c0c7a9b3556f9d466aa3e659cbd8b', 'User', 'Aktif', 30),
	(69, 'US/2505-00031', 'Masyithah, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'masyitaita79@gmail.com', 'masyithah', 'b4af4fc69adaa99d4378d21ea3aed7c2', 'User', 'Aktif', 31),
	(70, 'US/2505-00032', 'Ichal, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'kontenbiasa714@gmail.com', 'ichal', 'f9eb81ea140569d44350f434d93751bd', 'User', 'Aktif', 32),
	(71, 'US/2505-00033', 'Fitriani, S.Pd.,Gr', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'AkifahNaila2211@gmail.com', 'fitriani', 'd62bb1ea1604301192cff3a78fd1103b', 'User', 'Aktif', 33),
	(72, 'US/2505-00034', 'Indrawati, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'indrawati62439@guru.sd.belajar.id', 'indrawati', '2b468a6d7c3094573ca7bf9e2781216d', 'User', 'Aktif', 34),
	(73, 'US/2505-00035', 'Muh. Isdamir, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'dhamirlangkhani@gmail.com', 'isdamir', '327f3c34311db313f845ab3f43d0a5c3', 'User', 'Aktif', 35),
	(74, 'US/2505-00036', 'Denil Suwedi, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'denilalbiruni@gmail.com', 'denil', 'ff3f623a4cf0382a33b86c05a21b6f28', 'User', 'Aktif', 36),
	(75, 'US/2505-00037', 'Indriani, S.Pd.,Gr', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'ndioindri@gmail.com', 'indriani', '250270a1bbe81e3cb674f6821116a016', 'User', 'Aktif', 37),
	(76, 'US/2505-00038', 'Irmayani, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'irmayani.danial@gmail.com', 'irmayani', '8234c1a3e375ec3105fdd65f6905681b', 'User', 'Aktif', 38),
	(77, 'US/2505-00039', 'Zulfikar Y, S.Pd', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'zulfikar180988@gmail.com', 'zulfikar', '994d1c236804d0a6a79e9bd55cd5d1f0', 'User', 'Aktif', 39),
	(78, 'US/2505-00040', 'Sudarman, S.Pd.,Gr', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'sudarmanabuadiba@gmail.com', 'sudarman', 'd1e7b184dc482667a68ea6fe803ea759', 'User', 'Aktif', 40),
	(79, 'US/2505-00041', 'Rusniati, S.Pd', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Rusnirusni418@gmail.com', 'rusni', '9166128115acdcd37b35b8ebc641c8c3', 'Kepala Sekolah', 'Aktif', 41),
	(80, 'US/2505-00042', 'Mutmainna. S.Sos', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'mutmainna19@guru.paud.belajari.d', 'mutmainna', 'a615caecb2e9691c40b7bca74994d01a', 'User', 'Aktif', 42),
	(81, 'US/2505-00043', 'Nurginayah, S.Pd, AUD.', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'ahmadfaqhi119@gmail.com', 'nurginayah', '65e475e40d93d38063d1a8b7ff9b0de9', 'User', 'Aktif', 43),
	(82, 'US/2505-00044', 'Sumarni S.Pd', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Spdsumarni628@gmail.com', 'sumarni', 'a5d38c37c622d428e9efb8baa7ba6fe9', 'User', 'Aktif', 44),
	(83, 'US/2505-00045', 'Andi Tanriola S.Pd', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'anditenriola798@gmail.com', 'tenriola', 'cb60d536cf6b8c2e415733d331fecc3e', 'User', 'Aktif', 45),
	(84, 'US/2505-00046', 'Nurul Ilmi. Spd.', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'nurulilmi0100@gmail.com', 'nurulilmi', '70d0bc9fbbf9a47257e7623bea22c579', 'User', 'Aktif', 46),
	(85, 'US/2505-00047', 'Sri Wahyuni S.Pd', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Sriwahyuni26082024@gmail.com', 'sriwahyuni', '6b70282373ccdf64ad073d2a37010cc8', 'User', 'Aktif', 47),
	(86, 'US/2505-00048', 'Jusman M, S.Pd.,MM.,', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'JusmanM@gmail.com', 'jusmanm', 'c5dc962874d828f37ddd5b11eff764c2', 'Kepala Sekolah', 'Aktif', 48),
	(87, 'US/2505-00049', 'Yayasan', NULL, 'yayasan@gmail.com', 'yayasanywib', 'f6cec6089689fae8789cd2e64c4eeb6a', 'Ketua Yayasan', 'Aktif', 49),
	(2222, '2222', 'admin', NULL, '', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Super Admin', 'Aktif', 0),
	(2223, 'US/2505-00050', 'Arliawan, S.Pd', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 'abu8899999@gmail.com', 'arli', '3bf554c2e89310058a8c128b99351445', 'User', 'Aktif', 50),
	(2224, 'US/2505-00051', 'Farid HP, S.Pd.I, S.H', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 'farid@gmail.com', 'farid', 'a1d12da42d4302e53d510954344ad164', 'Kepala Sekolah', 'Aktif', 51),
	(2225, 'US/2505-00052', 'Rudi B, S.Pd', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 'Rudi@gmail.com', 'rudi', '1755e8df56655122206c7c1d16b1c7e3', 'User', 'Aktif', 52),
	(2226, 'US/2505-00053', 'Arman Maulana, S.H', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 'armanmaulana7421@gmail.com', 'armanmaulana', '98b8f8e3320a378f0659123c1c6d0902', 'User', 'Aktif', 53),
	(2227, 'US/2505-00054', 'Arsyul Ikram Ar Rosyid, S.H', 'PPS ABU BAKAR ASH-SHIDDIQ WI WUSTHA', 'ArsyulIkram66@gmail.com', 'arsyul', '9c2f0029b48e9f77e8fd5a08d9a57409', 'Kepala Sekolah', 'Aktif', 54);
/*!40000 ALTER TABLE `karyawan` ENABLE KEYS */;

-- Dumping structure for table project_001.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.migrations: ~3 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1);

-- Dumping structure for table project_001.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table project_001.peminjaman
CREATE TABLE IF NOT EXISTS `peminjaman` (
  `pinjam_id` int(11) NOT NULL AUTO_INCREMENT,
  `pinjam_no` varchar(50) DEFAULT NULL,
  `pinjam_asset` int(11) DEFAULT NULL,
  `pinjam_jumlah` int(11) DEFAULT NULL,
  `pinjam_peminjam` int(11) DEFAULT NULL,
  `pinjam_cabang` varchar(350) DEFAULT NULL,
  `pinjam_tglpinjam` date DEFAULT NULL,
  `pinjam_estbalik` date NOT NULL,
  `pinjam_tglbalik` date DEFAULT NULL,
  `pinjam_keterangan` text DEFAULT NULL,
  `pinjam_status` enum('Pending','Menunggu Persetujuan','Dikembalikan','Dipinjam','Ditolak') DEFAULT 'Pending',
  `pinjam_numseq` int(11) DEFAULT NULL,
  PRIMARY KEY (`pinjam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.peminjaman: ~10 rows (approximately)
INSERT INTO `peminjaman` (`pinjam_id`, `pinjam_no`, `pinjam_asset`, `pinjam_jumlah`, `pinjam_peminjam`, `pinjam_cabang`, `pinjam_tglpinjam`, `pinjam_estbalik`, `pinjam_tglbalik`, `pinjam_keterangan`, `pinjam_status`, `pinjam_numseq`) VALUES
	(1, 'P-2505-00001', 4, NULL, 80, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-04', '2025-05-04', '2025-05-04', 'Print Laporan', 'Dikembalikan', 1),
	(2, 'P-2505-00002', 5, NULL, 83, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-04', '2025-05-06', '2025-05-07', 'Input Laporan', 'Dikembalikan', 2),
	(3, 'P-2505-00003', 4, NULL, 80, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-05', '2025-05-07', '2025-05-05', 'Print laporan', 'Dikembalikan', 3),
	(4, 'P-2505-00004', 16, NULL, 55, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-07', '2025-05-08', '2025-05-07', 'butuh kipas', 'Dikembalikan', 4),
	(5, 'P-2505-00005', 16, NULL, 78, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-07', '2025-05-08', '2025-05-07', 'kipas rusak', 'Dikembalikan', 5),
	(6, 'P-2505-00006', 16, NULL, 70, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-07', '2025-05-07', '2025-05-07', 'ruangan panas', 'Dikembalikan', 6),
	(7, 'P-2505-00007', 23, NULL, 2223, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', '2025-05-08', '2025-05-08', 'LAPORAN', 'Dikembalikan', 7),
	(8, 'P-2505-00008', 22, NULL, 2225, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', '2025-05-10', '2025-05-08', 'Printer Bendahara Rusak', 'Dikembalikan', 8),
	(9, 'P-2505-00009', 23, NULL, 2226, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', '2025-05-09', '2025-05-08', 'lagi menunggu laptop', 'Dikembalikan', 9),
	(10, 'P-2505-00010', 26, NULL, 2223, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', '2025-05-10', '2025-05-08', 'panas', 'Dikembalikan', 10);

-- Dumping structure for table project_001.peminjaman_approval
CREATE TABLE IF NOT EXISTS `peminjaman_approval` (
  `pinjamappr_id` int(11) NOT NULL AUTO_INCREMENT,
  `pinjamappr_no` varchar(50) DEFAULT NULL,
  `pinjamappr_person` int(11) DEFAULT NULL,
  `pinjamappr_cabang` varchar(350) DEFAULT NULL,
  `pinjamappr_scheme` int(11) DEFAULT NULL,
  `pinjamappr_role` varchar(150) DEFAULT NULL,
  `pinjamappr_dateapprv` date DEFAULT NULL,
  `pinjamappr_status` enum('Disetujui','Ditolak','Menunggu') DEFAULT NULL,
  PRIMARY KEY (`pinjamappr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.peminjaman_approval: ~20 rows (approximately)
INSERT INTO `peminjaman_approval` (`pinjamappr_id`, `pinjamappr_no`, `pinjamappr_person`, `pinjamappr_cabang`, `pinjamappr_scheme`, `pinjamappr_role`, `pinjamappr_dateapprv`, `pinjamappr_status`) VALUES
	(1, 'P-2505-00001', 81, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-04', 'Disetujui'),
	(2, 'P-2505-00001', 79, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(3, 'P-2505-00002', 80, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-04', 'Disetujui'),
	(4, 'P-2505-00002', 79, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(5, 'P-2505-00003', 81, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-05', 'Disetujui'),
	(6, 'P-2505-00003', 79, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-05', 'Disetujui'),
	(7, 'P-2505-00004', 74, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-07', 'Disetujui'),
	(8, 'P-2505-00004', 86, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-07', 'Disetujui'),
	(9, 'P-2505-00005', 74, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-07', 'Disetujui'),
	(10, 'P-2505-00005', 86, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-07', 'Disetujui'),
	(11, 'P-2505-00006', 74, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-07', 'Disetujui'),
	(12, 'P-2505-00006', 86, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-07', 'Disetujui'),
	(13, 'P-2505-00007', 2225, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-08', 'Disetujui'),
	(14, 'P-2505-00007', 2224, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui'),
	(15, 'P-2505-00008', 2223, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-08', 'Disetujui'),
	(16, 'P-2505-00008', 2224, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui'),
	(17, 'P-2505-00009', 2225, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-08', 'Disetujui'),
	(18, 'P-2505-00009', 2224, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui'),
	(19, 'P-2505-00010', 2225, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 1, 'Persetujuan Penanggung Jawab', '2025-05-08', 'Disetujui'),
	(20, 'P-2505-00010', 2224, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui');

-- Dumping structure for table project_001.pengadaan
CREATE TABLE IF NOT EXISTS `pengadaan` (
  `pengadaan_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengadaan_no` varchar(50) NOT NULL DEFAULT '0',
  `pengadaan_asset` int(11) DEFAULT NULL,
  `pengadaan_unit` varchar(350) DEFAULT NULL,
  `pengadaan_tglbeli` date DEFAULT NULL,
  `pengadaan_harga` double DEFAULT NULL,
  `pengadaan_jumlah` int(11) DEFAULT NULL,
  `pengadaan_total` double DEFAULT NULL,
  `pengadaan_creator` varchar(350) DEFAULT NULL,
  `pengadaan_keterangan` text DEFAULT NULL,
  `pengadaan_status` enum('Menunggu Persetujuan','Disetujui','Ditolak') DEFAULT NULL,
  `pengadaan_numseq` int(11) DEFAULT NULL,
  PRIMARY KEY (`pengadaan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.pengadaan: ~22 rows (approximately)
INSERT INTO `pengadaan` (`pengadaan_id`, `pengadaan_no`, `pengadaan_asset`, `pengadaan_unit`, `pengadaan_tglbeli`, `pengadaan_harga`, `pengadaan_jumlah`, `pengadaan_total`, `pengadaan_creator`, `pengadaan_keterangan`, `pengadaan_status`, `pengadaan_numseq`) VALUES
	(1, 'PE-2505-00001', 1, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2006-01-01', 700000, 1, 700000, 'Mutmainna. S.Sos', 'Untuk TK', 'Disetujui', 1),
	(2, 'PE-2505-00002', 3, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2021-01-01', 1500000, 1, 1500000, 'Nurginayah, S.Pd, AUD.', 'Etalase barang di TK', 'Disetujui', 2),
	(3, 'PE-2505-00003', 4, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2019-05-01', 2300000, 1, 2300000, 'Nurginayah, S.Pd, AUD.', 'Printer TK', 'Disetujui', 3),
	(4, 'PE-2505-00004', 5, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2015-05-02', 5000000, 1, 5000000, 'Mutmainna. S.Sos', 'Laptop untuk laporan', 'Disetujui', 4),
	(5, 'PE-2505-00005', 6, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2000-05-03', 4000000, 1, 4000000, 'Sumarni S.Pd', 'Laptop Jadul', 'Disetujui', 5),
	(6, 'PE-2505-00006', 12, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2021-02-02', 2500000, 1, 2500000, 'Andi Tanriola S.Pd', 'Kebutuhan TK', 'Disetujui', 6),
	(7, 'PE-2505-00007', 13, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2015-02-05', 1000000, 1, 1000000, 'Rusniati, S.Pd', 'Kursi Kantor', 'Disetujui', 7),
	(8, 'PE-2505-00008', 14, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2019-10-12', 1000000, 1, 1000000, 'Sumarni S.Pd', 'Tempat penghargaan', 'Disetujui', 8),
	(9, 'PE-2505-00009', 14, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2019-02-01', 1000000, 1, 1000000, 'Mutmainna. S.Sos', 'Piala', 'Disetujui', 9),
	(10, 'PE-2505-00010', 14, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2019-05-03', 1000000, 1, 1000000, 'Mutmainna. S.Sos', 'Kebutuhan berkas', 'Disetujui', 10),
	(11, 'PE-2505-00011', 15, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', '2017-10-10', 2550000, 1, 2550000, 'Mutmainna. S.Sos', 'TK IT Aset', 'Disetujui', 11),
	(12, 'PE-2505-00012', 16, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-07', 500000, 3, 1500000, 'Denil Suwedi, S.Pd', 'kebutuhan kelas', 'Disetujui', 12),
	(13, 'PE-2505-00013', 17, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-07', 550000, 2, 1100000, 'Muh. Isdamir, S.Pd', 'Kebutuhan kelas', 'Disetujui', 13),
	(14, 'PE-2505-00014', 18, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-07', 2000000, 5, 10000000, 'Subhang Halik', 'lemari buku', 'Menunggu Persetujuan', 14),
	(15, 'PE-2505-00015', 19, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-07', 300000, 1, 300000, 'Sudarman, S.Pd.,Gr', 'Aset Kelas', 'Disetujui', 15),
	(16, 'PE-2505-00016', 20, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-07', 2500000, 1, 2500000, 'Ichal, S.Pd', 'bahan alat pembelajaran', 'Disetujui', 16),
	(17, 'PE-2505-00017', 22, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', 3000000, 3, 9000000, 'Arliawan, S.Pd', 'ASET KANTOR', 'Disetujui', 17),
	(18, 'PE-2505-00018', 23, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', 3000000, 1, 3000000, 'Rudi B, S.Pd', 'Kebutuhan Laporan', 'Disetujui', 18),
	(19, 'PE-2505-00019', 24, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', 3500000, 1, 3500000, 'Rudi B, S.Pd', 'Print Laporan', 'Disetujui', 19),
	(20, 'PE-2505-00020', 25, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', 3200000, 1, 3200000, 'Arman Maulana, S.H', 'kebutuhan catatan hafalan', 'Disetujui', 20),
	(21, 'PE-2505-00021', 26, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-08', 400000, 1, 400000, 'Rudi B, S.Pd', 'Panas', 'Disetujui', 21),
	(22, 'PE-2505-00022', 21, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', '2025-05-19', 400000, 1, 400000, 'A. Nur Alang, S.Pd', 'panas', 'Menunggu Persetujuan', 22);

-- Dumping structure for table project_001.pengadaan_approval
CREATE TABLE IF NOT EXISTS `pengadaan_approval` (
  `pengadaanappr_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengadaanappr_no` varchar(50) DEFAULT NULL,
  `pengadaanappr_cabang` varchar(350) DEFAULT NULL,
  `pengadaanappr_person` int(11) DEFAULT NULL,
  `pengadaanappr_scheme` int(11) DEFAULT NULL,
  `pengadaanappr_role` varchar(150) DEFAULT NULL,
  `pengadaanappr_dateapprv` date DEFAULT NULL,
  `pengadaanappr_status` enum('Disetujui','Ditolak','Menunggu') DEFAULT NULL,
  PRIMARY KEY (`pengadaanappr_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table project_001.pengadaan_approval: ~43 rows (approximately)
INSERT INTO `pengadaan_approval` (`pengadaanappr_id`, `pengadaanappr_no`, `pengadaanappr_cabang`, `pengadaanappr_person`, `pengadaanappr_scheme`, `pengadaanappr_role`, `pengadaanappr_dateapprv`, `pengadaanappr_status`) VALUES
	(1, 'PE-2505-00001', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(2, 'PE-2505-00001', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(3, 'PE-2505-00002', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(4, 'PE-2505-00002', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(5, 'PE-2505-00003', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(6, 'PE-2505-00003', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(7, 'PE-2505-00004', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(8, 'PE-2505-00004', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(9, 'PE-2505-00005', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(10, 'PE-2505-00005', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(11, 'PE-2505-00006', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(12, 'PE-2505-00006', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(13, 'PE-2505-00007', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 1, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(14, 'PE-2505-00008', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(15, 'PE-2505-00008', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(16, 'PE-2505-00009', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(17, 'PE-2505-00009', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(18, 'PE-2505-00010', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(19, 'PE-2505-00010', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(20, 'PE-2505-00011', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 79, 1, 'Persetujuan Kepala Sekolah', '2025-05-04', 'Disetujui'),
	(21, 'PE-2505-00011', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-04', 'Disetujui'),
	(22, 'PE-2505-00012', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 86, 1, 'Persetujuan Kepala Sekolah', '2025-05-07', 'Disetujui'),
	(23, 'PE-2505-00012', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-07', 'Disetujui'),
	(24, 'PE-2505-00013', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 86, 1, 'Persetujuan Kepala Sekolah', NULL, 'Menunggu'),
	(25, 'PE-2505-00013', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-07', 'Disetujui'),
	(26, 'PE-2505-00014', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 86, 1, 'Persetujuan Kepala Sekolah', NULL, 'Menunggu'),
	(27, 'PE-2505-00014', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', NULL, 'Menunggu'),
	(28, 'PE-2505-00015', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 86, 1, 'Persetujuan Kepala Sekolah', '2025-05-07', 'Disetujui'),
	(29, 'PE-2505-00015', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-07', 'Disetujui'),
	(30, 'PE-2505-00016', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 86, 1, 'Persetujuan Kepala Sekolah', '2025-05-07', 'Disetujui'),
	(31, 'PE-2505-00016', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-07', 'Disetujui'),
	(32, 'PE-2505-00017', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2224, 1, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui'),
	(33, 'PE-2505-00017', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-08', 'Disetujui'),
	(34, 'PE-2505-00018', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2224, 1, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui'),
	(35, 'PE-2505-00018', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-08', 'Disetujui'),
	(36, 'PE-2505-00019', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2224, 1, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui'),
	(37, 'PE-2505-00019', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-08', 'Disetujui'),
	(38, 'PE-2505-00020', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2224, 1, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui'),
	(39, 'PE-2505-00020', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-08', 'Disetujui'),
	(40, 'PE-2505-00021', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 2224, 1, 'Persetujuan Kepala Sekolah', '2025-05-08', 'Disetujui'),
	(41, 'PE-2505-00021', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', '2025-05-08', 'Disetujui'),
	(42, 'PE-2505-00022', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 86, 1, 'Persetujuan Kepala Sekolah', NULL, 'Menunggu'),
	(43, 'PE-2505-00022', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 87, 2, 'Persetujuan Ketua Yayasan', NULL, 'Menunggu');

-- Dumping structure for table project_001.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.sessions: ~7 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('9a7MJ3yjzR2KNAyI7yhNepoaV9qb45enZWNFgcrC', NULL, '125.164.248.55', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IjAwRENHTkRVNUprUTJUMmYzNG44eUpoVFprdmdTWkNkeEpWYkVmTTEiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU0OiJodHRwczovL2R1YWthdGEtZGV2LmNvbS9wcm9qZWN0cy9wcm9qZWN0LTAwMS9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjc6ImlzTG9naW4iO2I6MTtzOjEyOiJrYXJ5YXdhbl9uaWsiO3M6NDoiMjIyMiI7czoxMzoia2FyeWF3YW5fbmFtYSI7czo1OiJhZG1pbiI7czoxNToia2FyeWF3YW5fY2FiYW5nIjtOO3M6MTQ6Imthcnlhd2FuX2VtYWlsIjtzOjA6IiI7czoxMToia2FyeWF3YW5faWQiO3M6NDoiMjIyMiI7czoxMzoia2FyeWF3YW5fcm9sZSI7czo0OiJVc2VyIjt9', 1747609522),
	('A1LbWCdCP9PfB9wWer4rtTUrbiNqxVKkqAbM9QqF', NULL, '103.111.99.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6InVxOXZqZ0l5c1VFakVqeFVmdG41bkZOcEZaUDhmb0hKSzdGT1BPQUoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU0OiJodHRwczovL2R1YWthdGEtZGV2LmNvbS9wcm9qZWN0cy9wcm9qZWN0LTAwMS9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjc6ImlzTG9naW4iO2I6MTtzOjEyOiJrYXJ5YXdhbl9uaWsiO3M6MTM6IlVTLzI1MDUtMDAwMTUiO3M6MTM6Imthcnlhd2FuX25hbWEiO3M6MTY6IkFkbWluIFNJTUHCoFlXSUIiO3M6MTU6Imthcnlhd2FuX2NhYmFuZyI7TjtzOjE0OiJrYXJ5YXdhbl9lbWFpbCI7czoxODoiYWRtaW4xMjNAZ21haWwuY29tIjtzOjExOiJrYXJ5YXdhbl9pZCI7czoyOiI1MyI7czoxMzoia2FyeWF3YW5fcm9sZSI7czoxMToiU3VwZXIgQWRtaW4iO30=', 1747609195),
	('Cv1C9iWDt8WRwUAybq3XgsfSJYWoJMtNrJ3GTXxl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToxMDp7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiUjJUYU1kOWtXbzFQSHV4MHFpUlB0dXUwU0NQOW5tV0ZOaW11RXpSeiI7czo3OiJpc0xvZ2luIjtiOjE7czoxMjoia2FyeWF3YW5fbmlrIjtzOjQ6IjIyMjIiO3M6MTM6Imthcnlhd2FuX25hbWEiO3M6NToiYWRtaW4iO3M6MTU6Imthcnlhd2FuX2NhYmFuZyI7TjtzOjE0OiJrYXJ5YXdhbl9lbWFpbCI7czowOiIiO3M6MTE6Imthcnlhd2FuX2lkIjtpOjIyMjI7czoxMzoia2FyeWF3YW5fcm9sZSI7czoxMToiU3VwZXIgQWRtaW4iO30=', 1747611370),
	('eORjzFIqCpKN5mmurpbyDc52mAfXQTDu0gmXgBWz', NULL, '125.164.248.55', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWW13aWNweUpjbUJkQzBDNVE2d2V6SU9JeFY5dzRPYnNGMVlNS2JIdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZHVha2F0YS1kZXYuY29tL3Byb2plY3RzL3Byb2plY3QtMDAxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747609197),
	('icROdBXVuZyKV6OjfZBQ0mNXeUteDbyVASa8ueEx', NULL, '103.106.216.69', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.118 Mobile Safari/537.36 XiaoMi/MiuiBrowser/14.32.0-gn', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianR3NTJqVzJLZDVWZTZHZnp4MnRYVDVVdTlIUnF3THF0QWdxOTFteSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vZHVha2F0YS1kZXYuY29tL3Byb2plY3RzL3Byb2plY3QtMDAxL2F1dGgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1747609220),
	('zQAeresUgz3fBbKXvADJcKPGkK1MPfiTemoGBj2Z', NULL, '103.111.99.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YToxMDp7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vZHVha2F0YS1kZXYuY29tL3Byb2plY3RzL3Byb2plY3QtMDAxL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiI0cE1QVHJIUzB5aVNXRDY4U1ZxZng0dFp5TDJkcXFZYzA2YkJoSExPIjtzOjc6ImlzTG9naW4iO2I6MTtzOjEyOiJrYXJ5YXdhbl9uaWsiO3M6MTM6IlVTLzI1MDUtMDAwMjEiO3M6MTM6Imthcnlhd2FuX25hbWEiO3M6MTg6IkEuIE51ciBBbGFuZywgUy5QZCI7czoxNToia2FyeWF3YW5fY2FiYW5nIjtzOjMxOiJTRElUIFdBSERBSCBJU0xBTUlZQUggQlVMVUtVTUJBIjtzOjE0OiJrYXJ5YXdhbl9lbWFpbCI7czoyMjoiYS5udXJhbGFuZzk1QGdtYWlsLmNvbSI7czoxMToia2FyeWF3YW5faWQiO3M6MjoiNTkiO3M6MTM6Imthcnlhd2FuX3JvbGUiO3M6NDoiVXNlciI7fQ==', 1747609256),
	('ZuxbGw9WufmxIbDfpxhCsxd9Feq7OxfEPtjbZvyD', NULL, '103.111.99.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6ImR6amZWR2dKV2NRMEQ1WDAyM3BoNkUydFRaTUlTWVJlWVZ1c29JOWUiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ0OiJodHRwczovL2R1YWthdGEtZGV2LmNvbS9wcm9qZWN0cy9wcm9qZWN0LTAwMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NzoiaXNMb2dpbiI7YjoxO3M6MTI6Imthcnlhd2FuX25payI7czoxMzoiVVMvMjUwNS0wMDAxNSI7czoxMzoia2FyeWF3YW5fbmFtYSI7czoxNjoiQWRtaW4gU0lNQcKgWVdJQiI7czoxNToia2FyeWF3YW5fY2FiYW5nIjtOO3M6MTQ6Imthcnlhd2FuX2VtYWlsIjtzOjE4OiJhZG1pbjEyM0BnbWFpbC5jb20iO3M6MTE6Imthcnlhd2FuX2lkIjtzOjI6IjUzIjtzOjEzOiJrYXJ5YXdhbl9yb2xlIjtzOjExOiJTdXBlciBBZG1pbiI7fQ==', 1747608998);

-- Dumping structure for table project_001.tb_asset
CREATE TABLE IF NOT EXISTS `tb_asset` (
  `asset_id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_uuid` varchar(50) DEFAULT uuid(),
  `asset_no` varchar(50) DEFAULT NULL,
  `asset_nama` varchar(350) DEFAULT NULL,
  `asset_kategori` varchar(50) DEFAULT NULL,
  `asset_cabang` varchar(350) DEFAULT NULL,
  `asset_lokasi` int(11) DEFAULT NULL,
  `asset_merek` varchar(150) DEFAULT NULL,
  `asset_total` int(11) DEFAULT NULL,
  `asset_tglbeli` date DEFAULT NULL,
  `asset_hargabeli` double DEFAULT 0,
  `asset_status` enum('Available','Rusak','Dalam Perbaikan','Dipinjam') DEFAULT NULL,
  `asset_gambar` blob DEFAULT NULL,
  `asset_numseq` int(11) DEFAULT NULL,
  PRIMARY KEY (`asset_id`),
  UNIQUE KEY `asset_uuid` (`asset_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.tb_asset: ~23 rows (approximately)
INSERT INTO `tb_asset` (`asset_id`, `asset_uuid`, `asset_no`, `asset_nama`, `asset_kategori`, `asset_cabang`, `asset_lokasi`, `asset_merek`, `asset_total`, `asset_tglbeli`, `asset_hargabeli`, `asset_status`, `asset_gambar`, `asset_numseq`) VALUES
	(1, 'b53c2a62-28b1-11f0-b8ce-246e96398720', 'ASSET-2505-00002', 'Lemari 2 Pintu', 'Meubler', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 9, 'Lemari Kayu 2 Pintu', 1, NULL, 0, 'Available', _binary 0x536b7a395a6c6145356855764f66706a3763634e6d4a42516a58766b6d61754a6b505a464d567a322e6a7067, 1),
	(3, 'a0eb4ae6-28b3-11f0-b8ce-246e96398720', 'ASSET-2505-00002', 'Lemari Etalase', 'Meubler', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 10, 'Lemari Alumunium Etalase', 1, NULL, 0, 'Available', _binary 0x476e365a756e4e577a346870566247674634336d514450356238426671586d457969356e51626c572e6a7067, 2),
	(4, '52f8d197-28b5-11f0-b8ce-246e96398720', 'ASSET-2505-00003', 'Printer Epson', 'Elektronik', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 10, 'Printer Epson Tahun 2019', 1, NULL, 0, 'Available', _binary 0x38506a395648675a3951515659535468397467464c776132416279506c51663576373264516e68662e6a7067, 3),
	(5, '47c923ee-28b6-11f0-b8ce-246e96398720', 'ASSET-2505-00004', 'Laptop Lenovo', 'Hardware', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 9, 'Laptop Lenovo 14 Inci 2015', 1, NULL, 0, 'Available', _binary 0x4f58664f3853686c57763050303553693469616f6e72436a65634c684c584d714b566e754154496c2e706e67, 4),
	(6, '1540c09c-28b8-11f0-b8ce-246e96398720', 'ASSET-2505-00005', 'Laptop Acer 2000', 'Hardware', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 11, 'Laptop Acer 14 Inci 2000', 1, NULL, 0, 'Available', _binary 0x3044526f58784c396a534667325a564552444a4855494e794f7472637a68494872623153464f44502e6a7067, 5),
	(10, 'a9b8e4b2-28b9-11f0-b8ce-246e96398720', 'ASSET-2505-00006', 'ddd', 'Elektronik', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 8, 'Laptop Lenovo 14 Inci 2015', 0, NULL, 0, 'Dipinjam', _binary 0x313734363334333833305f53637265656e73686f745f31372e706e67, 6),
	(11, '2a20aa8b-28ba-11f0-b8ce-246e96398720', 'ASSET-2505-00009', 'ss22', 'Hardware', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 8, 'Laptop Acer 14 Inci 2000', 0, NULL, 0, 'Available', _binary 0x313734363334343034355f53637265656e73686f745f31372e706e67, 7),
	(12, '15c845ec-28bc-11f0-b8ce-246e96398720', 'ASSET-2505-00009', 'Lemari Alumunium 4 Pintu', 'Meubler', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 12, 'Lemari Alumunium Alumunium', 1, NULL, 0, 'Available', _binary 0x313734363334343837305f4c656d6172695f325f50696e74755f416c756d696e69756d2e6a7067, 8),
	(13, '1a350c85-28c2-11f0-b8ce-246e96398720', 'ASSET-2505-00009', 'Kursi Putar', 'Meubler', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 8, 'Kursi Putar Campuran', 1, NULL, 0, 'Available', _binary 0x313734363334373435355f6b7572736970757461722e6a7067, 9),
	(14, '55107fff-28c5-11f0-b8ce-246e96398720', 'ASSET-2505-00010', 'Lemari Alumunium 1 Pintu', 'Meubler', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 11, 'Lemari Alumunium Alumunium', 3, NULL, 0, 'Available', _binary 0x313734363334383834325f616c756d756e69756d20312070696e74752e6a7067, 10),
	(15, 'b99760c7-28c6-11f0-b8ce-246e96398720', 'ASSET-2505-00012', 'Lemari Etalase 3', 'Meubler', 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 9, 'Lemari Alumunium Etalase', 1, NULL, 0, 'Available', _binary 0x313734363334393434305f616c756d756e69756d20312070696e74752e6a7067, 11),
	(16, 'e701974e-2ae5-11f0-b8ce-246e96398720', 'ASSET-2505-00012', 'Kipas Angin 5D', 'Elektronik', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 14, 'SEKAI 3 In 1 18 Inci IST-1851', 3, NULL, 0, 'Available', _binary 0x313734363538323733315f73672d31313133343230312d32333032302d387237686b32767377396d7665662e6a706567, 12),
	(17, '1f28d8e1-2ae8-11f0-b8ce-246e96398720', 'ASSET-2505-00013', 'Kipas Angin 5C', 'Elektronik', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 15, 'SEKAI 3 In 1 18 Inci IST-1851', 2, NULL, 0, 'Available', _binary 0x313734363538333638355f73672d31313133343230312d32333032302d387237686b32767377396d7665662e6a706567, 13),
	(18, '701da126-2ae9-11f0-b8ce-246e96398720', 'ASSET-2505-00014', 'Lemari buku', 'Meubler', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 16, 'Lemari Kayu 2 Pintu', 0, NULL, 0, 'Available', _binary 0x313734363538343235305f6c656d6172692d62756b752d6b6163612d6d696e696d616c69732d6c6d30342d31202831292e6a7067, 14),
	(19, '1b35478e-2af0-11f0-b8ce-246e96398720', 'ASSET-2505-00015', 'Kipas Angin 6d', 'Elektronik', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 17, 'Advance 15 Inci', 1, NULL, 0, 'Available', NULL, 15),
	(20, '44532312-2af3-11f0-b8ce-246e96398720', 'ASSET-2505-00016', 'proyektor 4C', 'Elektronik', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 18, 'Epson EB-400', 1, NULL, 0, 'Available', NULL, 16),
	(21, '3c3a6338-2b0f-11f0-b8ce-246e96398720', 'ASSET-2505-00017', 'Kipas Angin', 'Elektronik', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 16, 'SEKAI 3 In 1 18 Inci IST-1851', 0, NULL, 0, 'Available', _binary 0x313734363630303438345f73672d31313133343230312d32333032302d387237686b32767377396d7665662e6a706567, 17),
	(22, 'be34aba0-2bb4-11f0-b8ce-246e96398720', 'ASSET-2505-00018', 'PRINTER KANTOR PUTRA PPS', 'Elektronik', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 19, 'Epson L5190', 3, NULL, 0, 'Available', NULL, 18),
	(23, '08fc9be9-2bb6-11f0-b8ce-246e96398720', 'ASSET-2505-00019', 'Laptop Bendahara PPS', 'Hardware', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 20, 'DELL 15 Inc', 1, NULL, 0, 'Available', NULL, 19),
	(24, '67d102d9-2bb8-11f0-b8ce-246e96398720', 'ASSET-2505-00020', 'Printer Ruang Bendahara', 'Elektronik', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 20, 'Epson L3110', 1, NULL, 0, 'Available', NULL, 20),
	(25, 'bff3f6c5-2bbb-11f0-b8ce-246e96398720', 'ASSET-2505-00021', 'Laptop Acer 1 wustha', 'Hardware', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 21, 'Laptop Acer 14 Inci 2000', 1, NULL, 0, 'Available', NULL, 21),
	(26, 'cecb8906-2bbe-11f0-b8ce-246e96398720', 'ASSET-2505-00022', 'Kipas Angin Bendahar', 'Elektronik', 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 20, 'SEKAI 3 In 1 18 Inci IST-1851', 1, NULL, 0, 'Available', NULL, 22),
	(27, 'e23579d0-343b-11f0-b8ce-246e96398720', 'ASSET-2505-00023', 'Kipas Angin', 'Elektronik', 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 7, 'SEKAI 3 In 1 18 Inci IST-1851', 0, NULL, 0, 'Available', NULL, 23);

-- Dumping structure for table project_001.tb_lokasi
CREATE TABLE IF NOT EXISTS `tb_lokasi` (
  `lokasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi_cabang` varchar(350) NOT NULL DEFAULT '0',
  `lokasi_nama` varchar(350) DEFAULT NULL,
  `lokasi_sub` varchar(150) DEFAULT NULL,
  `lokasi_penanggungjawab` int(11) DEFAULT NULL,
  PRIMARY KEY (`lokasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.tb_lokasi: ~0 rows (approximately)
INSERT INTO `tb_lokasi` (`lokasi_id`, `lokasi_cabang`, `lokasi_nama`, `lokasi_sub`, `lokasi_penanggungjawab`) VALUES
	(1, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Kantor SD IT', 'Kantor SD IT', 54),
	(2, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Perpustakaan SD IT', 'Perpustakaan', 55),
	(3, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Kantor SD IT', 'Ruang Kepala Sekolah', 86),
	(4, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Ged.4/Lt.1', 'Kelas 1 A', 56),
	(5, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Ged.4/Lt.1', 'Kelas 1 B', 57),
	(6, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Ged.2/Lt.1', 'Kelas 1 C', 58),
	(7, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Ged.2/Lt.1', 'Kelas 1 D', 59),
	(8, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Kantor PAUDIT', 'Ruang Kepala Sekolah', 79),
	(9, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'PAUDIT', 'Kelompok A1', 80),
	(10, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'PAUDIT', 'Kelompok A2', 81),
	(11, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'PAUDIT', 'Kelompok B 1', 82),
	(12, 'PAUDIT WAHDAH ISLAMIYAH BULUKUMBA', 'PAUDIT', 'Kelompok B 2', 83),
	(14, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Ged.1/Lt.1', 'Kelas 5 D', 74),
	(15, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Ged.2/Lt.2', 'Kelas 5 C', 73),
	(16, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Perpustakaan', 'Perpustakaan SD IT', 55),
	(17, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Ged.1/Lt.1', 'Kelas 6 D', 78),
	(18, 'SDIT WAHDAH ISLAMIYAH BULUKUMBA', 'Ged.2/Lt.2', 'Kelas 4 C', 70),
	(19, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 'Kantor PPS', 'Kantor Putra', 2223),
	(20, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 'Kantor PPS', 'Kantor Bendahara', 2225),
	(21, 'PPS ABU BAKAR ASH-SHIDDIQ WAHDAH ISLAMIYAH BULUKUMBA', 'PPS ABU BAKAR', 'Kelas 1  Wustha', 2226),
	(22, 'PPS ABU BAKAR ASH-SHIDDIQ WI WUSTHA', 'PPS ABU BAKAR WUSTHA', 'KANTOR KEPALA SEKOLAH', 2227);

-- Dumping structure for table project_001.tb_setting_approval
CREATE TABLE IF NOT EXISTS `tb_setting_approval` (
  `settappr_id` int(11) NOT NULL AUTO_INCREMENT,
  `settappr_person` int(11) DEFAULT NULL,
  `settappr_scheme` int(11) DEFAULT 1,
  `settappr_keterangan` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`settappr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.tb_setting_approval: ~0 rows (approximately)

-- Dumping structure for table project_001.tb_setting_divisi
CREATE TABLE IF NOT EXISTS `tb_setting_divisi` (
  `settd_id` int(11) NOT NULL AUTO_INCREMENT,
  `settd_nama` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`settd_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table project_001.tb_setting_divisi: ~0 rows (approximately)

-- Dumping structure for table project_001.tb_setting_kategori
CREATE TABLE IF NOT EXISTS `tb_setting_kategori` (
  `settk_id` int(11) NOT NULL AUTO_INCREMENT,
  `settk_nama` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`settk_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table project_001.tb_setting_kategori: ~0 rows (approximately)
INSERT INTO `tb_setting_kategori` (`settk_id`, `settk_nama`) VALUES
	(1, 'Elektronik'),
	(2, 'Meubler'),
	(3, 'Hardware');

-- Dumping structure for table project_001.tb_setting_merek
CREATE TABLE IF NOT EXISTS `tb_setting_merek` (
  `settm_id` int(11) NOT NULL AUTO_INCREMENT,
  `settm_no` varchar(20) NOT NULL DEFAULT '0',
  `settm_nama` varchar(150) DEFAULT NULL,
  `settm_tipe` varchar(150) DEFAULT NULL,
  `settm_numseq` int(11) DEFAULT 0,
  PRIMARY KEY (`settm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table project_001.tb_setting_merek: ~0 rows (approximately)
INSERT INTO `tb_setting_merek` (`settm_id`, `settm_no`, `settm_nama`, `settm_tipe`, `settm_numseq`) VALUES
	(1, 'SETTM2505-00001', 'Laptop Lenovo', '14 Inci 2015', 1),
	(2, 'SETTM2505-00002', 'Laptop Acer', '14 Inci 2000', 2),
	(3, 'SETTM2505-00003', 'Printer Epson', 'Tahun 2019', 3),
	(4, 'SETTM2505-00004', 'Lemari Kayu', '2 Pintu', 4),
	(5, 'SETTM2505-00005', 'Lemari Alumunium', 'Alumunium', 5),
	(6, 'SETTM2505-00006', 'Lemari Alumunium', 'Etalase', 6),
	(7, 'SETTM2505-00007', 'Kursi Putar', 'Campuran', 7),
	(8, 'SETTM2505-00008', 'SEKAI 3 In 1 18 Inci', 'IST-1851', 8),
	(9, 'SETTM2505-00009', 'Advance', '15 Inci', 9),
	(10, 'SETTM2505-00010', 'Epson', 'EB-400', 10),
	(11, 'SETTM2505-00011', 'Epson', 'L5190', 11),
	(12, 'SETTM2505-00012', 'DELL', '15 Inc', 12),
	(13, 'SETTM2505-00013', 'Epson', 'L3110', 13);

-- Dumping structure for table project_001.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_karyawan` int(10) unsigned NOT NULL DEFAULT 0,
  `user_name` varchar(150) NOT NULL DEFAULT '0',
  `user_password` varchar(35) NOT NULL,
  `user_role` enum('Admin','User') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table project_001.users: ~0 rows (approximately)
INSERT INTO `users` (`user_id`, `user_karyawan`, `user_name`, `user_password`, `user_role`, `created_at`, `updated_at`) VALUES
	(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '2025-02-16 09:11:37', '2025-02-16 09:11:38');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
