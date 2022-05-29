import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AccountTopSection extends StatelessWidget {
  const AccountTopSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: widthSize,
      child: Stack(
        children: [
          Container(
            width: widthSize,
            height: 150,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
                colors: [
                  Color(0xff83D8E3),
                  Color(0xffA5E7CE),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              height: widthSize,
              width: widthSize,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.05),
                    Colors.white,
                    Colors.white,
                    Colors.white,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Hello,',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: ' MUHAMMED',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.account_circle_outlined,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                    GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 3,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10),
                      children: [
                        AccountSectionButtonCircular(
                          name: 'Your Orders',
                          onpress: () {},
                        ),
                        AccountSectionButtonCircular(
                          name: 'Buy Again',
                          onpress: () {},
                        ),
                        AccountSectionButtonCircular(
                          name: 'Your Account',
                          onpress: () {},
                        ),
                        AccountSectionButtonCircular(
                          name: 'Your Wish List',
                          onpress: () {},
                        ),
                      ],
                    ),
                    const Text(
                      'Your Orders',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Hi! You have no recent orders.',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: OutlinedButtonBlank(
                        label: 'Return to the Homepage',
                        onpress: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
