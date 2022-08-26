import 'package:app/models/order.dart';
import 'package:sqflite/sql.dart';

import '../services/database.service.dart';

Future<void> insertOrder(Activity order) async {
  final db = await DatabaseService.databaseService.database;
  await db.insert(DatabaseConstants.ORDER_TABLE_NAME, order.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<List<Activity>> getAllOrders() async {
  final db = await DatabaseService.databaseService.database;
  print(db.path);
  final List<Map<String, dynamic>> allMap =
      await db.query(DatabaseConstants.ORDER_TABLE_NAME);

  return List.generate(allMap.length, (index) => Activity.fromMap(allMap[index]));
}


