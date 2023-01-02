
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

const String assetPhone = 'assets/Phone.svg';
final Widget svgPhone = SvgPicture.asset(
  assetPhone,
  color: Colors.grey,
  height: 74,
  fit: BoxFit.scaleDown,
);

