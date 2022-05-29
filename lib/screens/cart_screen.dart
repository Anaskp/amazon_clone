import 'package:amazon_clone/config/palette.dart';

import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAddress(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 22),
                      children: [
                        TextSpan(text: 'Subtotal '),
                        TextSpan(
                          text: ' ₹25,298.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'EMI Available ',
                          style: TextStyle(
                            color: Palette.grey,
                            fontSize: 17,
                          ),
                        ),
                        TextSpan(
                          text: 'Details',
                          style: const TextStyle(
                            color: Palette.linkColor,
                            fontSize: 17,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 16),
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.check_circle,
                            color: Palette.giftGreen,
                          ),
                        ),
                        TextSpan(
                          text: 'Your order is eligible for FREE Delivery. ',
                          style: TextStyle(
                            color: Palette.giftGreen,
                          ),
                        ),
                        TextSpan(
                          text: 'Select this option at checkout. ',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Details',
                          style: TextStyle(
                            color: Palette.linkColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 0,
                        onPrimary: Colors.black,
                        primary: Palette.buttonyellow,
                      ),
                      onPressed: (() {}),
                      child: const Text(
                        'Proceed to Buy (2 items)',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.percent,
                            color: Palette.offerRed,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: RichText(
                              maxLines: 2,
                              text: const TextSpan(
                                style: TextStyle(fontSize: 16),
                                children: [
                                  TextSpan(
                                    text: 'Save Extra ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Palette.offerRed,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'with 5 offers: Coupon, No Cost EMI  ',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' + 3 offers',
                                    style: TextStyle(
                                      color: Palette.linkColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CartGift(),
                ],
              ),
            ),
            dividerLine(),
            const CartProduct(),
          ],
        ),
      ),
    );
  }
}

class CartGift extends StatefulWidget {
  const CartGift({Key? key}) : super(key: key);

  @override
  State<CartGift> createState() => _CartGiftState();
}

class _CartGiftState extends State<CartGift> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Palette.linkColor,
      contentPadding: EdgeInsets.zero,
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
        });
      },
      title: const Text(
        'Add gift options',
        maxLines: 1,
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}

Widget dividerLine() {
  return const Divider(
    thickness: 2,
    height: 2,
  );
}
