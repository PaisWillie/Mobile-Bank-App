import 'package:flutter/material.dart';
import 'package:mobile_bank_app/home/widgets/panel/card_list/card_item.dart';

class CardsList extends StatelessWidget {
  const CardsList({
    Key? key,
    required this.title,
    required this.cards,
  }) : super(key: key);

  final String title;

  final Iterable<CardItem> cards;

  List<Widget> insertDivider(List<CardItem> cards) {
    List<Widget> list = [];

    for (final CardItem card in cards) {
      list.add(Padding(
        padding: const EdgeInsets.all(16.0),
        child: card,
      ));
      list.add(
        const Divider(
          // height: 0,
          color: Colors.black12,
          indent: 50, // TODO: Match size of the image
        ),
      );
    }

    list.removeLast();

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontFamily: 'Poppins-Semibold',
                    color: Color(0xFF29304D),
                  ),
                ),
                const Text(
                  'Add',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins-Semibold',
                      color: Color(0xFF2573D5)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: cards.length > 1
                    ? insertDivider(cards.toList())
                    : cards.toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
