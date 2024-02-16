import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  static Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'film_detail.db');

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  static Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE Films (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        shortDescription TEXT,
        year INTEGER
      );
    ''');
  }
}
