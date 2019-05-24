-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 24 2019 г., 10:23
-- Версия сервера: 5.5.61
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ann_vis`
--

-- --------------------------------------------------------

--
-- Структура таблицы `anns`
--

CREATE TABLE `anns` (
  `id` varchar(100) NOT NULL,
  `weights` text NOT NULL,
  `structure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `anns`
--

INSERT INTO `anns` (`id`, `weights`, `structure`) VALUES
('adfxchg24', '[[[9.5,1.5,9.5,-2.5,-0.5,3.5,-0.5,11.5,3.5],[1.5,5.5,5.5,1.5,7.5,5.5,-2.5,5.5,3.5],[1.5,-2.5,-0.5,-4.5,1.5,5.5,5.5,1.5,9.5],[7.5,5.5,5.5,3.5,-2.5,1.5,-4.5,-0.5,7.5],[3.5,3.5,5.5,-2.5,7.5,3.5,13.5,-0.5,1.5]],[[1.5,5.5,-2.5,3.5,5.5,-0.5,3.5,-2.5,11.5],[3.5,-4.5,7.5,5.5,3.5,-4.5,-0.5,-4.5,5.5],[-0.5,5.5,-2.5,15.5,-2.5,-0.5,3.5,1.5,1.5],[7.5,-0.5,1.5,-4.5,-4.5,3.5,7.5,-4.5,11.5],[9.5,5.5,1.5,3.5,-6.5,1.5,9.5,5.5,7.5],[1.5,1.5,7.5,9.5,1.5,-0.5,7.5,1.5,-0.5],[3.5,-2.5,11.5,9.5,-4.5,7.5,11.5,7.5,3.5],[5.5,3.5,9.5,7.5,13.5,-4.5,9.5,-4.5,7.5],[5.5,-0.5,-0.5,9.5,-2.5,-0.5,3.5,3.5,-4.5]],[[-0.5,-4.5,13.5,-6.5,3.5],[-0.5,5.5,5.5,3.5,-0.5],[1.5,1.5,1.5,-0.5,9.5],[3.5,5.5,-4.5,-0.5,11.5],[5.5,13.5,-0.5,-0.5,7.5],[3.5,7.5,3.5,5.5,3.5],[7.5,1.5,-4.5,3.5,1.5],[5.5,7.5,5.5,7.5,9.5],[3.5,3.5,5.5,3.5,5.5]]]', '[{\"name\":\"input\",\"type\":\"input\",\"unitsData\":[{\"num\":4,\"ActivationFunction\":\"HyperbolicTangent\",\"names\":[\"answer_speed_fact\",\"base_fact\",\"success_fact\",\"success_fact\",\"theme_fact\"]}]},{\"name\":\"hidden_1\",\"type\":\"hidden\",\"unitsData\":[{\"num\":9,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"hidden_2\",\"type\":\"hidden\",\"unitsData\":[{\"num\":9,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"output\",\"type\":\"output\",\"unitsData\":[{\"ActivationFunction\":\"HyperbolicTangent\",\"names\":[\"answer_speed_weight\",\"base_weight\"]},{\"ActivationFunction\":\"UnitLinear\",\"names\":[\"success_weight\"]},{\"ActivationFunction\":\"UnitLinear\",\"names\":[\"success_weight\"]},{\"ActivationFunction\":\"ZeroLinear\",\"names\":[\"right_answer_difference_weight\"]}]}]'),
('fwfe34232', '[[[8.5,12.5,6.5,6.5,-3.5,10.5,10.5,10.5,6.5],[4.5,6.5,10.5,4.5,-5.5,-3.5,2.5,4.5,2.5],[4.5,4.5,-1.5,6.5,4.5,-1.5,6.5,2.5,-1.5],[8.5,-5.5,-3.5,8.5,0.5,16.5,-1.5,12.5,-1.5],[0.5,4.5,4.5,4.5,0.5,6.5,2.5,-3.5,-1.5]],[[0.5,6.5,2.5,6.5,-5.5,2.5,-1.5,-7.5,-5.5],[0.5,4.5,12.5,6.5,6.5,4.5,6.5,2.5,-1.5],[10.5,0.5,2.5,0.5,0.5,-1.5,4.5,0.5,-9.5],[0.5,6.5,10.5,2.5,10.5,2.5,8.5,-13.5,6.5],[4.5,-7.5,4.5,14.5,0.5,2.5,8.5,4.5,10.5],[8.5,4.5,10.5,-5.5,10.5,0.5,0.5,2.5,2.5],[4.5,10.5,8.5,-7.5,6.5,12.5,2.5,2.5,2.5],[8.5,6.5,-1.5,8.5,4.5,2.5,4.5,-3.5,2.5],[4.5,8.5,6.5,-5.5,-5.5,-5.5,-7.5,14.5,10.5]],[[-3.5,4.5,4.5,4.5,4.5,4.5,12.5],[4.5,4.5,-3.5,4.5,2.5,8.5,4.5],[6.5,0.5,2.5,2.5,6.5,0.5,0.5],[14.5,2.5,8.5,6.5,-5.5,2.5,-1.5],[-7.5,6.5,2.5,2.5,10.5,6.5,4.5],[-3.5,6.5,6.5,6.5,6.5,-3.5,14.5],[2.5,8.5,4.5,2.5,-1.5,-1.5,6.5],[4.5,8.5,4.5,10.5,6.5,-3.5,6.5],[4.5,-1.5,8.5,-1.5,4.5,-5.5,0.5]],[[-5.5,2.5,10.5,2.5],[6.5,8.5,2.5,8.5],[14.5,4.5,2.5,4.5],[-1.5,0.5,10.5,10.5],[0.5,6.5,4.5,2.5],[4.5,8.5,-1.5,6.5],[2.5,10.5,2.5,10.5]]]', '[{\"name\":\"input\",\"type\":\"input\",\"unitsData\":[{\"num\":4,\"ActivationFunction\":\"HyperbolicTangent\",\"names\":[\"answer_speed_fact\",\"base_fact\",\"success_fact\",\"success_fact\",\"theme_fact\"]}]},{\"name\":\"hidden_1\",\"type\":\"hidden\",\"unitsData\":[{\"num\":9,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"hidden_2\",\"type\":\"hidden\",\"unitsData\":[{\"num\":9,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"hidden_3\",\"type\":\"hidden\",\"unitsData\":[{\"num\":7,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"output\",\"type\":\"output\",\"unitsData\":[{\"ActivationFunction\":\"HyperbolicTangent\",\"names\":[\"answer_speed_weight\",\"base_weight\"]},{\"ActivationFunction\":\"UnitLinear\",\"names\":[\"success_weight\"]},{\"ActivationFunction\":\"ZeroLinear\",\"names\":[\"right_answer_difference_weight\"]}]}]'),
('fwfe3ud62', '[[[3.5,17.5,-0.5,11.5,17.5,11.5,19.5,11.5,7.5],[23.5,17.5,-0.5,13.5,-2.5,19.5,7.5,5.5,3.5],[1.5,11.5,9.5,-14.5,1.5,11.5,3.5,-4.5,3.5],[5.5,7.5,13.5,17.5,9.5,15.5,-12.5,5.5,17.5],[-2.5,9.5,5.5,11.5,13.5,7.5,1.5,17.5,19.5]],[[15.5,7.5,-10.5,31.5,3.5,-2.5,11.5,9.5,1.5],[-4.5,11.5,1.5,11.5,11.5,17.5,27.5,11.5,-12.5],[1.5,9.5,3.5,11.5,1.5,19.5,-0.5,3.5,5.5],[11.5,29.5,-0.5,19.5,9.5,15.5,11.5,-2.5,-2.5],[3.5,3.5,15.5,-16.5,15.5,5.5,25.5,13.5,13.5],[15.5,11.5,11.5,-2.5,23.5,15.5,11.5,-6.5,1.5],[-0.5,1.5,15.5,11.5,5.5,15.5,9.5,19.5,-14.5],[1.5,-0.5,-4.5,-2.5,9.5,7.5,-2.5,19.5,7.5],[29.5,3.5,7.5,7.5,5.5,17.5,-8.5,1.5,13.5]],[[-2.5,25.5,35.5,7.5,1.5,23.5,17.5,-4.5,9.5],[15.5,11.5,-8.5,7.5,7.5,3.5,1.5,3.5,13.5],[17.5,5.5,-0.5,3.5,7.5,1.5,-0.5,9.5,15.5],[23.5,5.5,7.5,7.5,1.5,9.5,7.5,17.5,15.5],[9.5,-8.5,17.5,1.5,-6.5,-2.5,7.5,3.5,11.5],[-2.5,5.5,9.5,7.5,11.5,3.5,9.5,7.5,11.5],[23.5,3.5,5.5,5.5,9.5,1.5,7.5,19.5,1.5],[-0.5,15.5,17.5,19.5,5.5,-4.5,5.5,11.5,7.5],[15.5,9.5,5.5,-6.5,13.5,-0.5,15.5,13.5,25.5]],[[25.5,17.5,15.5,13.5,9.5,3.5,25.5,13.5,7.5],[9.5,13.5,1.5,13.5,13.5,17.5,-2.5,9.5,15.5],[9.5,5.5,3.5,5.5,5.5,9.5,11.5,-2.5,-4.5],[19.5,15.5,3.5,-0.5,7.5,-2.5,33.5,5.5,11.5],[-4.5,25.5,7.5,27.5,11.5,-2.5,21.5,15.5,23.5],[15.5,15.5,17.5,11.5,-0.5,15.5,17.5,15.5,11.5],[-10.5,1.5,17.5,7.5,13.5,11.5,1.5,19.5,-12.5],[1.5,25.5,17.5,1.5,15.5,15.5,5.5,17.5,3.5],[-4.5,-0.5,7.5,7.5,1.5,5.5,9.5,9.5,23.5]],[[11.5,15.5,5.5,25.5,1.5],[13.5,9.5,5.5,9.5,19.5],[9.5,7.5,-6.5,-0.5,15.5],[-0.5,7.5,5.5,5.5,5.5],[-8.5,5.5,5.5,9.5,17.5],[17.5,7.5,3.5,5.5,3.5],[13.5,15.5,3.5,15.5,11.5],[7.5,3.5,13.5,5.5,-12.5],[-6.5,13.5,-2.5,-6.5,17.5]]]', '[{\"name\":\"input\",\"type\":\"input\",\"unitsData\":[{\"num\":4,\"ActivationFunction\":\"HyperbolicTangent\",\"names\":[\"answer_speed_fact\",\"base_fact\",\"success_fact\",\"success_fact\",\"theme_fact\"]}]},{\"name\":\"hidden_1\",\"type\":\"hidden\",\"unitsData\":[{\"num\":9,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"hidden_2\",\"type\":\"hidden\",\"unitsData\":[{\"num\":9,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"hidden_3\",\"type\":\"hidden\",\"unitsData\":[{\"num\":9,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"hidden_4\",\"type\":\"hidden\",\"unitsData\":[{\"num\":9,\"ActivationFunction\":\"Areasinus\"}]},{\"name\":\"output\",\"type\":\"output\",\"unitsData\":[{\"ActivationFunction\":\"HyperbolicTangent\",\"names\":[\"answer_speed_weight\",\"base_weight\"]},{\"ActivationFunction\":\"UnitLinear\",\"names\":[\"success_weight\"]},{\"ActivationFunction\":\"UnitLinear\",\"names\":[\"success_weight\"]},{\"ActivationFunction\":\"ZeroLinear\",\"names\":[\"right_answer_difference_weight\"]}]}]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `anns`
--
ALTER TABLE `anns`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
