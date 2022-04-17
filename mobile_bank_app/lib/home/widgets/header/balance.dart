import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(
            bottom: 8.0,
          ),
          child: Text(
            "\$2,589.00",
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Poppins-Semibold',
              color: Colors.white,
            ),
          ),
        ),
        Text(
          "Available Balance",
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins-Medium',
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
