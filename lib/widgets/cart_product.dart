import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../data/data.dart';
import '../screens/screens.dart';

class CartProduct extends StatefulWidget {
  const CartProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: ((context, index) {
        return dividerLine();
      }),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: cartData.length,
      itemBuilder: (context, index) {
        int qty = cartData[index].quantity;
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      cartData[index].img,
                      width: 120,
                      height: 120,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cartData[index].name,
                            style: const TextStyle(fontSize: 16),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            cartData[index].price,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Eligible for FREE Shipping',
                            style: TextStyle(
                              color: Palette.grey,
                            ),
                          ),
                          const Text(
                            'In stock',
                            style: TextStyle(
                              color: Palette.giftGreen,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                              children: [
                                const TextSpan(
                                  text: 'Colour: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: cartData[index].color),
                              ],
                            ),
                          ),
                          cartData[index].sizeName != null
                              ? RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'Size name: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: cartData[index].sizeName),
                                    ],
                                  ),
                                )
                              : const SizedBox(width: 0),
                          cartData[index].sizeName != null
                              ? RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: 'Style name: ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(text: cartData[index].styleName),
                                    ],
                                  ),
                                )
                              : const SizedBox(width: 0),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (Colors.grey[500])!,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (cartData[index].quantity != 0) {
                                  cartData[index].quantity--;
                                }
                              });
                            },
                            child: countButton(Icons.delete_outline),
                          ),
                          SizedBox(
                            width: 50,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                qty.toString(),
                                style: const TextStyle(
                                  color: Palette.linkColor,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                cartData[index].quantity++;
                              });
                            },
                            child: countButton(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    cartProductButton('Delete'),
                    cartProductButton('Save for later'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'See more like this',
                  style: TextStyle(
                    color: Palette.linkColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  SizedBox cartProductButton(String name) {
    return SizedBox(
      height: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  DecoratedBox countButton(
    IconData buttonIcon,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: (Colors.grey[500])!,
        ),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Icon(buttonIcon),
      ),
    );
  }
}
