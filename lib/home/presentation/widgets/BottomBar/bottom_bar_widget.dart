import 'package:flutter/material.dart';
import 'package:flutter_figma_test/home/presentation/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeBottomWidget extends StatefulWidget {
  const HomeBottomWidget({super.key});

  @override
  State<HomeBottomWidget> createState() => _HomeBottomWidgetState();
}

class _HomeBottomWidgetState extends State<HomeBottomWidget> {
  int _selectedIndex = 1;
  static const List _widgetOptions = [
    Center(
      child: Text('Settings'),
    ),
    HomePage(),
    Center(
      child: Text('Profile'),
    ),
  ];

  void onSelectTub(int index) {
    if (index != 4) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      Navigator.push<Widget>(
          context, MaterialPageRoute(builder: (context) => Container()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      backgroundColor: Colors.white,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: SizedBox(
          height: 69,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Color.fromRGBO(33, 31, 31, 1),
            onTap: onSelectTub,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/Settings.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/QR.svg'),
                backgroundColor: Colors.white,
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/Profile.svg'),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _selectedIndex = 1;
  static final List _widgetOptions = [
    Center(
      child: Text('settings'.tr().toString()),
    ),
    const HomePage(),
    Center(
      child: Text('profile'.tr().toString()),
    ),
  ];
  void onSelectTub(int index) {
    if (index != 4) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      Navigator.push<Widget>(
          context, MaterialPageRoute(builder: (context) => Container()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: ClipRRect(
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromRGBO(33, 31, 31, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 45),
            child: GNav(
              padding: const EdgeInsets.all(15),
              backgroundColor: const Color.fromRGBO(33, 31, 31, 1),
              gap: 8,
              activeColor: Colors.black,
              tabBackgroundColor: Color.fromRGBO(205, 193, 255, 1),
              onTabChange: onSelectTub,
              selectedIndex: _selectedIndex,
              tabs:  [
                GButton(
                  icon: Icons.settings,
                  text: 'settings'.tr().toString(),
                  iconColor: Colors.white,
                  iconSize: 27,

                ),
                GButton(
                  icon: Icons.qr_code_sharp,
                  text: 'qr'.tr().toString(),
                  iconColor: Colors.white,
                  iconSize: 27,
                  
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: 'profile'.tr().toString(),
                  iconColor: Colors.white,
                  iconSize: 27,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}