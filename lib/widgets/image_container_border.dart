import 'package:flutter/material.dart';

class ImageContainerBorder extends StatelessWidget {
  final int index;
  final List listName;

  const ImageContainerBorder(
      {Key? key, required this.index, required this.listName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: (Colors.grey[400])!),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          listName[index].img,
          width: widthSize / 4,
          height: widthSize / 4,
        ),
      ),
    );
  }
}
