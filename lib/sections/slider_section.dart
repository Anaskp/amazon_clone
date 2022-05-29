import 'package:amazon_clone/widgets/widgets.dart';

import 'package:flutter/material.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      child: Stack(
        children: [
          Carousal(),
          Positioned(
            bottom: 10,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.05),
                    (Colors.grey[200])!,
                    (Colors.grey[200])!,
                    (Colors.grey[200])!,
                    (Colors.grey[200])!,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: SliderCard(),
          ),
        ],
      ),
    );
  }
}
