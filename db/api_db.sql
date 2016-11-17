-- phpMyAdmin SQL Dump
-- version 4.6.4deb1+deb.cihar.com~xenial.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 17 Lis 2016, 09:10
-- Wersja serwera: 5.7.16-0ubuntu0.16.04.1
-- Wersja PHP: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `api_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Books`
--

CREATE TABLE `Books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Books`
--

INSERT INTO `Books` (`id`, `title`, `author`, `description`) VALUES
(2, 'Harry Potter', 'J.K. Rowling', 'Akcja Harryâ€™ego Pottera toczy siÄ™ w alternatywnej wersji naszej rzeczywistoÅ›ci, w ktÃ³rej istnieje niezaleÅ¼ne spoÅ‚eczeÅ„stwo czarodziejÃ³w; z wÅ‚asnymi szkoÅ‚ami, ministerstwem magii, instytucjami itp. Jest ono ukrywane przed zwyczajnymi, niemagicznymi ludÅºmi (nazywanymi przez czarodziejÃ³w mugolami).\n\nGÅ‚Ã³wnym bohaterem jest Harry Potter, sierota wychowany w spokrewnionej rodzinie mugoli, w wyniku zamordowania jego rodzicÃ³w przez Lorda Voldemorta (jego prawdziwe imiÄ™, uÅ¼ywane w dzieciÅ„stwie to Tom Marvolo Riddle), ktÃ³ry w dniu jedenastych urodzin dowiaduje siÄ™ o swojej przynaleÅ¼noÅ›ci do Å›wiata czarodziejÃ³w od pÃ³Å‚olbrzyma Hagrida, ktÃ³ry byÅ‚ gajowym w Hogwarcie. ChÅ‚opiec rozpoczyna siedmioletniÄ… edukacjÄ™ w Szkole Magii i Czarodziejstwa o nazwie Hogwart, gdzie poznaje przyjaciÃ³Å‚ Rona i HermionÄ™ oraz stawia czoÅ‚a kolejnym przygodom, miÄ™dzy innymi zabicie Bazyliszka w Komnacie Tajemnic, odebranie Quirellowi Kamienia Filozoficznego, wyszarpniÄ™cie Syriusza Blacka z paszczy Ministerstwa, akcja z przepowiedniÄ…, zabranie faÅ‚szywego horkruksa z jaskini. Dalsze poczynania Harryâ€™ego odbywajÄ… siÄ™ poza szkoÅ‚Ä….\n\nNajwaÅ¼niejszÄ… z nich jest walka z najpotÄ™Å¼niejszym czarnoksiÄ™Å¼nikiem wszech czasÃ³w, Lordem Voldemortem, ktÃ³ry zabiÅ‚ rodzicÃ³w Harryâ€™ego, gdy ten miaÅ‚ rok.\n\nAkcja kaÅ¼dej z powieÅ›ci (z wyjÄ…tkiem pojedynczych rozdziaÅ‚Ã³w i retrospekcji) odbywa siÄ™ miÄ™dzy 1991 a 1998 rokiem, zawsze miÄ™dzy wakacjami aÅ¼ do koÅ„ca kolejnego roku szkolnego.'),
(3, 'wiedzmin', 'sapkowski', 'miecz'),
(19, 'wielki mistrz', 'canavan', 'test'),
(93, 'ojciec chszestny', 'niepamietam', 'mafia'),
(95, 'Achaja', 'Zieminski', 'trzytomowa powieÅ›Ä‡ Andrzeja ZiemiaÅ„skiego, klasyfikowana najczÄ™Å›ciej jako fantasy. WystÄ™puje w niej zarÃ³wno magia, jak i zaawansowana technologia. PowieÅ›Ä‡ podzielona jest na trzy tomy, ktÃ³re ukazywaÅ‚y siÄ™ w latach 2002â€“2004 nakÅ‚adem wydawnictwa Fabryka SÅ‚Ã³w. Pierwsze dwa tomy nominowane byÅ‚y do Nagrody im. Janusza A. Zajdla[1]. Drugi tom otrzymaÅ‚ w 2004 roku NagrodÄ™ Nautilus. KontynuacjÄ… jest Pomnik Cesarzowej Achai[2][3].\n\n');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `Books`
--
ALTER TABLE `Books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
