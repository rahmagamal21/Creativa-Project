import 'package:creativa_courses_app/Pages/about_us_page.dart';
import 'package:creativa_courses_app/Pages/favourites.dart';
import 'package:creativa_courses_app/Pages/notifications_page.dart';
import 'package:creativa_courses_app/features/profile/Presentation/views/profile.dart';
import 'package:creativa_courses_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

import '../features/Home/presentation/views/home.dart';

class CircularNavigationBar extends StatefulWidget {
  const CircularNavigationBar({super.key});

  @override
  State<CircularNavigationBar> createState() => _CircularNavigationBarState();
}

class _CircularNavigationBarState extends State<CircularNavigationBar> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const <Widget>[
          HomePage(),
          Favourites(),
          Notifications(),
          ProfilePage(),
          AboutUs(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        controller: _controller,
        items: const [
          RollingBottomBarItem(Icons.home, label: 'Home'),
          RollingBottomBarItem(
            Icons.star,
            label: 'favourites',
          ),
          RollingBottomBarItem(
            Icons.notifications,
            label: 'notifications',
          ),
          RollingBottomBarItem(Icons.person, label: 'profile'),
          RollingBottomBarItem(Icons.list, label: 'about us'),
        ],
        color: amber,
        activeItemColor: blue,
        enableIconRotation: true,
        onTap: (index) {
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
