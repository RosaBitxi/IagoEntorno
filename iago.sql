-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Aug 30, 2022 at 07:27 PM
-- Server version: 5.7.39
-- PHP Version: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iago`
--

-- --------------------------------------------------------

--
-- Table structure for table `Monumentos`
--

CREATE TABLE `Monumentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `coord` varchar(500) NOT NULL,
  `vision` varchar(500) NOT NULL,
  `imaxe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Monumentos`
--

INSERT INTO `Monumentos` (`id`, `nome`, `descripcion`, `coord`, `vision`, `imaxe`) VALUES
(1, 'Piramide', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument1.jpg'),
(2, 'Faro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument2.jpg'),
(3, 'Columna', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument3.jpg'),
(4, 'Capilla', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument4.jpg'),
(5, 'Estatua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument5.jpg'),
(6, 'Castillo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument6.jpg'),
(7, 'Fuente', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument7.jpg'),
(8, 'Cúpula', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument8.jpg'),
(9, 'Mármol', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique.', '42.87900820188296, -8.546766705518623', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus pharetra massa non accumsan. Nam et tellus lacinia, ornare arcu sit amet, efficitur enim. Curabitur at mattis lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed urna nisl, efficitur et arcu in, rhoncus consequat arcu. Etiam euismod magna dignissim auctor bibendum. Nunc et velit non orci posuere varius. Cras lacinia dui id lobortis tristique. ', 'monument9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Niveles`
--

CREATE TABLE `Niveles` (
  `id` int(10) NOT NULL,
  `mon1` int(10) NOT NULL COMMENT 'id do monumento correspondente',
  `mon2` int(10) NOT NULL COMMENT 'id do monumento correspondente',
  `mon3` int(10) NOT NULL COMMENT 'id do monumento correspondente',
  `dificultade` enum('fac','med','dif','') NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Niveles`
--

INSERT INTO `Niveles` (`id`, `mon1`, `mon2`, `mon3`, `dificultade`, `nome`) VALUES
(1, 1, 2, 3, 'fac', 'Ruta simple'),
(2, 4, 5, 6, 'med', 'Ruta normal'),
(3, 7, 8, 9, 'dif', 'Ruta comecocos');

-- --------------------------------------------------------

--
-- Table structure for table `UsuarioNivel`
--

CREATE TABLE `UsuarioNivel` (
  `id` int(10) NOT NULL COMMENT 'Clave primaria desta táboa',
  `idUsuario` int(10) NOT NULL COMMENT 'Clave primaria da táboa Usuario',
  `idNivel` int(10) NOT NULL COMMENT 'Clave primaria da táboa Nivel',
  `completado` int(10) NOT NULL COMMENT 'Porcentaxe de nivel completado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UsuarioNivel`
--

INSERT INTO `UsuarioNivel` (`id`, `idUsuario`, `idNivel`, `completado`) VALUES
(1, 5, 1, 0),
(2, 5, 2, 0),
(3, 5, 3, 0),
(4, 6, 1, 0),
(5, 6, 2, 0),
(6, 6, 3, 0),
(7, 7, 1, 0),
(8, 7, 2, 0),
(9, 7, 3, 0),
(10, 8, 1, 0),
(11, 8, 2, 0),
(12, 8, 3, 0),
(13, 9, 1, 0),
(14, 9, 2, 0),
(15, 9, 3, 0),
(16, 10, 1, 0),
(17, 10, 2, 0),
(18, 10, 3, 0),
(19, 11, 1, 0),
(20, 11, 2, 0),
(21, 11, 3, 0),
(22, 12, 1, 0),
(23, 12, 2, 0),
(24, 12, 3, 0),
(25, 13, 1, 0),
(26, 13, 2, 0),
(27, 13, 3, 0),
(28, 14, 1, 0),
(29, 14, 2, 0),
(30, 14, 3, 0),
(31, 15, 1, 0),
(32, 15, 2, 0),
(33, 15, 3, 0),
(34, 16, 1, 0),
(35, 16, 2, 0),
(36, 16, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Usuarios`
--

CREATE TABLE `Usuarios` (
  `id` int(10) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(500) NOT NULL COMMENT 'Codificada a contrasinal',
  `animal` varchar(50) NOT NULL,
  `puntuacion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Usuarios`
--

INSERT INTO `Usuarios` (`id`, `alias`, `email`, `passwd`, `animal`, `puntuacion`) VALUES
(2, 'admin', 'admin@admin.net', '$2y$10$YuA0B.E5zOyLX4mIHiNiAe/QcnU6s86ZvFhWOTjcyWcoFZp8pQJey', 'pantera', 0),
(5, 'user1', 'user1@gmail.com', '$2y$10$gFZOdkvoSmJKGAExzJywj.IBx6nkPW36D0BShR1Ng5jEMwNSi0HAG', 'can', 0),
(6, 'user2', 'user2@gmail.com', '$2y$10$8tgqvRZ2dnePwJLaFZd7P.OxsSGg4cXeMpuQe7UfaFsqdJcAo.kIG', 'gato', 0),
(7, 'user3', 'user3@gmail.com', '$2y$10$EizQj127dP6TLMBcwsr88O4zZKvrupZp8pKmaTw/Z5GFqGgHUxIUm', 'peixe', 0),
(8, 'user4', 'user4@gmail.com', '$2y$10$eNMKW.IqeUgvLfzOXsG3DehJu8OnpeJylp3VTzxcBdEBXadIfNyzq', 'pulpo', 0),
(9, 'user5', 'user5@gmail.com', '$2y$10$MpkbibHGZveo4pxX4.8pJ.zcbIe9YxOS2/Rh0R87MiTAxTl3Cv2g2', 'vieira', 0),
(10, 'user6', 'user6@gmail.com', '$2y$10$LbN77ll.88fLWR/Vu/NRP.2qwc0TujrLT7PnvGGpx8mkuoT4nbQp6', 'camaron', 0),
(11, 'user7', 'user7@gmail.com', '$2y$10$Ho2XW4QtLIk.kN4LCH5yj.FvHKXyAJdHhmFGce7Mt03eJ0ruNx7CW', 'vaca', 0),
(12, 'user8', 'user8@gmail.com', '$2y$10$0vSzqxVK1px5MDApPwUQvOe.s0raISnor0SbTSPlx6otQf1/BEvWm', 'cabalo', 0),
(13, 'user9', 'user9@gmail.com', '$2y$10$ZGjR0oRx2rlLmc1bDjS8ZOzdna3Viu9JVFWQRCZBo4QTL/uqvTpdW', 'rato', 0),
(14, 'user10', 'user10@gmail.com', '$2y$10$AKD4ukqlIPm77rvZOn3Bp./ldnthODfJ.zs9L6QO0BxvTwirPmDsC', 'tigre', 0),
(15, 'user11', 'user11@gmail.com', '$2y$10$zhEV9ts.2O7sVTPB6ob51eZ/XVJsgHkXrorFPOnNqf7chzzk7RRle', 'leon', 0),
(16, 'user12', 'user12@gmail.com', '$2y$10$18HWTz95hEMTGdaJplROi.A7MWTetXINNNJy9PsMn6fDG.rdsj77u', 'mono', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Monumentos`
--
ALTER TABLE `Monumentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Niveles`
--
ALTER TABLE `Niveles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UsuarioNivel`
--
ALTER TABLE `UsuarioNivel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Monumentos`
--
ALTER TABLE `Monumentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Niveles`
--
ALTER TABLE `Niveles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `UsuarioNivel`
--
ALTER TABLE `UsuarioNivel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria desta táboa', AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
