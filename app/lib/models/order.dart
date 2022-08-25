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
}
