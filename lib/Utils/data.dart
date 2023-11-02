import 'package:cvmaker/Screens/basicinfo.dart';
import 'package:flutter/material.dart';

final carouselItems = [
  Image.network(
    'https://th.bing.com/th/id/OIP.HgfUVWFEcgEyElGOKcyhSgHaEx?w=273&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
    fit: BoxFit.cover,
  ),
  Image.network(
      'https://th.bing.com/th/id/OIP.HgfUVWFEcgEyElGOKcyhSgHaEx?w=273&h=180&c=7&r=0&o=5&dpr=2&pid=1.7'),
  Image.network(
      'https://th.bing.com/th/id/OIP.HgfUVWFEcgEyElGOKcyhSgHaEx?w=273&h=180&c=7&r=0&o=5&dpr=2&pid=1.7'),
];

final CardImage = [
  'assets/p.png',
  'assets/e.png',
  'assets/w.png',
  'assets/s.png',
  'assets/a.png',
  'assets/pj.png',
  'assets/add.png'
];

final CardTitle = [
  'Basic info',
  'Education',
  'Experiance',
  'Skills',
  'About',
  'Projects',
  'Addition Info'
];

final screens = [
  BasicInfoScreen(),
  
];
