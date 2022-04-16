import 'package:flutter/material.dart';
import 'package:mobile_bank_app/home/widgets/balance/balance.dart';
import 'package:mobile_bank_app/home/widgets/main_actions/main_actions.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2A304B), // TODO: Change background
      child: Column(
        children: [
          Row(
            children: const [
              Balance(),
            ],
          ),
          const SizedBox(height: 20),
          const MainActions(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
