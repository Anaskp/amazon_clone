import 'package:amazon_clone/config/palette.dart';
import 'package:flutter/material.dart';

class HomeAddress extends StatelessWidget {
  const HomeAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        gradient: Palette.address,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
          children: [
            const Icon(
              Icons.room_outlined,
            ),
            Expanded(
              child: Text(
                'Deliver to MUHAMMED - Kolachery Kolachery mukk Kannur 670601',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
