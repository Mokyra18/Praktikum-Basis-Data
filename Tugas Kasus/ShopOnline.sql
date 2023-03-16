CREATE TABLE `pengguna` (
  `id_akun` integer PRIMARY KEY,
  `username_akun` varchar(255),
  `nama_lengkap` varchar(255),
  `tanggal_lahir` varchar(255),
  `alamat` varchar(255),
  `no_telepon` varchar(255),
  `email` varchar(255),
  `jenis_kelamin` varchar(255),
  `prefensi_pembayaran` varchar(255)
);

CREATE TABLE `produk` (
  `id_produk` integer PRIMARY KEY,
  `id_akun` integer,
  `harga` integer,
  `kategori_produk` varchar(255),
  `nama_produk` varchar(255),
  `deskripsi_produk` Text(255),
  `gambar_produk` varchar(255),
  `katergori_produk` varchar(255)
);

CREATE TABLE `transaksi` (
  `id_transaksi` integer PRIMARY KEY,
  `jenis_transaksi` varchar(255),
  `id_produk` integer,
  `id_pembayaran` integer
);

CREATE TABLE `pembayaran` (
  `id_pembayaran` integer PRIMARY KEY,
  `total_harga` integer
);
