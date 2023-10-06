import 'package:flutter/material.dart';

class AppColors {
  ///primary
  static const Color deepDark = Color(0xFF001626);
  static const Color primary = Color(0xFF008249);
  static const Color white = Color(0xFFFFFFFF);
  static const Color gray = Color(0xFFC8C7CC);
  static const Color grey = Color(0xFFEDEDED);
  static const Color red = Color(0xFFE41919);

  ///secondary
  static const Color background = Color(0xFFF6F5F3);
  static const Color stroke = Color(0xFFEBEBEB);

  ///products
  static const Color lightRed = Color(0xFFCB7373);

  ///alert
  static const Color alertError = Color(0xFFFE5050);
  static const Color alertSuccess = Color(0xFF6DC68E);
  static const Color alertLink = Color(0xFF007AFF);
  static const Color alertWarning = Color(0xFFFFCC00);

  /// more color
  static const Color ghostWhite = Color(0xffF6F5F3);
  static const Color superSliver = Color(0xffEFEFEF);
  static const Color blackBanner = Color(0xff001626);
  static const Color black = Color(0xff000000);

  /// close button
  static const Color closeButton = Color(0xff323232);
  static const Color closeButtonHover = Color(0xffB3B9BE);

  /// color evaluate
  static const Color textEvaluate = Color(0xff77757F);
  static const Color starRatedColor = Color(0xffFDAA63);
  static const Color dividerDialog = Color(0xffE8E8EA);

  /// color from hex String
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

