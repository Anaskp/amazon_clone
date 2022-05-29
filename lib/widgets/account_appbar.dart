import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget {
  const AccountAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff83D8E3),
              Color(0xffA5E7CE),
            ],
          ),
        ),
      ),
      title: Image.asset(
        'assets/amazonlogo.png',
        width: 110,
      ),
    );
  }
}
