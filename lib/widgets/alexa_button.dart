import 'package:flutter/material.dart';

class AlexaButton extends StatelessWidget {
  const AlexaButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1.5,
            blurRadius: 5,
            offset: Offset(
              2.0,
              2.0,
            ),
          ),
        ],
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        'assets/alexa.png',
        width: 40,
      ),
    );
  }
}
