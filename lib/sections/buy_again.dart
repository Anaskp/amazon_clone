import 'package:amazon_clone/data/data.dart';
import 'package:amazon_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BuyAgainSection extends StatelessWidget {
  const BuyAgainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: AccountSectionRow(
                  firstText: 'Buy Again', secondText: 'See all'),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: buyAgain.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: (Colors.grey[400])!),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 120,
                          height: 120,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              buyAgain[index],
                            ),
                          ),
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
