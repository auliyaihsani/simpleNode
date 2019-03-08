-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Feb 2019 pada 07.25
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocbc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `account`
--

CREATE TABLE `account` (
  `AccountId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Balance` double NOT NULL,
  `TotalPoint` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `account`
--

INSERT INTO `account` (`AccountId`, `Name`, `Balance`, `TotalPoint`) VALUES
(1, 'Customer1', 80000, 10),
(2, 'Customer2', 100000, 0),
(6, 'Customer3', 400000, 0),
(7, 'Customer 4', 200000, 0),
(8, 'OCBC', 160000, 28),
(9, 'NISP', 659500, 537),
(10, 'sani', 11999, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `AccountId` int(11) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `Id` int(11) NOT NULL,
  `AccountId` int(11) NOT NULL,
  `TransactionDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `Description` varchar(20) NOT NULL,
  `DebitCreditStatus` varchar(2) NOT NULL,
  `Amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`Id`, `AccountId`, `TransactionDate`, `Description`, `DebitCreditStatus`, `Amount`) VALUES
(1, 1, '2019-02-01 10:06:04', 'Setor Tunai', 'C', 200000),
(9, 1, '2019-02-14 06:00:01', 'Bayar Listrik', 'D', 20000),
(10, 1, '2019-02-15 00:00:00', 'Beli Pulsa', 'D', 10000),
(11, 1, '2019-02-16 00:00:00', 'Beli Pulsa', 'D', 8000),
(12, 1, '2019-02-21 00:00:00', 'Setor Tunai', 'C', 40000),
(13, 1, '2019-02-21 00:00:00', 'Beli Pulsa', 'D', 12000),
(14, 1, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 30000),
(15, 1, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 10000),
(16, 1, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 10000),
(17, 1, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 30000),
(18, 1, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 10000),
(19, 1, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 10000),
(20, 1, '2019-02-21 00:00:00', 'Bayar Listrik', 'D', 60000),
(21, 1, '2019-02-20 00:00:00', 'Bayar Listrik', 'D', 60000),
(22, 1, '2019-02-20 00:00:00', 'Bayar Listrik', 'D', 60000),
(23, 7, '2019-02-20 00:00:00', 'Setor Tunai', 'C', 200000),
(24, 8, '2019-02-20 00:00:00', 'Setor Tunai', 'C', 300000),
(25, 8, '2019-02-21 00:00:00', 'Beli Pulsa', 'D', 34000),
(26, 8, '2019-02-21 00:00:00', 'Beli Pulsa', 'D', 34000),
(27, 8, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 34000),
(28, 8, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 34000),
(29, 8, '2019-02-20 00:00:00', 'Tarik Tunai', 'D', 4000),
(30, 9, '2019-02-20 00:00:00', 'Setor Tunai', 'C', 300000),
(31, 9, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 200000),
(32, 9, '2019-02-20 00:00:00', 'Bayar Listrik', 'D', 20000),
(33, 9, '2019-02-20 00:00:00', 'Setor Tunai', 'C', 1000000),
(34, 9, '2019-02-20 00:00:00', 'Tarik Tunai', 'D', 80000),
(35, 9, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 12000),
(36, 9, '2019-02-20 00:00:00', 'Bayar Listrik', 'D', 88000),
(37, 9, '2019-02-27 00:00:00', 'Bayar Listrik', 'D', 230000),
(38, 9, '2019-02-20 00:00:00', 'Bayar Listrik', 'D', 230000),
(39, 9, '2019-02-20 00:00:00', 'Bayar Listrik', 'D', 230000),
(40, 9, '2019-02-20 00:00:00', 'Beli Pulsa', 'D', 10500),
(41, 10, '2019-02-15 00:00:00', 'Setor Tunai', 'C', 34000),
(42, 10, '2019-02-15 00:00:00', 'Beli Pulsa', 'D', 12000),
(43, 10, '2019-02-15 00:00:00', 'Beli Pulsa', 'D', 10001);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountId`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Account` (`AccountId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `account`
--
ALTER TABLE `account`
  MODIFY `AccountId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FK_Account` FOREIGN KEY (`AccountId`) REFERENCES `account` (`AccountId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
