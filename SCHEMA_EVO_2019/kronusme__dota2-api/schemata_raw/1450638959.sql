/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

CREATE TABLE IF NOT EXISTS `ability_upgrades` (
  `slot_id` mediumint(10) unsigned NOT NULL,
  `ability` smallint(8) unsigned NOT NULL,
  `time` smallint(10) unsigned NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`slot_id`,`level`),
  KEY `FK_ability_upgrades_slots` (`slot_id`),
  CONSTRAINT `FK_ability_upgrades_slots` FOREIGN KEY (`slot_id`) REFERENCES `slots` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `ability_upgrades` DISABLE KEYS */;
/*!40000 ALTER TABLE `ability_upgrades` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `additional_units` (
  `slot_id` mediumint(10) unsigned NOT NULL,
  `unitname` varchar(100) NOT NULL,
  `item_0` smallint(10) unsigned NOT NULL,
  `item_1` smallint(10) unsigned NOT NULL,
  `item_2` smallint(10) unsigned NOT NULL,
  `item_3` smallint(10) unsigned NOT NULL,
  `item_4` smallint(10) unsigned NOT NULL,
  `item_5` smallint(10) unsigned NOT NULL,
  KEY `FK_additional_units_slots` (`slot_id`),
  CONSTRAINT `FK_additional_units_slots` FOREIGN KEY (`slot_id`) REFERENCES `slots` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `additional_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_units` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `items` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost` smallint(5) unsigned NOT NULL,
  `secret_shop` tinyint(3) unsigned NOT NULL,
  `side_shop` tinyint(3) unsigned NOT NULL,
  `recipe` tinyint(3) unsigned NOT NULL,
  `localized_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `name`, `cost`, `secret_shop`, `side_shop`, `recipe`, `localized_name`) VALUES
(0, 'item_empty', 0, 0, 0, 0, 'Empty'),
(1, 'item_blink', 2250, 0, 1, 0, 'Blink Dagger'),
(2, 'item_blades_of_attack', 420, 0, 1, 0, 'Blades of Attack'),
(3, 'item_broadsword', 1200, 0, 1, 0, 'Broadsword'),
(4, 'item_chainmail', 550, 0, 1, 0, 'Chainmail'),
(5, 'item_claymore', 1400, 0, 0, 0, 'Claymore'),
(6, 'item_helm_of_iron_will', 900, 0, 1, 0, 'Helm of Iron Will'),
(7, 'item_javelin', 1500, 0, 0, 0, 'Javelin'),
(8, 'item_mithril_hammer', 1600, 0, 0, 0, 'Mithril Hammer'),
(9, 'item_platemail', 1400, 1, 0, 0, 'Platemail'),
(10, 'item_quarterstaff', 875, 0, 1, 0, 'Quarterstaff'),
(11, 'item_quelling_blade', 200, 0, 1, 0, 'Quelling Blade'),

  (237, 'item_faerie_fire', 75, 0, 0, 0, 'Faerie Fire'),
(12, 'item_ring_of_protection', 175, 0, 0, 0, 'Ring of Protection'),
(182, 'item_stout_shield', 200, 0, 1, 0, 'Stout Shield'),
(246, 'item_recipe_moon_shard', 0, 0, 0, 1, 'Recipe: Moon Shard'),
(247, 'item_moon_shard', 4000, 0, 0, 0, 'Moon Shard'),
(13, 'item_gauntlets', 150, 0, 0, 0, 'Gauntlets of Strength'),
(14, 'item_slippers', 150, 0, 1, 0, 'Slippers of Agility'),
(15, 'item_mantle', 150, 0, 0, 0, 'Mantle of Intelligence'),
(16, 'item_branches', 50, 0, 0, 0, 'Iron Branch'),
(17, 'item_belt_of_strength', 450, 0, 1, 0, 'Belt of Strength'),
(18, 'item_boots_of_elves', 450, 0, 1, 0, 'Band of Elvenskin'),
(19, 'item_robe', 450, 0, 1, 0, 'Robe of the Magi'),
(20, 'item_circlet', 165, 0, 0, 0, 'Circlet'),
(21, 'item_ogre_axe', 1000, 0, 0, 0, 'Ogre Club'),
(22, 'item_blade_of_alacrity', 1000, 0, 0, 0, 'Blade of Alacrity'),
(23, 'item_staff_of_wizardry', 1000, 0, 0, 0, 'Staff of Wizardry'),
(24, 'item_ultimate_orb', 2100, 1, 0, 0, 'Ultimate Orb'),
(25, 'item_gloves', 500, 0, 1, 0, 'Gloves of Haste'),
(26, 'item_lifesteal', 900, 0, 1, 0, 'Morbid Mask'),
(27, 'item_ring_of_regen', 350, 0, 1, 0, 'Ring of Regen'),
(28, 'item_sobi_mask', 325, 0, 1, 0, 'Sage\'s Mask'),
(29, 'item_boots', 400, 0, 1, 0, 'Boots of Speed'),
(30, 'item_gem', 900, 0, 0, 0, 'Gem of True Sight'),
(31, 'item_cloak', 550, 0, 1, 0, 'Cloak'),
(32, 'item_talisman_of_evasion', 1800, 1, 0, 0, 'Talisman of Evasion'),
(33, 'item_cheese', 1000, 0, 0, 0, 'Cheese'),
(34, 'item_magic_stick', 200, 0, 1, 0, 'Magic Stick'),
(35, 'item_recipe_magic_wand', 0, 0, 0, 1, 'Recipe: Magic Wand'),
(36, 'item_magic_wand', 465, 0, 0, 0, 'Magic Wand'),
(37, 'item_ghost', 1500, 0, 0, 0, 'Ghost Scepter'),
(38, 'item_clarity', 50, 0, 0, 0, 'Clarity'),
(216, 'item_enchanted_mango', 125, 0, 0, 0, 'Enchanted Mango'),
(39, 'item_flask', 110, 0, 0, 0, 'Healing Salve'),
(40, 'item_dust', 180, 0, 0, 0, 'Dust of Appearance'),
(41, 'item_bottle', 660, 0, 1, 0, 'Bottle'),
(42, 'item_ward_observer', 75, 0, 0, 0, 'Observer Ward'),
(43, 'item_ward_sentry', 200, 0, 0, 0, 'Sentry Ward'),
(217, 'item_recipe_ward_dispenser', 0, 0, 0, 1, 'Recipe: Observer and Sentry Wards'),
(218, 'item_ward_dispenser', 275, 0, 0, 0, 'Observer and Sentry Wards'),
(44, 'item_tango', 125, 0, 0, 0, 'Tango'),
(241, 'item_tango_single', 30, 0, 0, 0, 'Tango (Shared)'),
(45, 'item_courier', 100, 0, 0, 0, 'Animal Courier'),
(46, 'item_tpscroll', 75, 0, 1, 0, 'Town Portal Scroll'),
(47, 'item_recipe_travel_boots', 2000, 0, 0, 1, 'Recipe: Boots of Travel'),
(219, 'item_recipe_travel_boots_2', 0, 0, 0, 1, 'Recipe: Boots of Travel'),
(48, 'item_travel_boots', 2450, 0, 0, 0, 'Boots of Travel'),
(220, 'item_travel_boots_2', 4450, 0, 0, 0, 'Boots of Travel'),
(49, 'item_recipe_phase_boots', 0, 0, 0, 1, 'Recipe: Phase Boots'),
(50, 'item_phase_boots', 1290, 0, 0, 0, 'Phase Boots'),
(51, 'item_demon_edge', 2400, 1, 0, 0, 'Demon Edge'),
(52, 'item_eagle', 3200, 1, 0, 0, 'Eaglesong'),
(53, 'item_reaver', 3000, 1, 0, 0, 'Reaver'),
(54, 'item_relic', 3800, 1, 0, 0, 'Sacred Relic'),
(55, 'item_hyperstone', 2000, 1, 0, 0, 'Hyperstone'),
(56, 'item_ring_of_health', 850, 0, 1, 0, 'Ring of Health'),
(57, 'item_void_stone', 850, 0, 1, 0, 'Void Stone'),
(58, 'item_mystic_staff', 2700, 1, 0, 0, 'Mystic Staff'),
(59, 'item_energy_booster', 900, 1, 1, 0, 'Energy Booster'),
(60, 'item_point_booster', 1200, 1, 0, 0, 'Point Booster'),
(61, 'item_vitality_booster', 1100, 1, 1, 0, 'Vitality Booster'),
(62, 'item_recipe_power_treads', 0, 0, 0, 1, 'Recipe: Power Treads'),
(63, 'item_power_treads', 1400, 0, 0, 0, 'Power Treads'),
(64, 'item_recipe_hand_of_midas', 1550, 0, 0, 1, 'Recipe: Hand of Midas'),
(65, 'item_hand_of_midas', 2050, 0, 0, 0, 'Hand of Midas'),
(66, 'item_recipe_oblivion_staff', 0, 0, 0, 1, 'Recipe: Oblivion Staff'),
(67, 'item_oblivion_staff', 1650, 0, 0, 0, 'Oblivion Staff'),
(68, 'item_recipe_pers', 0, 0, 0, 1, 'Recipe: Perseverance'),
(69, 'item_pers', 1700, 0, 0, 0, 'Perseverance'),
(70, 'item_recipe_poor_mans_shield', 0, 0, 0, 1, 'Recipe: Poor Man\'s Shield'),
(71, 'item_poor_mans_shield', 500, 0, 0, 0, 'Poor Man\'s Shield'),
(72, 'item_recipe_bracer', 210, 0, 0, 1, 'Recipe: Bracer'),
(73, 'item_bracer', 525, 0, 0, 0, 'Bracer'),
(74, 'item_recipe_wraith_band', 170, 0, 0, 1, 'Recipe: Wraith Band'),
(75, 'item_wraith_band', 485, 0, 0, 0, 'Wraith Band'),
(76, 'item_recipe_null_talisman', 155, 0, 0, 1, 'Recipe: Null Talisman'),
(77, 'item_null_talisman', 470, 0, 0, 0, 'Null Talisman'),
(78, 'item_recipe_mekansm', 900, 0, 0, 1, 'Recipe: Mekansm'),
(79, 'item_mekansm', 2300, 0, 0, 0, 'Mekansm'),
(80, 'item_recipe_vladmir', 300, 0, 0, 1, 'Recipe: Vladmir\'s Offering'),
(81, 'item_vladmir', 2300, 0, 0, 0, 'Vladmir\'s Offering'),
(84, 'item_flying_courier', 200, 0, 0, 0, 'Flying Courier'),
(85, 'item_recipe_buckler', 200, 0, 0, 1, 'Recipe: Buckler'),
(86, 'item_buckler', 800, 0, 0, 0, 'Buckler'),
(87, 'item_recipe_ring_of_basilius', 0, 0, 0, 1, 'Recipe: Ring of Basilius'),
(88, 'item_ring_of_basilius', 500, 0, 0, 0, 'Ring of Basilius'),
(89, 'item_recipe_pipe', 800, 0, 0, 1, 'Recipe: Pipe of Insight'),
(90, 'item_pipe', 3500, 0, 0, 0, 'Pipe of Insight'),
(91, 'item_recipe_urn_of_shadows', 250, 0, 0, 1, 'Recipe: Urn of Shadows'),
(92, 'item_urn_of_shadows', 875, 0, 0, 0, 'Urn of Shadows'),
(93, 'item_recipe_headdress', 200, 0, 0, 1, 'Recipe: Headdress'),
(94, 'item_headdress', 600, 0, 0, 0, 'Headdress'),
(95, 'item_recipe_sheepstick', 0, 0, 0, 1, 'Recipe: Scythe of Vyse'),
(96, 'item_sheepstick', 5650, 0, 0, 0, 'Scythe of Vyse'),
(97, 'item_recipe_orchid', 775, 0, 0, 1, 'Recipe: Orchid Malevolence'),
(98, 'item_orchid', 4075, 0, 0, 0, 'Orchid Malevolence'),
(99, 'item_recipe_cyclone', 650, 0, 0, 1, 'Recipe: Eul\'s Scepter of Divinity'),
(100, 'item_cyclone', 2825, 0, 0, 0, 'Eul\'s Scepter of Divinity'),
(233, 'item_recipe_aether_lens', 0, 0, 0, 1, 'Recipe: Aether Lens'),
(232, 'item_aether_lens', 2350, 0, 0, 0, 'Aether Lens'),
(101, 'item_recipe_force_staff', 900, 0, 0, 1, 'Recipe: Force Staff'),
(102, 'item_force_staff', 2250, 0, 0, 0, 'Force Staff'),
(103, 'item_recipe_dagon', 1250, 0, 0, 1, 'Recipe: Dagon'),
(197, 'item_recipe_dagon_2', 0, 0, 0, 1, 'Recipe: Dagon'),
(198, 'item_recipe_dagon_3', 0, 0, 0, 1, 'Recipe: Dagon'),
(199, 'item_recipe_dagon_4', 0, 0, 0, 1, 'Recipe: Dagon'),
(200, 'item_recipe_dagon_5', 0, 0, 0, 1, 'Recipe: Dagon'),
(104, 'item_dagon', 2720, 0, 0, 0, 'Dagon'),
(201, 'item_dagon_2', 3970, 0, 0, 0, 'Dagon'),
(202, 'item_dagon_3', 5220, 0, 0, 0, 'Dagon'),
(203, 'item_dagon_4', 6470, 0, 0, 0, 'Dagon'),
(204, 'item_dagon_5', 7720, 0, 0, 0, 'Dagon'),
(105, 'item_recipe_necronomicon', 1200, 0, 0, 1, 'Recipe: Necronomicon'),
(191, 'item_recipe_necronomicon_2', 0, 0, 0, 1, 'Recipe: Necronomicon'),
(192, 'item_recipe_necronomicon_3', 0, 0, 0, 1, 'Recipe: Necronomicon'),
(106, 'item_necronomicon', 2700, 0, 0, 0, 'Necronomicon'),
(193, 'item_necronomicon_2', 3950, 0, 0, 0, 'Necronomicon'),
(194, 'item_necronomicon_3', 5200, 0, 0, 0, 'Necronomicon'),
(107, 'item_recipe_ultimate_scepter', 0, 0, 0, 1, 'Recipe: Aghanim\'s Scepter'),
(108, 'item_ultimate_scepter', 4200, 0, 0, 0, 'Aghanim\'s Scepter'),
(109, 'item_recipe_refresher', 1800, 0, 0, 1, 'Recipe: Refresher Orb'),
(110, 'item_refresher', 5200, 0, 0, 0, 'Refresher Orb'),
(111, 'item_recipe_assault', 1300, 0, 0, 1, 'Recipe: Assault Cuirass'),
(112, 'item_assault', 5250, 0, 0, 0, 'Assault Cuirass'),
(113, 'item_recipe_heart', 1400, 0, 0, 1, 'Recipe: Heart of Tarrasque'),
(114, 'item_heart', 5500, 0, 0, 0, 'Heart of Tarrasque'),
(115, 'item_recipe_black_king_bar', 1375, 0, 0, 1, 'Recipe: Black King Bar'),
(116, 'item_black_king_bar', 3975, 0, 0, 0, 'Black King Bar'),
(117, 'item_aegis', 0, 0, 0, 0, 'Aegis of the Immortal'),
(118, 'item_recipe_shivas_guard', 600, 0, 0, 1, 'Recipe: Shiva\'s Guard'),
(119, 'item_shivas_guard', 4700, 0, 0, 0, 'Shiva\'s Guard'),
(120, 'item_recipe_bloodstone', 900, 0, 0, 1, 'Recipe: Bloodstone'),
(121, 'item_bloodstone', 4900, 0, 0, 0, 'Bloodstone'),
(122, 'item_recipe_sphere', 1325, 0, 0, 1, 'Recipe: Linken\'s Sphere'),
(123, 'item_sphere', 5125, 0, 0, 0, 'Linken\'s Sphere'),
(221, 'item_recipe_lotus_orb', 900, 0, 0, 1, 'Recipe: Lotus Orb'),
(226, 'item_lotus_orb', 4000, 0, 0, 0, 'Lotus Orb'),
(124, 'item_recipe_vanguard', 0, 0, 0, 1, 'Recipe: Vanguard'),
(125, 'item_vanguard', 2150, 0, 0, 0, 'Vanguard'),
(243, 'item_recipe_crimson_guard', 600, 0, 0, 1, 'Recipe: Crimson Guard'),
(242, 'item_crimson_guard', 3550, 0, 0, 0, 'Crimson Guard'),
(126, 'item_recipe_blade_mail', 0, 0, 0, 1, 'Recipe: Blade Mail'),
(127, 'item_blade_mail', 2200, 0, 0, 0, 'Blade Mail'),
(128, 'item_recipe_soul_booster', 0, 0, 0, 1, 'Recipe: Soul Booster'),
(129, 'item_soul_booster', 3200, 0, 0, 0, 'Soul Booster'),
(130, 'item_recipe_hood_of_defiance', 0, 0, 0, 1, 'Recipe: Hood of Defiance'),
(131, 'item_hood_of_defiance', 2100, 0, 0, 0, 'Hood of Defiance'),
(132, 'item_recipe_rapier', 0, 0, 0, 1, 'Recipe: Divine Rapier'),
(133, 'item_rapier', 6200, 0, 0, 0, 'Divine Rapier'),
(134, 'item_recipe_monkey_king_bar', 0, 0, 0, 1, 'Recipe: Monkey King Bar'),
(135, 'item_monkey_king_bar', 5400, 0, 0, 0, 'Monkey King Bar'),
(136, 'item_recipe_radiance', 1350, 0, 0, 1, 'Recipe: Radiance'),
(137, 'item_radiance', 5150, 0, 0, 0, 'Radiance'),
(138, 'item_recipe_butterfly', 0, 0, 0, 1, 'Recipe: Butterfly'),
(139, 'item_butterfly', 5875, 0, 0, 0, 'Butterfly'),
(140, 'item_recipe_greater_crit', 1000, 0, 0, 1, 'Recipe: Daedalus'),
(141, 'item_greater_crit', 5520, 0, 0, 0, 'Daedalus'),
(142, 'item_recipe_basher', 1000, 0, 0, 1, 'Recipe: Skull Basher'),
(143, 'item_basher', 2950, 0, 0, 0, 'Skull Basher'),
(144, 'item_recipe_bfury', 0, 0, 0, 1, 'Recipe: Battle Fury'),
(145, 'item_bfury', 4525, 0, 0, 0, 'Battle Fury'),
(146, 'item_recipe_manta', 800, 0, 0, 1, 'Recipe: Manta Style'),
(147, 'item_manta', 4950, 0, 0, 0, 'Manta Style'),
(148, 'item_recipe_lesser_crit', 500, 0, 0, 1, 'Recipe: Crystalys'),
(149, 'item_lesser_crit', 2120, 0, 0, 0, 'Crystalys'),
(234, 'item_recipe_dragon_lance', 0, 0, 0, 1, 'Recipe: Dragon Lance'),
(236, 'item_dragon_lance', 1875, 0, 0, 0, 'Dragon Lance'),
(150, 'item_recipe_armlet', 500, 0, 0, 1, 'Recipe: Armlet of Mordiggian'),
(151, 'item_armlet', 2320, 0, 0, 0, 'Armlet of Mordiggian'),
(183, 'item_recipe_invis_sword', 0, 0, 0, 1, 'Recipe: Shadow Blade'),
(152, 'item_invis_sword', 2800, 0, 0, 0, 'Shadow Blade'),
(248, 'item_recipe_silver_edge', 600, 0, 0, 1, 'Recipe: Silver Edge'),
(249, 'item_silver_edge', 5450, 0, 0, 0, 'Silver Edge'),
(153, 'item_recipe_sange_and_yasha', 0, 0, 0, 1, 'Recipe: Sange and Yasha'),
(154, 'item_sange_and_yasha', 4100, 0, 0, 0, 'Sange and Yasha'),
(155, 'item_recipe_satanic', 1100, 0, 0, 1, 'Recipe: Satanic'),
(156, 'item_satanic', 5900, 0, 0, 0, 'Satanic'),
(157, 'item_recipe_mjollnir', 900, 0, 0, 1, 'Recipe: Mjollnir'),
(158, 'item_mjollnir', 5700, 0, 0, 0, 'Mjollnir'),
(159, 'item_recipe_skadi', 0, 0, 0, 1, 'Recipe: Eye of Skadi'),
(160, 'item_skadi', 5675, 0, 0, 0, 'Eye of Skadi'),
(161, 'item_recipe_sange', 600, 0, 0, 1, 'Recipe: Sange'),
(162, 'item_sange', 2050, 0, 0, 0, 'Sange'),
(163, 'item_recipe_helm_of_the_dominator', 0, 0, 0, 1, 'Recipe: Helm of the Dominator'),
(164, 'item_helm_of_the_dominator', 1800, 0, 0, 0, 'Helm of the Dominator'),
(165, 'item_recipe_maelstrom', 700, 0, 0, 1, 'Recipe: Maelstrom'),
(166, 'item_maelstrom', 2800, 0, 0, 0, 'Maelstrom'),
(167, 'item_recipe_desolator', 300, 0, 0, 1, 'Recipe: Desolator'),
(168, 'item_desolator', 3500, 0, 0, 0, 'Desolator'),
(169, 'item_recipe_yasha', 600, 0, 0, 1, 'Recipe: Yasha'),
(170, 'item_yasha', 2050, 0, 0, 0, 'Yasha'),
(171, 'item_recipe_mask_of_madness', 900, 0, 0, 1, 'Recipe: Mask of Madness'),
(172, 'item_mask_of_madness', 1800, 0, 0, 0, 'Mask of Madness'),
(173, 'item_recipe_diffusal_blade', 700, 0, 0, 1, 'Recipe: Diffusal Blade'),
(195, 'item_recipe_diffusal_blade_2', 0, 0, 0, 1, 'Recipe: Diffusal Blade'),
(174, 'item_diffusal_blade', 3150, 0, 0, 0, 'Diffusal Blade'),
(196, 'item_diffusal_blade_2', 3850, 0, 0, 0, 'Diffusal Blade'),
(175, 'item_recipe_ethereal_blade', 0, 0, 0, 1, 'Recipe: Ethereal Blade'),
(176, 'item_ethereal_blade', 4700, 0, 0, 0, 'Ethereal Blade'),
(177, 'item_recipe_soul_ring', 125, 0, 0, 1, 'Recipe: Soul Ring'),
(178, 'item_soul_ring', 800, 0, 0, 0, 'Soul Ring'),
(179, 'item_recipe_arcane_boots', 0, 0, 0, 1, 'Recipe: Arcane Boots'),
(180, 'item_arcane_boots', 1350, 0, 0, 0, 'Arcane Boots'),
(228, 'item_recipe_octarine_core', 0, 0, 0, 1, 'Recipe: Octarine Core'),
(235, 'item_octarine_core', 5900, 0, 0, 0, 'Octarine Core'),
(181, 'item_orb_of_venom', 275, 0, 1, 0, 'Orb of Venom'),
(184, 'item_recipe_ancient_janggo', 875, 0, 0, 1, 'Recipe: Drum of Endurance'),
(185, 'item_ancient_janggo', 1850, 0, 0, 0, 'Drum of Endurance'),
(186, 'item_recipe_medallion_of_courage', 325, 0, 0, 1, 'Recipe: Medallion of Courage'),
(187, 'item_medallion_of_courage', 1200, 0, 0, 0, 'Medallion of Courage'),
(227, 'item_recipe_solar_crest', 0, 0, 0, 1, 'Recipe: Solar Crest'),
(229, 'item_solar_crest', 3000, 0, 0, 0, 'Solar Crest'),
(188, 'item_smoke_of_deceit', 50, 0, 0, 0, 'Smoke of Deceit'),
(189, 'item_recipe_veil_of_discord', 0, 0, 0, 1, 'Recipe: Veil of Discord'),
(190, 'item_veil_of_discord', 2270, 0, 0, 0, 'Veil of Discord'),
(230, 'item_recipe_guardian_greaves', 1650, 0, 0, 1, 'Recipe: Guardian Greaves'),
(231, 'item_guardian_greaves', 5300, 0, 0, 0, 'Guardian Greaves'),
(205, 'item_recipe_rod_of_atos', 0, 0, 0, 1, 'Recipe: Rod of Atos'),
(206, 'item_rod_of_atos', 3100, 0, 0, 0, 'Rod of Atos'),
(238, 'item_recipe_iron_talon', 125, 0, 0, 1, 'Recipe: Iron Talon'),
(239, 'item_iron_talon', 500, 0, 0, 0, 'Iron Talon'),
(207, 'item_recipe_abyssal_blade', 0, 0, 0, 1, 'Recipe: Abyssal Blade'),
(208, 'item_abyssal_blade', 6750, 0, 0, 0, 'Abyssal Blade'),
(209, 'item_recipe_heavens_halberd', 0, 0, 0, 1, 'Recipe: Heaven\'s Halberd'),
(210, 'item_heavens_halberd', 3850, 0, 0, 0, 'Heaven\'s Halberd'),
(211, 'item_recipe_ring_of_aquila', 0, 0, 0, 1, 'Recipe: Ring of Aquila'),
(212, 'item_ring_of_aquila', 1010, 0, 0, 0, 'Ring of Aquila'),
(213, 'item_recipe_tranquil_boots', 0, 0, 0, 1, 'Recipe: Tranquil Boots'),
(214, 'item_tranquil_boots', 1000, 0, 0, 0, 'Tranquil Boots'),
(215, 'item_shadow_amulet', 1400, 0, 0, 0, 'Shadow Amulet'),
(253, 'item_recipe_glimmer_cape', 0, 0, 0, 1, 'Recipe: Glimmer Cape'),
(254, 'item_glimmer_cape', 1950, 0, 0, 0, 'Glimmer Cape'),
(1000, 'item_halloween_candy_corn', 0, 0, 0, 0, 'Greevil Taffy'),
(1001, 'item_mystery_hook', 0, 0, 0, 0, 'DOTA_Tooltip_Ability_item_mystery_hook'),
(1002, 'item_mystery_arrow', 0, 0, 0, 0, 'DOTA_Tooltip_Ability_item_mystery_arrow'),
(1003, 'item_mystery_missile', 0, 0, 0, 0, 'DOTA_Tooltip_Ability_item_mystery_missile'),
(1004, 'item_mystery_toss', 0, 0, 0, 0, 'DOTA_Tooltip_Ability_item_mystery_toss'),
(1005, 'item_mystery_vacuum', 0, 0, 0, 0, 'DOTA_Tooltip_Ability_item_mystery_vacuum'),
(1006, 'item_halloween_rapier', 6200, 0, 0, 0, 'DOTA_Tooltip_Ability_item_halloween_rapier'),
(1007, 'item_greevil_whistle', 0, 0, 0, 0, 'Greevil Whistle'),
(1008, 'item_greevil_whistle_toggle', 0, 0, 0, 0, 'Greevil Whistle'),
(1009, 'item_present', 0, 0, 0, 0, 'A Gift!'),
(1010, 'item_winter_stocking', 0, 0, 0, 0, 'Xmas Stocking'),
(1011, 'item_winter_skates', 0, 0, 0, 0, 'Speed Skates'),
(1012, 'item_winter_cake', 0, 0, 0, 0, 'Fruit-bit Cake'),
(1013, 'item_winter_cookie', 0, 0, 0, 0, 'Wizard Cookie'),
(1014, 'item_winter_coco', 0, 0, 0, 0, 'Cocoa with Marshmallows'),
(1015, 'item_winter_ham', 0, 0, 0, 0, 'Clove Studded Ham'),
(1016, 'item_winter_kringle', 0, 0, 0, 0, 'Kringle'),
(1017, 'item_winter_mushroom', 0, 0, 0, 0, 'Snow Mushroom'),
(1018, 'item_winter_greevil_treat', 0, 0, 0, 0, 'Greevil Treat'),
(1019, 'item_winter_greevil_garbage', 0, 0, 0, 0, 'Greevil Chow'),
(1020, 'item_winter_greevil_chewy', 0, 0, 0, 0, 'Greevil Blink Bone');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `leagues` (
  `leagueid` mediumint(4) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(2000) NOT NULL DEFAULT '',
  `tournament_url` varchar(200) DEFAULT '',
  `itemdef` int(11) DEFAULT NULL,
  `is_finished` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`leagueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `leagues` DISABLE KEYS */;
/*!40000 ALTER TABLE `leagues` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `league_prize_pools` (
  `league_id` mediumint(8) unsigned NOT NULL,
  `prize_pool` int(10) unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`league_id`,`date`),
  CONSTRAINT `FK_league_prize_pools_leagues` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`leagueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `league_prize_pools` DISABLE KEYS */;
/*!40000 ALTER TABLE `league_prize_pools` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `matches` (
  `match_id` int(20) unsigned NOT NULL,
  `season` tinyint(4) unsigned DEFAULT NULL,
  `radiant_win` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `duration` smallint(11) unsigned NOT NULL DEFAULT '0',
  `first_blood_time` smallint(11) unsigned NOT NULL DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `match_seq_num` bigint(20) unsigned DEFAULT NULL,
  `game_mode` tinyint(4) NOT NULL,
  `tower_status_radiant` int(11) unsigned NOT NULL DEFAULT '0',
  `tower_status_dire` int(11) unsigned NOT NULL DEFAULT '0',
  `barracks_status_radiant` int(11) unsigned NOT NULL DEFAULT '0',
  `barracks_status_dire` int(11) unsigned NOT NULL DEFAULT '0',
  `replay_salt` tinyint(4) DEFAULT NULL,
  `lobby_type` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `human_players` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `leagueid` mediumint(4) unsigned NOT NULL DEFAULT '0',
  `cluster` smallint(6) unsigned NOT NULL DEFAULT '0',
  `positive_votes` int(11) unsigned NOT NULL DEFAULT '0',
  `negative_votes` int(11) unsigned NOT NULL DEFAULT '0',
  `radiant_team_id` int(11) unsigned DEFAULT NULL,
  `radiant_name` varchar(200) DEFAULT NULL,
  `radiant_logo` varchar(32) DEFAULT NULL,
  `radiant_team_complete` tinyint(3) unsigned DEFAULT NULL,
  `dire_team_id` int(11) unsigned DEFAULT NULL,
  `dire_name` varchar(200) DEFAULT NULL,
  `dire_logo` varchar(32) DEFAULT NULL,
  `dire_team_complete` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `FK_matches_leagues` (`leagueid`),
  CONSTRAINT `FK_matches_leagues` FOREIGN KEY (`leagueid`) REFERENCES `leagues` (`leagueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `picks_bans` (
  `id` mediumint(20) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(20) unsigned NOT NULL,
  `is_pick` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hero_id` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `team` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_picks_bans_matches` (`match_id`),
  CONSTRAINT `FK_picks_bans_matches` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `picks_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `picks_bans` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `slots` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(20) unsigned NOT NULL DEFAULT '0',
  `account_id` int(20) unsigned NOT NULL DEFAULT '0',
  `hero_id` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `player_slot` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `item_0` smallint(10) unsigned NOT NULL DEFAULT '0',
  `item_1` smallint(10) unsigned NOT NULL DEFAULT '0',
  `item_2` smallint(10) unsigned NOT NULL DEFAULT '0',
  `item_3` smallint(10) unsigned NOT NULL DEFAULT '0',
  `item_4` smallint(10) unsigned NOT NULL DEFAULT '0',
  `item_5` smallint(10) unsigned NOT NULL DEFAULT '0',
  `kills` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `deaths` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `assists` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `leaver_status` tinyint(10) NOT NULL DEFAULT '0',
  `gold` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `last_hits` smallint(10) unsigned NOT NULL DEFAULT '0',
  `denies` smallint(10) unsigned NOT NULL DEFAULT '0',
  `gold_per_min` smallint(10) unsigned NOT NULL DEFAULT '0',
  `xp_per_min` smallint(10) unsigned NOT NULL DEFAULT '0',
  `gold_spent` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `hero_damage` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `tower_damage` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `hero_healing` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_slots_users` (`account_id`),
  KEY `FK_slots_matches` (`match_id`),
  KEY `FK_slots_items` (`item_0`),
  KEY `FK_slots_items_2` (`item_1`),
  KEY `FK_slots_items_3` (`item_2`),
  KEY `FK_slots_items_4` (`item_3`),
  KEY `FK_slots_items_5` (`item_4`),
  KEY `FK_slots_items_6` (`item_5`),
  CONSTRAINT `FK_slots_items` FOREIGN KEY (`item_0`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_slots_items_2` FOREIGN KEY (`item_1`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_slots_items_3` FOREIGN KEY (`item_2`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_slots_items_4` FOREIGN KEY (`item_3`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_slots_items_5` FOREIGN KEY (`item_4`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_slots_items_6` FOREIGN KEY (`item_5`) REFERENCES `items` (`id`),
  CONSTRAINT `FK_slots_matches` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  CONSTRAINT `FK_slots_users` FOREIGN KEY (`account_id`) REFERENCES `users` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `slots` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `users` (
  `account_id` int(20) unsigned NOT NULL DEFAULT '0',
  `personaname` varchar(50) NOT NULL DEFAULT '',
  `steamid` varchar(64) NOT NULL DEFAULT '',
  `avatar` varchar(200) NOT NULL,
  `profileurl` varchar(128) NOT NULL,
  `is_personaname_real` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`account_id`, `personaname`, `avatar`, `profileurl`) VALUES
(4294967295, 'Anonymous',  '', '');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `teams` (
  `id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;