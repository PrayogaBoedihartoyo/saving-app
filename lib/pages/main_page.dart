import 'package:flutter/material.dart';
import 'package:saving_app/pages/portofolio/portofolio_page.dart';
import 'package:saving_app/pages/profile/profile_page.dart';
import 'package:saving_app/pages/support/support_page.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static const String nameRoute = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndexPage = 0;

  static List<Widget> pages = [
    const HomePage(),
    const PortfolioPage(),
    const SupportPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: pages[_selectedIndexPage],
      bottomNavigationBar: _customBottomNav(),
    );
  }

  Widget _customBottomNav() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: kGrey,
            blurRadius: 10,
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndexPage,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: kCaption,
          unselectedLabelStyle: kCaption,
          selectedItemColor: kBlueRibbon,
          unselectedItemColor: kDarkGray,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png',
                width: 24,
                color: _selectedIndexPage == 0 ? kBlueRibbon : kDarkGray,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/portofolio.png',
                  width: 24,
                  color: _selectedIndexPage == 1 ? kBlueRibbon : kDarkGray,
              ),
              label: 'Portfolio',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/support.png',
                  width: 24,
                  color: _selectedIndexPage == 2 ? kBlueRibbon : kDarkGray,
              ),
              label: 'Support',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/profile.png',
                  width: 24,
                  color: _selectedIndexPage == 3 ? kBlueRibbon : kDarkGray,
              ),
              label: 'Profile',
            ),
          ],
        ),
      )
    );
  }
}
