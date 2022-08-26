import 'dart:async';
import 'package:app/constants/env.dart';
import 'package:app/services/request.service.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConstants {
  static const DATABASE_NAME = 'shg.db';

  static const ORDER_TABLE_NAME = 'Activities';
  static const ORDER_AID = 'aid';
  static const ORDER_TITLE = 'title';
  static const ORDER_QTY = 'qty';
  static const ORDER_PAYMENT_AMT = 'payment_amt';
  static const ORDER_STATUS = 'status';
}

class DatabaseService {
  // Singleton
  static final DatabaseService databaseService =
      DatabaseService._privateConstructor();

  DatabaseService._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    return _database ?? await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    // Do all get requests
    final req = await RequestService.get('$BASE_URL/activities/1', {});
    print(req.data);
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'shg.db');
    return await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  Future<void> _onCreate(Database db, int version) async {
    // Order
    await db.execute('''
   CREATE TABLE "Activities" (
	"${DatabaseConstants.ORDER_AID}"	INTEGER,
	"${DatabaseConstants.ORDER_TITLE}"	TEXT NOT NULL,
	"${DatabaseConstants.ORDER_QTY}"	INTEGER,
	"${DatabaseConstants.ORDER_PAYMENT_AMT}"	REAL,
	"${DatabaseConstants.ORDER_STATUS}"	TEXT NOT NULL,
	PRIMARY KEY("${DatabaseConstants.ORDER_AID}")
); 
    ''');
    // Members
    //
  }

// Future<void> insert
}
