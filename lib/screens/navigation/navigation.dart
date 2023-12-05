import 'package:flutter/material.dart';
import 'package:mihi_app/screens/catalogue/catalogue.dart';
import 'package:mihi_app/screens/constants/asset_path.dart';
import 'package:mihi_app/screens/constants/text_constants.dart';
import 'package:mihi_app/screens/dashboard/dashboard.dart';
import 'package:mihi_app/screens/insight/insight.dart';
import 'package:mihi_app/screens/profile/profile.dart';
import 'package:mihi_app/screens/settings/settings.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  TextEditingController emailController = TextEditingController();
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const DashboardScreen(),
    const ProfileScreen(),
    const CatalogueScreen(),
    const InsightScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image.asset(MihiAppAssetsPath.homeIcon),
            label: MihiAppText.home,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(MihiAppAssetsPath.profileIcon),
            label: MihiAppText.profile,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(MihiAppAssetsPath.catalogueIcon),
            label: MihiAppText.catalogue,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(MihiAppAssetsPath.insightIcon),
            label: MihiAppText.insight,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(MihiAppAssetsPath.settingsIcon),
            label: MihiAppText.settings,
          ),
        ],
      ),
    );
  }
}