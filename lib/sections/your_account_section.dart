import 'package:amazon_clone/data/data.dart';

import 'package:amazon_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class YourAccountSection extends StatelessWidget {
  const YourAccountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: AccountSectionRow(
                  firstText: 'Your Account', secondText: 'See all'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: yourAccountData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: OutlinedButtonBlank(
                        label: yourAccountData[index].name,
                        onpress: yourAccountData[index].onPressed),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
