import 'package:amazon_clone/data/data.dart';
import 'package:amazon_clone/sections/sections.dart';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAddress(),
            const CetegoryCard(),
            dividerLine(),
            const SliderSection(),
            dividerLine(),
            GridImageOnly(gridImageData: shoes),
            dividerLine(),
            GridSection(
              gridDetails: pocketFriendly,
            ),
            dividerLine(),
            const DealSection(),
            dividerLine(),
            const SponsoresSection(),
            dividerLine(),
            GridSection(
              gridDetails: mobiles,
            ),
            dividerLine(),
            const MiniTVSection(
                img: 'assets/arranged.jpg',
                name: 'Short Film | Arranged on miniTV'),
            dividerLine(),
            GridSection(
              gridDetails: womensFashion,
            ),
            dividerLine(),
            GridImageOnly(gridImageData: handMade),
            dividerLine(),
            GridSection(
              gridDetails: homeDecor,
            ),
            dividerLine(),
            const MiniTVSection(
              img: 'assets/minioneplus.jpg',
              name: 'Watch the latest phone unboxing | miniTV',
            ),
            dividerLine(),
            GridSection(
              gridDetails: headPhone,
            ),
            dividerLine(),
            GridSection(
              gridDetails: clothingFootwear,
            ),
            dividerLine(),
          ],
        ),
      ),
      floatingActionButton: const AlexaButton(),
    );
  }

  Widget dividerLine() {
    return const Divider(
      thickness: 5,
      height: 2,
    );
  }
}
