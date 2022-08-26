import 'package:app/models/order.dart';
import 'package:app/services/database_service.dart';
import 'package:sqflite/sql.dart';

Future<void> insertOrder(Order order) async {
  final db = await DatabaseService.databaseService.database;
  await db.insert(DatabaseConstants.ORDER_TABLE_NAME, order.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<Order>> getAllOrders() async {
  final db = await DatabaseService.databaseService.database;
  print(db.path);
  final List<Map<String, dynamic>> allMap =
      await db.query(DatabaseConstants.ORDER_TABLE_NAME);

  return List.generate(allMap.length, (index) => Order.fromMap(allMap[index]));
}
