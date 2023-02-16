import 'package:drawer/pages/home_page.dart';
import 'package:drawer/pages/raspisanie.dart';
import 'package:drawer/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: Colors.white,
  );
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Главная",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Расписания",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue),
        const Raspisanie(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Посещение",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue),
        const SettingsPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Контракт",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue),
        const Raspisanie(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Сессия",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue),
        const Raspisanie(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Справочник",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue),
        const Raspisanie(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Настройка",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue),
        const Raspisanie(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Выход",
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.blue),
        const Raspisanie(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        
        slidePercent: 40,
        initPositionSelected: 0,
        screens: _pages,
        backgroundColorMenu: Colors.black);
  }
}
