import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testik/utils/constants.dart';

class MainNav extends StatefulWidget {
  const MainNav({super.key});

  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: BottomNavigationBar(
          currentIndex: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          fixedColor: darkThemeSecondaryColor,
          backgroundColor: darkThemeSecondaryColor,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/img/icons/menu-dashboard.svg'),
              activeIcon: SvgPicture.asset(
                  'assets/img/icons/menu-dashboard-active.svg'),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/img/icons/menu-statistic.svg'),
                label: 'Statistic'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/img/icons/menu-find.svg'),
                label: 'Find match'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/img/icons/menu-calendar.svg'),
                label: 'Calendar'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/img/icons/menu-settings.svg'),
                label: 'Settings'),
          ]),
    );
  }
}
