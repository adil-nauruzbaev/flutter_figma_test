import 'package:badges/badges.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_figma_test/home/presentation/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
              tabs: const [
                GButton(
                  icon: Icons.settings,
                  text: 'Настройки',
                  iconColor: Colors.white,
                  iconSize: 27,

                ),
                GButton(
                  icon: Icons.qr_code_sharp,
                  text: 'Мои коды',
                  iconColor: Colors.white,
                  iconSize: 27,
                  
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: 'Профиль',
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

class Group379Widget extends StatefulWidget {
  const Group379Widget({super.key});

  @override
  _Group379WidgetState createState() => _Group379WidgetState();
}

class _Group379WidgetState extends State<Group379Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        height: 100,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 360,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Color.fromRGBO(33, 31, 31, 1),
                  ))),
          Positioned(
              top: 30,
              left: 58,
              child: SvgPicture.asset('assets/Profile.svg',
                  semanticsLabel: 'vector')),
          Positioned(
              top: 16,
              left: 117,
              child: Container(
                  width: 126,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    color: Color.fromRGBO(205, 193, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 14,
                        left: 11,
                        child: Container(
                            width: 98,
                            height: 20,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 98,
                                      height: 20,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 2,
                                            left: 31,
                                            child: Text(
                                              'Мои коды',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      33, 31, 31, 1),
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 20,
                                                height: 20,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: SvgPicture.asset(
                                                          'assets/QR.svg',
                                                          semanticsLabel:
                                                              'vector')),
                                                ]))),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 30,
              left: 282,
              child: SvgPicture.asset('assets/Settings.svg',
                  semanticsLabel: 'vector')),
        ]));
  }
}
