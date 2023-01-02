import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 0,
        left: 0,
        right: 0,
      ),
      child: Container(
        width: 360,
        height: 56,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 360,
                height: 56,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 15,
                        left: 328,
                        child: SizedBox(
                            width: 24,
                            height: 27,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset('assets/Bell.svg',
                                      semanticsLabel: 'vector')),
                              Positioned(
                                  top: 22,
                                  left: 7,
                                  child: SvgPicture.asset('assets/Dot.svg',
                                      semanticsLabel: 'vector')),
                            ]))),
                    const Positioned(
                        top: 13,
                        child: Text(
                          'Мои коды',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(33, 31, 31, 1),
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              height: 1),
                        )),
                    Positioned(
                      top: 17,
                      left: 346,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 0, 45, 1),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(8, 8)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
