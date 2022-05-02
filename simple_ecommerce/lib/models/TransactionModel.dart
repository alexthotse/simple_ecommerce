class TransactionModel {
  final dynamic id;
  final String name;
  final int price;
  final String type;
  final String currency;

  TransactionModel({
    required this.id,
    required this.name,
    required this.price,
    required this.type,
    required this.currency,
  });
}
