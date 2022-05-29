import 'package:flutter/material.dart';

class SponsoresSection extends StatelessWidget {
  const SponsoresSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return SizedBox(
      width: widthSize,
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/chair.jpg'),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Save 53%',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        const Text(
                          'INNOWIN Jazz Medium Back Mesh Ergonomic Chair for Work,Home,Gaming',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '₹7,600 ',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.grey[700]),
                                children: [
                                  TextSpan(
                                    text: '₹16,000',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey[700],
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/primetick.png',
                              width: 75,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 5, right: 5),
            child: Text('Sponsored'),
          ),
        ],
      ),
    );
  }
}
