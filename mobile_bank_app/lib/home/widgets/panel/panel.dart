import 'package:flutter/material.dart';
import 'package:mobile_bank_app/home/widgets/panel/card_list/card_item.dart';
import 'package:mobile_bank_app/home/widgets/panel/card_list/card_type/bank_card.dart';
import 'package:mobile_bank_app/home/widgets/panel/card_list/card_type/deposit.dart';
import 'package:mobile_bank_app/home/widgets/panel/card_list/cards_list.dart';

class Panel extends StatelessWidget {
  const Panel({Key? key}) : super(key: key);

  static List<BankCard> bankCards = [
    BankCard(
      cardType: "Visa Master",
      lastFourDigits: 7645,
      amount: 2000.00,
      expiryDate: DateTime(2023, 01),
    ),
    BankCard(
      cardType: "Mastercard",
      lastFourDigits: 4505,
      amount: 589.00,
      expiryDate: DateTime(2022, 01),
    ),
  ];

  static List<Deposit> deposits = [
    Deposit(
      duration: 5,
      endDate: DateTime(2022, 5, 22),
      amount: 1524.00,
      rate: 2,
    ),
    Deposit(
      duration: 10,
      endDate: DateTime(2027, 02, 13),
      amount: 10324.00,
      rate: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardsList(
          title: "Your Cards",
          cards: bankCards.map(
            (bankCard) => CardItem(
              title: bankCard.cardType,
              subtitle: "•• ${bankCard.lastFourDigits.toString()}",
              value: "\$${bankCard.amount.toStringAsFixed(2)}",
              description: bankCard.expiryDate.month.toString().length == 1
                  ? "0${bankCard.expiryDate.month}/${bankCard.expiryDate.year.toString().substring(2)}"
                  : "${bankCard.expiryDate.month}/${bankCard.expiryDate.year.toString().substring(2)}",
            ),
          ),
        ),
        CardsList(
          title: "Deposits",
          cards: deposits.map(
            (deposit) => CardItem(
              title: "For ${deposit.duration} years",
              subtitle: deposit.endDate.month.toString().length == 1
                  ? "${deposit.endDate.day.toString()}.0${deposit.endDate.month.toString()}.${deposit.endDate.year.toString()}"
                  : "${deposit.endDate.day.toString()}.${deposit.endDate.month.toString()}.${deposit.endDate.year.toString()}",
              value: "\$${deposit.amount.toStringAsFixed(2)}",
              description: "Rate ${deposit.rate}%",
            ),
          ),
        )
      ],
    );
  }
}
