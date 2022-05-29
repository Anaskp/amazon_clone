import 'dart:async';

import 'package:amazon_clone/data/data.dart';

import 'package:flutter/material.dart';

class DealSection extends StatefulWidget {
  const DealSection({Key? key}) : super(key: key);

  @override
  State<DealSection> createState() => _DealSectionState();
}

class _DealSectionState extends State<DealSection> {
  int selectedIndex = 0;

  @override
  void initState() {
    Timer.periodic(
      const Duration(seconds: 5),
      ((timer) {
        if (mounted) {
          setState(() {
            selectedIndex += 1;
            if (selectedIndex == 4) {
              selectedIndex = 0;
            }
          });
        }
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: widthSize * 1.4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deals of the Day',
              style: Theme.of(context).textTheme.headline5,
            ),
            Center(
              child: Image.asset(
                dealsData[selectedIndex].img,
                width: widthSize / 2,
                height: widthSize / 2,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dealsData[selectedIndex].priceRange,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  dealsData[selectedIndex].name,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  dealsData[selectedIndex].end,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  child: Image.asset(
                    'assets/ipad.jpg',
                    width: widthSize / 4.5,
                    height: widthSize / 4.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  child: Image.asset(
                    'assets/pistol.jpg',
                    width: widthSize / 4.5,
                    height: widthSize / 4.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  child: Image.asset(
                    'assets/crocs.webp',
                    width: widthSize / 4.5,
                    height: widthSize / 4.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 3;
                    });
                  },
                  child: Image.asset(
                    'assets/monitor.jpg',
                    width: widthSize / 4.5,
                    height: widthSize / 4.5,
                  ),
                ),
              ],
            ),
            const Text(
              'See all deals',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff027286),
              ),
            )
          ],
        ),
      ),
    );
  }
}
