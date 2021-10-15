-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Erstellungszeit: 23. Mai 2019 um 10:51
-- Server-Version: 5.7.26
-- PHP-Version: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `blog`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE `comments` (
  `post_id` int(11) NOT NULL,
  `bsuchername` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `comments`
--

INSERT INTO `comments` (`post_id`, `bsuchername`, `email`, `comment`) VALUES
(1876, 'IBO', 'shekh', 'SKJKBFKHDBF'),
(1876, 'IBO', 'shekh', 'SKJKBFKHDBF'),
(1876, 'IBO', 'shekh', 'SKJKBFKHDBF'),
(1, 'aliqq', 'monh@gmial.comee', '33232323wwww'),
(1, 'aliqq', 'monh@gmial.comee', '33232323wwww'),
(1, 'ibrahim', 'ibo@nmail.com', '6555555adgfsdfgsdfgsdfgsdgf'),
(1, 'ibrahim', 'monh@gmial.com', 'ibo'),
(1, 'adsasd', 'ali12alshsdasdekh@hotam.com', 'wafsdfasdfadfa'),
(2, 'simon', 'siomon@netz98.com', 'Hallo world'),
(3, 'Filip', 'f.ilip@netz98.com', '$namde =ucwords($row[bsuchername]);'),
(1, 'sdfsdf', 'sdfsfsfd', 'sdfsdf'),
(14, 'Iibrahim Shekh Mohammed', 'ibo@nmail.com', 'rschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur Bio'),
(18, 'mohammed', 'Sami@gmail.com', 'AERG'),
(18, 'mohammed', 'Sami@gmail.com', 'AERG'),
(11, 'mohammedda', 'ali12alshsdasdekh@hotam.com', 'ASDFASDF'),
(11, 'ali', 'Sami@gmail.com', 'sdlkf'),
(11, 'ibrahim', 'ali12alshsdasdekh@hotam.com', 'asd'),
(11, 'adsasd', 'Sami@gmail.comasd', 'aSD'),
(22, 'ibrahim', 'monh@gmial.com', ',jhf');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post` text NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post`, `datum`) VALUES
(11, 'Post 1', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(12, 'Post 2', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(13, 'Post 3', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(15, 'Post 4', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(16, 'Post 5', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(17, 'Post 6', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(18, 'Post 7', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(19, 'Post 8', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(20, 'Post 9', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(21, 'Post 10', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(22, 'Post 11', 'Auf der Mikro- und Nanoskala stehen aber auch mikrostrukturelle mechanische Eigenschaften von Materialien im Fokus, die bedeutende Auswirkungen auf das makroskopische Verhalten eines Bauteils haben und dadurch einen wichtigen VerknÃ¼pfungspunkt zwischen Materialwissenschaft und Werkstofftechnik darstellen. Wesentliche Eigenschaften von Materialien werden durch Strukturierung und Funktionalisierung von Grenz- und OberflÃ¤chen erzielt. Selbst im Bereich ingenieurwissenschaftlicher Forschung betrifft dies die Nanoskala und sogar die GrÃ¶ÃŸenordnung von wenigen Atomlagen. Dies gilt ganz erheblich auch fÃ¼r das Themenspektrum der Biomaterialien. Darunter sind synthetische Materialien oder Werkstoffe zu verstehen, die in der Medizin fÃ¼r therapeutische oder diagnostische Zwecke eingesetzt werden kÃ¶nnen. Die Materialwissenschaft umschlieÃŸt dabei zellbiologische Untersuchungen zur BiokompatibilitÃ¤t oder der unmittelbar zur Erforschung der Biomaterialien notwendigen klinischen Test, jedoch ohne vorrangig Aspekte der Biophysik zu behandeln.[2]', '2019-05-22'),
(23, 'Post 12', '\r\nDie Steinzeit ist die frÃ¼heste Epoche der MenschheitsÂ­geschichte. Sie ist durch erhaltÂ­en geblieÂ­benes SteinÂ­gerÃ¤t gekennÂ­zeichnet und begann â€“ nach heutigem ForschungsÂ­stand â€“ mit den Ã¤ltesten als gesichert geltenÂ­den WerkÂ­zeugen der Oldowan-Kultur vor 2,6 Millionen Jahren. Als ProduÂ­zenÂ­ten von SteinÂ­gerÃ¤ten gelten die frÃ¼hen, nur fossil Ã¼berÂ­lieferÂ­ten Menschenarten. Die BezeichÂ­nung â€žSteinÂ­zeitâ€œ wurde 1836 von Christian JÃ¼rgensen Thomsen mit dem DreiÂ­periodenÂ­system eingefÃ¼hrt, als er die UrgeÂ­schichte DÃ¤neÂ­marks nach vorÂ­rangig genutzÂ­ten WerkÂ­stoffen fÃ¼r WerkÂ­zeuge, Waffen und Schmuck in SteinÂ­zeit, BronzeÂ­zeit und EisenÂ­zeit gliederte. Die SteinÂ­zeit Europas wird heute zusÃ¤tzÂ­lich unterÂ­teilt in AltÂ­steinÂ­zeit, MittelÂ­steinÂ­zeit und JungÂ­steinÂ­zeit. Ans Ende der SteinÂ­zeit wird, zeitlich regional sehr unterÂ­schiedÂ­lich, aber stets beginnend mit dem AufkomÂ­men des WerkÂ­stoffs Kupfer, die KupferÂ­steinÂ­zeit gestellt. Erst mit der frÃ¼hen BronzeÂ­zeit wird die SteinÂ­zeit in einigen RegioÂ­nen der Welt abgeÂ­lÃ¶st, in MittelÂ­europa etwa um 2200 v. Chr.', '2019-05-23'),
(24, 'Begriffsdefinition', 'vvvvLIMIT {$limit} OFFSET {$offset}\"LIMIT {$limit} OFFSET {$offset}\"LIMIT {$limit} OFFSET {$offset}\"', '2019-05-23');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `post_id_2` (`post_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
