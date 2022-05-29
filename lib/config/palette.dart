import 'package:flutter/material.dart';

class Palette {
  static const Color moreBlue = Color(0xff027286);

  static const Color buttonyellow = Color(0xffFFD814);

  static const Color linkColor = Color(0xff047387);

  static const Color giftGreen = Color(0xff067D62);

  static const Color offerRed = Color(0xffAE1E00);

  static Color grey = (Colors.grey[700])!;

  static const LinearGradient appBar = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF83D8E3),
      Color(0xFFA5E7CE),
    ],
  );

  static const LinearGradient address = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFB5E8EF),
      Color(0xFFC8F0E3),
    ],
  );
}
