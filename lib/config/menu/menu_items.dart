import 'package:flutter/material.dart';

class MenuItem {
  final String title;

  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
 
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Search Fligth',
    link: '/search_flight',
    icon: Icons.search,
  ),
  MenuItem(
    title: 'Recent Flight',
    link: '/recent',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    link: '/ticket_from',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    link: '/ticket_from',
    icon: Icons.refresh_rounded,
  ),
  
];
