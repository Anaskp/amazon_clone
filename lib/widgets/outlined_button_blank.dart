import 'package:flutter/material.dart';

class OutlinedButtonBlank extends StatelessWidget {
  final String label;
  final VoidCallback onpress;

  const OutlinedButtonBlank(
      {Key? key, required this.label, required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: (Colors.grey[400])!),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
      onPressed: onpress,
    );
  }
}
