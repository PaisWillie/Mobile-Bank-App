import 'package:flutter/material.dart';

import 'action_item.dart';

class MainActions extends StatelessWidget {
  const MainActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ActionItem(
          iconData: Icons.attach_money,
          label: 'Send',
        ),
        ActionItem(
          iconData: Icons.mobile_friendly,
          label: 'Request',
        ),
        ActionItem(
          iconData: Icons.history,
          label: 'History',
        ),
        ActionItem(
          iconData: Icons.currency_exchange,
          label: 'Change',
        ),
      ],
    );
  }
}
