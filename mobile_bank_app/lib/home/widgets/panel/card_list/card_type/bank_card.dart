class BankCard {
  const BankCard({
    required this.cardType,
    required this.lastFourDigits,
    required this.amount,
    required this.expiryDate,
  });

  final String cardType;
  final int lastFourDigits;
  final double amount;
  final DateTime expiryDate;
}
