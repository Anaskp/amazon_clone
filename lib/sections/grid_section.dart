import 'package:flutter/material.dart';

class GridSection extends StatelessWidget {
  final List gridDetails;

  const GridSection({Key? key, required this.gridDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return Container(
      width: widthSize,
      height: widthSize * 1.55,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              gridDetails[0],
              style: Theme.of(context).textTheme.headline5,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                  childAspectRatio: 0.8),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(
                        gridDetails[index + 2],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(gridDetails[index + 6]),
                  ],
                );
              },
            ),
            Text(
              gridDetails[1],
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
