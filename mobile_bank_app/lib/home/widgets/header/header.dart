import 'package:flutter/material.dart';
import 'package:mobile_bank_app/home/widgets/header/balance.dart';
import 'package:mobile_bank_app/home/widgets/header/main_actions/main_actions.dart';
import 'package:mobile_bank_app/home/widgets/header/profile_notif.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF29304D), // TODO: Change background
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 75,
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Balance(),
                ProfileNotif(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const MainActions(),
        ],
      ),
    );
  }
}
