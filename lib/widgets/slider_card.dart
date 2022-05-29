import 'package:amazon_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 176,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: topCard.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == 0
              ? const PayCard()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      topCard[index - 1],
                      width: 124,
                      height: 176,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
