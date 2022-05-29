import 'package:amazon_clone/data/data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousal extends StatelessWidget {
  const Carousal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 16 / 11,
          autoPlay: true,
          enlargeCenterPage: false,
          viewportFraction: 1,
        ),
        items: carousalImage
            .map(
              (item) => Center(
                child: Image.asset(
                  item,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
