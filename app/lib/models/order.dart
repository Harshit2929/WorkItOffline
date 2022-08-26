enum OrderStatus { inProgress, done, paymentCleared }

class Order {
  final int oid, quantity;
  final String title;
  final double amt;
  final OrderStatus status;

  Order({
    required this.oid,
    required this.quantity,
    required this.title,
    required this.amt,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'oid': oid,
      'title': title,
      'orderStatus': status.toString(),
      'amount': amt.toString(),
      'quantity': quantity.toString(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> data) {
    return Order(
      oid: data['oid']?.toInt(),
      quantity: data['quantity']?.toInt() ?? 0,
      title: data['title'] ?? "",
      amt: data['amt']?.toDouble() ?? 0,
      status: data['status'],
    );
  }
}
