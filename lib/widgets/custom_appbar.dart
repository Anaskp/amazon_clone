import 'package:amazon_clone/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      title: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: (Colors.grey[400])!,
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.black38,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Amazon.in',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.center_focus_strong_outlined,
                      color: Colors.black38,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Icon(
            Icons.mic_none_outlined,
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.centerLeft,
            //   end: Alignment.centerRight,
            //   colors: [
            //     Color(0xFF83D8E3),
            //     Color(0xFFA5E7CE),
            //   ],
            // ),
            gradient: Palette.appBar),
      ),
    );
  }
}
