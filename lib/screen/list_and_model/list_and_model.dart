import 'package:flutter/cupertino.dart';

final List languageList=[
  'Turkish',
  'Arabic',
  'English',
  'German',
  'France'
];

final List<HomeModel> homeData=[
  HomeModel(icon: 'assets/images/1.png', title: 'All Prayers Guide'),
  HomeModel(icon: 'assets/images/2.png', title: 'Set Prayer Alarm'),
  HomeModel(icon: 'assets/images/3.png', title: 'Settings'),
];
final List<AlarmModel> alarmData=[
  AlarmModel(icon: 'assets/images/fajar.png', title: '04:35', subtitle: 'Fajr'),
  AlarmModel(icon: 'assets/images/zuhar.png', title: '01:35', subtitle: 'Dhuhar'),
  AlarmModel(icon: 'assets/images/asar.png', title: '04:50', subtitle: 'Asar'),
  AlarmModel(icon: 'assets/images/maghrib.png', title: '06:10', subtitle: 'Maghrib'),
  AlarmModel(icon: 'assets/images/esha.png', title: '07:30', subtitle: 'Esha'),
];

// Model

class HomeModel{
  String icon;
  String title;
  HomeModel({required this.icon, required this.title});
}

class AlarmModel{
  String icon;
  String title;
  String subtitle;
  AlarmModel({required this.icon, required this.title, required this.subtitle,});
}