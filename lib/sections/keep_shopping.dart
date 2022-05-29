import 'package:amazon_clone/config/palette.dart';
import 'package:amazon_clone/data/data.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class KeepShopping extends StatelessWidget {
  const KeepShopping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: widthSize * 1.2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Keep shopping for',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: (() {}),
                      child: const Text(
                        'Edit',
                        style: TextStyle(fontSize: 14, color: Palette.moreBlue),
                      ),
                    ),
                    const Text('|'),
                    TextButton(
                      onPressed: (() {}),
                      child: const Text(
                        'Browsing history',
                        style: TextStyle(fontSize: 14, color: Palette.moreBlue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: keepShopping.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7,
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ImageContainerBorder(
                      listName: keepShopping,
                      index: index,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      keepShopping[index].name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                );
              },
            ),
            TextButton.icon(
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Palette.moreBlue,
              ),
              onPressed: (() {}),
              label: const Text(
                'See more',
                style: TextStyle(fontSize: 16, color: Palette.moreBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
