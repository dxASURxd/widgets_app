import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'botones',
    subTitle: 'varios botones',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'cards',
    subTitle: 'tarjetas',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'progress',
    subTitle: 'progress screen',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'animated',
    subTitle: 'animated screen',
    link: '/animated',
    icon: Icons.animation,
  ),
  MenuItems(
    title: 'tutorial',
    subTitle: 'app tutorial',
    link: '/apptuto',
    icon: Icons.door_back_door,
  ),
  MenuItems(
    title: 'infinite',
    subTitle: 'infinite scroll',
    link: '/scroll',
    icon: Icons.downhill_skiing_sharp,
  ),
  MenuItems(
    title: 'snackbar',
    subTitle: 'snackbar  screen',
    link: '/snackbar',
    icon: Icons.food_bank_sharp,
  ),
];
