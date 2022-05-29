import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: 180,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const AccountSectionRow(
              firstText: 'Your Wish List',
              secondText: 'See all',
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: (Colors.grey[400])!),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shopping List',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[800],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Private',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF5F5F5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          'assets/iphonepng.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
