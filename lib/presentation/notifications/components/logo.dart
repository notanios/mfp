import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  double height = 80;
  Logo({this.height = 80});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/logo.svg', height: height,);
  }
}
