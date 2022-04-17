import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.description,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String value;
  final String description;

  static const TextStyle topStyle = TextStyle(
    fontFamily: 'Poppins-SemiBold',
    fontSize: 18,
    color: Color(0xFF29304D),
  );
  static const TextStyle bottomStyle = TextStyle(
    fontFamily: 'Poppins-SemiBold',
    fontSize: 14,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
          ), // Image placeholder
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: topStyle,
                ),
                Text(
                  subtitle,
                  style: bottomStyle,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: topStyle,
              ),
              Text(
                description,
                style: bottomStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
