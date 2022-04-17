class Deposit {
  const Deposit({
    required this.duration,
    required this.endDate,
    required this.amount,
    required this.rate,
  });

  final int duration;
  final DateTime endDate;
  final double amount;
  final int rate;
}
