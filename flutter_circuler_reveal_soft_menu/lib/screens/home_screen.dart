import 'package:flutter/material.dart';
import 'package:flutter_circuler_reveal_soft_menu/screens/lock_screen.dart';
import 'package:flutter_circuler_reveal_soft_menu/screens/profile_screen.dart';
import 'package:flutter_circuler_reveal_soft_menu/screens/search_screen.dart';
import 'package:flutter_circuler_reveal_soft_menu/screens/setting_screen.dart';
import '../widgets/circular_reveal_soft_menu.dart';
import '../models/menu_item_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Circular Reveal Soft Menu')),
      body: Center(
        child: CircularRevealSoftMenu(
          items: [
            MenuItemModel(
              icon: Icons.home,
              label: 'Home',
              onTap: () {
                debugPrint('Home clicked');
              },
            ),
            MenuItemModel(
              icon: Icons.search,
              label: 'Search',
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => SearchScreen()));
              },
            ),
            MenuItemModel(
              icon: Icons.settings,
              label: 'Settings',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingScreen()),
                );
              },
            ),
            MenuItemModel(
              icon: Icons.share,
              label: 'Share',
              onTap: () {
                debugPrint('Share clicked');
              },
            ),
            MenuItemModel(
              icon: Icons.lock,
              label: 'Lock',
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => LockScreen()));
              },
            ),
            MenuItemModel(
              icon: Icons.person,
              label: 'Profile',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
