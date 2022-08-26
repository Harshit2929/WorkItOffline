enum OrderStatus { inProgress, done, paymentCleared }

class Activity {
  final int aid, quantity, shgId;
  final String title;
  final double amt;
  final OrderStatus status;

  Activity({
    required this.shgId,
    required this.aid,
    required this.quantity,
    required this.title,
    required this.amt,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'oid': aid,
      'title': title,
      'orderStatus': status.toString(),
      'amount': amt.toString(),
      'quantity': quantity.toString(),
    };
  }

  factory Activity.fromMap(Map<String, dynamic> data) {
    return Activity(
      shgId: data['shg_id'] ?? "",
      aid: data['oid']?.toInt(),
      quantity: data['quantity']?.toInt() ?? 0,
      title: data['title'] ?? "",
      amt: data['amt']?.toDouble() ?? 0,
      status: data['status'],
    );
  }
}
