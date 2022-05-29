import 'package:flutter/material.dart';

import '../data/data.dart';

class CetegoryCard extends StatelessWidget {
  const CetegoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                categoryList[index].image,
                const SizedBox(
                  height: 5,
                ),
                Text(
                  categoryList[index].catName,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
