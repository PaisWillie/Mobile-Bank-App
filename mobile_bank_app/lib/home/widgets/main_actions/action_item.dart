import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  const ActionItem({Key? key, required this.iconData, required this.label})
      : super(key: key);

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          child: Icon(iconData, size: 36),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Color(0xFFF7F9FC),
          ),
        ),
        const SizedBox(height: 7),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
