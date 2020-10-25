-- Adminer 4.6.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang` (
  `kodeCabang` varchar(255) NOT NULL,
  `namaCabang` varchar(255) NOT NULL,
  PRIMARY KEY (`kodeCabang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `cabang` (`kodeCabang`, `namaCabang`) VALUES
('001',	'KANTOR PUSAT OPERASIONAL'),
('010',	'CABANG SANGAJI'),
('011',	'CABANG PONDOK INDAH'),
('012',	'CAPEM MUARA KARANG'),
('013',	'CAPEM CILEDUK TANGERANG'),
('014',	'CAPEM CIPUTAT TANGERANG'),
('015',	'CAPEM GLODOK JAKARTA'),
('016',	'CAPEM PASAR SENEN JAKARTA'),
('017',	'CAPEM ADITYAWARMAN'),
('018',	'CAPEM DEPOK'),
('019',	'CAPEM PASAR MINGGU'),
('020',	'CABANG MAJESTIK'),
('021',	'CAPEM CENGKARENG'),
('022',	'CAPEM CAWANG'),
('023',	'CAPEM KELAPA GADING'),
('030',	'CABANG KELAPA GADING'),
('040',	'CABANG BEKASI'),
('041',	'CAPEM PONDOK GEDE'),
('042',	'CAPEM HARAPAN INDAH'),
('043',	'CAPEM CIBITUNG'),
('050',	'CABANG KARAWANG'),
('051',	'CAPEM CIKAMPEK'),
('052',	'CAPEM CIKARANG'),
('053',	'CAPEM CILAMAYA'),
('054',	'CAPEM RENGASDENGKLOK'),
('060',	'CABANG BOGOR'),
('061',	'CAPEM CIAWI'),
('062',	'CAPEM CIBINONG'),
('063',	'CAPEM PARUNG'),
('070',	'CABANG TANGERANG SELATAN'),
('071',	'CABANG TANGERANG'),
('072',	'CAPEM JATIUWUNG'),
('073',	'CABANG BALARAJA'),
('074',	'CAPEM BSD'),
('075',	'CAPEM MAJA'),
('076',	'CAPEM LABUAN'),
('077',	'CAPEM KRAMATWATU'),
('080',	'CABANG SERANG'),
('081',	'CABANG CILEGON'),
('082',	'CABANG RANGKASBITUNG'),
('083',	'CABANG PANDEGLANG'),
('086',	'P2 RANGKAS BITUNG'),
('087',	'P2 PANDEGLANG'),
('088',	'CAPEM PALIMA'),
('089',	'CAPEM MALINGPING'),
('090',	'CAPEM PANIMBANG'),
('091',	'CAPEM'),
('100',	'CABANG BANDUNG'),
('101',	'CAPEM BKR BANDUNG'),
('102',	'CAPEM KOPO BANDUNG'),
('103',	'CAPEM CIMAHI BANDUNG'),
('104',	'CAPEM UJUNG BERUNG BANDUNG'),
('105',	'CAPEM SETIABUDI BANDUNG'),
('106',	'CAPEM DAGO BANDUNG'),
('107',	'P2 SETIABUDI'),
('108',	'P2 UJUNG BERUNG'),
('109',	'P2 CIMAHI'),
('110',	'CABANG TASIKMALAYA'),
('111',	'CAPEM INDIHIANG'),
('112',	'KCP GARUT'),
('113',	'CAPEM BANJAR'),
('114',	'P2 GARUT'),
('115',	'P2 TASIKMALAYA'),
('120',	'CABANG PURWAKARTA'),
('122',	'CAPEM SUBANG'),
('123',	'CAPEM PAMANUKAN'),
('130',	'CABANG SUKABUMI'),
('131',	'CAPEM CIRANJANG'),
('132',	'KCP CIANJUR'),
('133',	'CAPEM CIBADAK'),
('140',	'CABANG CIREBON'),
('141',	'CAPEM PATROL'),
('200',	'CABANG SEMARANG'),
('201',	'CAPEM HARYONO SEMARANG'),
('202',	'CAPEM WELERI'),
('203',	'CAPEM PETERONGAN'),
('204',	'CAPEM UNGARAN'),
('205',	'CAPEM KUDUS'),
('206',	'CAPEM LADIES BRANCH SEMARANG'),
('208',	'CAPEM PATI'),
('210',	'CABANG SOLO'),
('211',	'CAPEM KARTOSURO'),
('212',	'CAPEM KLATEN'),
('213',	'CAPEM SRAGEN'),
('214',	'CAPEM PALUR'),
('215',	'CAPEM BOYOLALI'),
('216',	'CAPEM WONOGIRI'),
('220',	'CABANG JOGJAKARTA'),
('221',	'CAPEM BRINGHARJO YOGYAKARTA'),
('222',	'CAPEM PARANG TRITIS YOGYAKARTA'),
('223',	'CAPEM SLEMAN'),
('224',	'CAPEM MAGELANG'),
('225',	'CAPEM WONOSOBO'),
('226',	'CAPEM PURWOREJO'),
('230',	'CABANG TEGAL'),
('231',	'CAPEM BATANG'),
('232',	'CAPEM PEKALONGAN'),
('233',	'CAPEM PEMALANG'),
('234',	'CAPEM BREBES'),
('235',	'CAPEM BUMIAYU'),
('240',	'CABANG PURWOKERTO'),
('241',	'CAPEM PURBALINGGA'),
('242',	'CAPEM KEBUMEN'),
('243',	'CAPEM CILACAP'),
('244',	'CAPEM KROYA'),
('245',	'CAPEM BANJARNEGARA'),
('300',	'CABANG SURABAYA'),
('301',	'CAPEM AMBENGAN SURABAYA'),
('302',	'CAPEM WARU SIDOARJO'),
('303',	'CAPEM WONOKROMO SURABAYA'),
('304',	'CAPEM PASAR TURI SURABAYA'),
('305',	'CAPEM KERTAJAYA SURABAYA'),
('306',	'CAPEM PAMEKASAN'),
('307',	'P2 CABANG SURABAYA'),
('310',	'CABANG MALANG'),
('311',	'CAPEM PANDAAN MALANG'),
('312',	'CAPEM SINGOSARI MALANG'),
('313',	'CAPEM LUMAJANG'),
('314',	'CAPEM PROBOLINGGO'),
('315',	'P2 CAPEM BLITAR'),
('316',	'P2 CAPEM SINGOSARI MALANG'),
('317',	'P2 CABANG MALANG'),
('320',	'CABANG GRESIK'),
('321',	'CAPEM JOMBANG'),
('322',	'CAPEM LAMONGAN'),
('323',	'CAPEM BOJONEGORO'),
('324',	'CAPEM MOJOKERTO'),
('325',	'P2 CABANG GRESIK'),
('330',	'CABANG KEDIRI'),
('331',	'CAPEM BLITAR'),
('332',	'CAPEM NGANJUK'),
('333',	'CAPEM TULUNG AGUNG'),
('334',	'CAPEM MADIUN'),
('335',	'CAPEM PARE'),
('340',	'CABANG GAJAH MADA JEMBER'),
('341',	'CAPEM GENTENG BANYUWANGI'),
('342',	'CAPEM SITUBONDO'),
('500',	'CABANG PALEMBANG'),
('501',	'CAPEM KM 5 PALEMBANG'),
('502',	'CAPEM KM 12 PALEMBANG'),
('503',	'CAPEM SEBRANG ULU PALEMBANG'),
('504',	'CAPEM BETUNG PALEMBANG'),
('505',	'CAPEM PRABUMULIH'),
('506',	'CABANG PALEMBANG (LB)'),
('507',	'CAPEM KENTEN'),
('510',	'CABANG LAMPUNG'),
('511',	'CAPEM KARTINI LAMPUNG'),
('512',	'CAPEM METRO LAMPUNG'),
('513',	'CAPEM BANDAR JAYA LAMPUNG'),
('514',	'CAPEM TULANG BAWANG'),
('515',	'CAPEM PRINGSEWU'),
('516',	'P2 MALAHAYATI'),
('517',	'P2 PRINGSEWU'),
('520',	'CABANG JAMBI'),
('521',	'CAPEM SIPIN JAMBI'),
('522',	'CAPEM JELUTUNG JAMBI'),
('523',	'CAPEM MUARA BUNGO'),
('524',	'CAPEM SAROLANGUN'),
('525',	'CAPEM BANGKO'),
('530',	'CABANG BATURAJA'),
('531',	'CAPEM TUGUMULYO'),
('532',	'CAPEM BELITANG'),
('533',	'CAPEM LUBUK LINGGAU'),
('540',	'CABANG BENGKULU'),
('542',	'CAPEM KETAHUN'),
('600',	'CABANG DENPASAR'),
('601',	'CAPEM BULUH INDAH DENPASAR'),
('602',	'CAPEM TOHPATI DENPASAR'),
('603',	'CAPEM SUNSET ROAD'),
('604',	'CAPEM GIANYAR'),
('605',	'P2 DIPONEGORO'),
('610',	'CABANG SINGARAJA'),
('611',	'CAPEM NEGARA'),
('612',	'CAPEM TABANAN'),
('613',	'CAPEM KLUNGKUNG'),
('614',	'P2 A YANI'),
('615',	'P2 KLUNGKUNG'),
('620',	'CABANG MATARAM'),
('621',	'CAPEM PRAYA'),
('622',	'CAPEM PANCOR'),
('623',	'CAPEM SUMBAWA'),
('624',	'CAPEM BIMA'),
('630',	'CABANG KUPANG'),
('631',	'CAPEM ATAMBUA'),
('632',	'CAPEM SOE'),
('700',	'CABANG MAKASSAR'),
('701',	'CAPEM DAYA'),
('702',	'CAPEM SENGKANG'),
('704',	'CAPEM RANTEPAO'),
('706',	'CAPEM LADIES BRANCH MAKASAR'),
('710',	'CABANG KENDARI'),
('711',	'CAPEM KOLAKA'),
('712',	'CAPEM BAU BAU'),
('720',	'CABANG GORONTALO'),
('730',	'CABANG ABEPURA'),
('731',	'CAPEM SORONG'),
('732',	'CAPEM TIMIKA'),
('733',	'CAPEM MANOKWARI'),
('740',	'CABANG BALIKPAPAN'),
('750',	'CABANG MANADO'),
('751',	'CAPEM TOMOHON'),
('752',	'CAPEM BITUNG'),
('760',	'CAPEM SAMARINDA'),
('770',	'CABANG BANJARMASIN'),
('780',	'CABANG PALU'),
('790',	'CABANG AMBON'),
('800',	'CABANG MEDAN'),
('801',	'CAPEM PETISAH MEDAN'),
('802',	'CAPEM MEDAN DELI'),
('803',	'CAPEM SEI SIKAMBING MEDAN'),
('804',	'CAPEM DELI TUA MEDAN'),
('805',	'CAPEM BINJAI MEDAN'),
('806',	'CAPEM LADIES BRANCH MEDAN'),
('807',	'P2 PEMUDA'),
('808',	'P2 SEI SIKAMBING'),
('810',	'CABANG BANDA ACEH'),
('811',	'CAPEM SIGLI'),
('812',	'CAPEM LHOKSUEMAWE'),
('813',	'CAPEM LANGSA'),
('820',	'CABANG PEMATANG SIANTAR'),
('821',	'CAPEM RANTAU PRAPAT'),
('822',	'CAPEM KOTA PINANG'),
('823',	'CAPEM PADANG SIDEMPUAN'),
('824',	'CAPEM KISARAN'),
('825',	'CAPEM TEBING TINGGI'),
('830',	'CABANG PEKANBARU'),
('831',	'CAPEM PANGKALAN KERINCI'),
('832',	'CAPEM DURI'),
('833',	'CAPEM TELUK KUANTAN'),
('834',	'CAPEM AIR MOLEK'),
('835',	'CAPEM ARENGKA'),
('840',	'CABANG PADANG'),
('841',	'CAPEM BUKIT TINGGI'),
('842',	'CAPEM KOTOBARU'),
('843',	'CAPEM PAYAKUMBUH'),
('888',	'KANTOR WILAYAH OPERASIONAL');

DROP TABLE IF EXISTS `fungsi`;
CREATE TABLE `fungsi` (
  `idFungsi` varchar(255) NOT NULL,
  `fungsi` varchar(255) NOT NULL,
  PRIMARY KEY (`idFungsi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `fungsi` (`idFungsi`, `fungsi`) VALUES
('495',	'OPRASIONAL');

DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `kodeGrade` varchar(255) NOT NULL,
  `namaGrade` varchar(255) NOT NULL,
  PRIMARY KEY (`kodeGrade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `grade` (`kodeGrade`, `namaGrade`) VALUES
('0085',	'G4');

DROP TABLE IF EXISTS `induk`;
CREATE TABLE `induk` (
  `kodeInduk` varchar(255) NOT NULL,
  `namaInduk` varchar(255) NOT NULL,
  PRIMARY KEY (`kodeInduk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `induk` (`kodeInduk`, `namaInduk`) VALUES
('P009',	'DIVISI TEKNOLOGI INFORMASI');

DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `jabatan` (`id`, `jabatan`) VALUES
(1,	'STAF G4');

DROP TABLE IF EXISTS `kanwil`;
CREATE TABLE `kanwil` (
  `kodeKanwil` varchar(255) NOT NULL,
  `namaKanwil` varchar(255) NOT NULL,
  PRIMARY KEY (`kodeKanwil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `kanwil` (`kodeKanwil`, `namaKanwil`) VALUES
('K001',	'KANWIL 1');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `kodeCabang` varchar(255) NOT NULL,
  `kodeInduk` varchar(255) NOT NULL,
  `kodeKanwil` varchar(255) NOT NULL,
  `kodeJabatan` varchar(255) NOT NULL,
  `posisiPenempatan` varchar(255) NOT NULL,
  `handphone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `kodeGrade` varchar(255) NOT NULL,
  `idFungsi` varchar(255) NOT NULL,
  `fungsiTambahan` varchar(255) NOT NULL,
  `limitDebit` int(11) NOT NULL,
  `limitKredit` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`userId`, `nama`, `nip`, `kodeCabang`, `kodeInduk`, `kodeKanwil`, `kodeJabatan`, `posisiPenempatan`, `handphone`, `email`, `kodeGrade`, `idFungsi`, `fungsiTambahan`, `limitDebit`, `limitKredit`, `username`, `password`) VALUES
(1,	'ANDRI MUHAMAD',	'1588991',	'P060',	'P009',	'K001',	'1',	'-',	'08884726638',	'andri@dummymail.co.id',	'0085',	'495',	'-',	0,	0,	'andrimuhammad',	'87757a19cc63dd3c9fad323dbef5daff');

DROP TABLE IF EXISTS `user_developer`;
CREATE TABLE `user_developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dev` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `waktu_register` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user_developer` (`id`, `nama_dev`, `username`, `password`, `waktu_register`) VALUES
(1,	'devInternal',	'itdev',	'b59be77ab64791ba8f6f395f794a742d',	'2020-03-17 00:00:00');

-- 2020-03-20 09:32:37
