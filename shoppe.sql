CREATE TABLE `akun` (
  `id_akun` integer PRIMARY KEY,
  `nama` varchar(255),
  `alamat` varchar(255)
);

CREATE TABLE `produk` (
  `id_produk` integer PRIMARY KEY,
  `id_akun` integer,
  `nama` varchar(255),
  `harga` integer,
  `stok` integer
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

ALTER TABLE `transaksi` ADD FOREIGN KEY (`id_pembayaran`) REFERENCES `pembayaran` (`id_pembayaran`);

ALTER TABLE `produk` ADD FOREIGN KEY (`id_produk`) REFERENCES `transaksi` (`id_produk`);

ALTER TABLE `akun` ADD FOREIGN KEY (`id_akun`) REFERENCES `produk` (`id_akun`);
