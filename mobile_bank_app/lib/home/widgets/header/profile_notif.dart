import 'package:flutter/material.dart';

class ProfileNotif extends StatelessWidget {
  const ProfileNotif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Icon(
            Icons.notifications,
            color: Colors.grey,
            size: 30,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.white, width: 1),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: const Image(
              image: NetworkImage(
                "https://randomuser.me/api/portraits/men/43.jpg",
              ),
              width: 40,
            ),
          ),
        ),
      ],
    );
  }
}
