CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) unsigned NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `isIllegal` varchar(255) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO `items` (`id`, `libelle`, `isIllegal`, `value`, `type`) VALUES
(30, 'Sandwich', '0', 30, 2),
(6, 'Eau', '0', 35, 1),
(97, 'Cigarette', '0', 0, 3),
(95, 'Bouteille d alcool', '0', 0, 5);