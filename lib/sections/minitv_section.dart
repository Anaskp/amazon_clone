import 'package:flutter/material.dart';

class MiniTVSection extends StatelessWidget {
  final String img;
  final String name;

  const MiniTVSection({Key? key, required this.img, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: widthSize * 1.2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              img,
            ),
          ],
        ),
      ),
    );
  }
}
