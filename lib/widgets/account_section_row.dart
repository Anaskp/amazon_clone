import 'package:flutter/material.dart';

import '../config/palette.dart';

class AccountSectionRow extends StatelessWidget {
  final String firstText;
  final String secondText;

  const AccountSectionRow(
      {Key? key, required this.firstText, required this.secondText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: (() {}),
          child: Text(
            secondText,
            style: const TextStyle(color: Palette.moreBlue, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
