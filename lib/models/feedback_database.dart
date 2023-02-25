import 'package:sqflite/sqflite.dart';

import 'feedback.dart';

class NotesDatabase {
  static final _name = "NotesDatabase.db";
  static final _version = 1;

  late Database database;
  static final tableName = 'notes';

  initDatabase() async {
    database = await openDatabase(_name, version: _version,
        onCreate: (Database db, int version) async {
      await db.execute('''CREATE TABLE $tableName (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    title TEXT,
                    content TEXT,
                    noteColor TEXT
                    )''');
    });
  }

  Future<int> insertFeedback(Feedback feedback) async {
    return await database.insert(tableName, feedback.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<int> updateFeedback(Feedback feedback) async {
    return await database.update(tableName, feedback.toMap(),
        where: 'id = ?',
        whereArgs: [feedback.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Map<String, dynamic>>> getAllFeedback() async {
    return await database.query(tableName);
  }

  Future<Map<String, dynamic>?> getFeedback(int id) async {
    var result =
        await database.query(tableName, where: 'id = ?', whereArgs: [id]);

    if (result.length > 0) {
      return result.first;
    }

    return null;
  }

  Future<int> deleteFeedback(int id) async {
    return await database.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  closeDatabase() async {
    await database.close();
  }
}
