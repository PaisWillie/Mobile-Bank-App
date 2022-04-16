import 'package:flutter/material.dart';
import 'package:mobile_bank_app/home/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Header(),
      ],
    );
  }
}
