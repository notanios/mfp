import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:mdf/presentation/styles/app_colors.dart';

import 'app_fonts.dart';

class TextStyles {
  static TextStyle regular = const TextStyle(fontFamily: Fonts.Roboto_Regular,
      color: AppColors.santasGray,
      fontWeight: FontWeight.w400,
      fontSize: 16);

  static TextStyle bold = const TextStyle(fontFamily: Fonts.Roboto_Bold,
      color: AppColors.santasGray,
      fontWeight: FontWeight.w900,
      fontSize: 16);

  static TextStyle medium = const TextStyle(fontFamily: Fonts.Roboto_Medium,
      color: AppColors.santasGray,
      fontWeight: FontWeight.w500,
      fontSize: 16);


  static TextStyle welcomeScreenHeader =  const TextStyle(
      fontFamily: Fonts.Roboto_Regular,
      color: AppColors.black,
      fontWeight: FontWeight.bold, fontSize: 25);

  static TextStyle primaryButtonTextStyle = const TextStyle(
      fontFamily: Fonts.Roboto_Regular,
      color: AppColors.white,
      fontWeight: FontWeight.normal,
      fontSize: 18);


  static TextStyle hintStyle = const TextStyle(
  fontFamily: Fonts.Roboto_Regular,
  color: AppColors.santasGray,
  fontWeight: FontWeight.normal,
  fontSize: 16);

  static TextStyle inputTextStyle = const TextStyle(
      fontFamily: Fonts.Roboto_Regular,
      color: AppColors.black,
      fontWeight: FontWeight.normal,
      fontSize: 16);


  static TextStyle welcomeScreenOptions = const TextStyle(
      fontFamily: Fonts.Roboto_Regular,
      color: AppColors.santasGray,
      fontWeight: FontWeight.bold,
      fontSize: 18);

  static TextStyle robotoRegular = const TextStyle(
      fontFamily: Fonts.Roboto_Regular,
      color: AppColors.black,
      fontWeight: FontWeight.bold,
      fontSize: 12);
}
