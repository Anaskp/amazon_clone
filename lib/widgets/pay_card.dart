import 'package:flutter/material.dart';

import '../data/data.dart';

class PayCard extends StatelessWidget {
  const PayCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        width: 160,
        height: 160,
        child: IgnorePointer(
          child: GridView.builder(
            itemCount: amazonPayData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    amazonPayData[index].img,
                    Text(amazonPayData[index].imgText)
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
