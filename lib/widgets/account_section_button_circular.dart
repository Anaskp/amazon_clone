import 'package:flutter/material.dart';

class AccountSectionButtonCircular extends StatelessWidget {
  final String name;
  final VoidCallback onpress;

  const AccountSectionButtonCircular(
      {Key? key, required this.name, required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: Colors.white70,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: (Colors.grey[400])!,
          ),
        ),
      ),
      onPressed: onpress,
      child: Text(
        name,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
