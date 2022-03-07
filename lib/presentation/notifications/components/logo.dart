import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/logo.svg', height: 80,);
  }
}
