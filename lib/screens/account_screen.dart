import 'package:amazon_clone/sections/your_account_section.dart';
import 'package:flutter/material.dart';

import '../sections/sections.dart';
import '../widgets/widgets.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        child: AccountAppBar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AccountTopSection(),
            dividerLine(),
            const KeepShopping(),
            dividerLine(),
            const WishList(),
            dividerLine(),
            const YourAccountSection(),
            dividerLine(),
            const BuyAgainSection(),
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
