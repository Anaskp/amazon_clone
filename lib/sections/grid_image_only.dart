import 'package:flutter/material.dart';

class GridImageOnly extends StatelessWidget {
  final List gridImageData;

  const GridImageOnly({Key? key, required this.gridImageData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: widthSize * 1.3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              gridImageData[0],
              style: Theme.of(context).textTheme.headline5,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 9,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                return Image.asset(gridImageData[index + 2]);
              },
            ),
            Text(
              gridImageData[1],
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xff027286),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
