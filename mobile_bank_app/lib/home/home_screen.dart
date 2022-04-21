import 'package:flutter/material.dart';
import 'package:mobile_bank_app/home/widgets/header/header.dart';
import 'package:mobile_bank_app/home/widgets/panel/panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      color: const Color(0xFFF7F9FC),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      parallaxEnabled: true,
      minHeight: 550,
      maxHeight: 700,
      panel: const Panel(),
      body: const Header(),
    );
  }
}
