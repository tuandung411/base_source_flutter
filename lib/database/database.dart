import 'dart:async';
import 'dart:io';


import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:super_app/models/user_model.dart';
// import 'package:super_app/models/converted_pdf_file_model.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  initDB() async {
    // Get the location of our apps directory. This is where files for our app, and only our app, are stored.
    // Files in this directory are deleted when the app is deleted.
    Directory documentsDir = await getApplicationDocumentsDirectory();
    String path = join(documentsDir.path, 'super_app.db');

    return await openDatabase(path, version: 1, onOpen: (db) async {},
        onCreate: (Database db, int version) async {
      // Create the note table
      await db.execute('''
				CREATE TABLE user(
					id INTEGER PRIMARY KEY,          
          username TEXT DEFAULT '' ,
          password TEXT DEFAULT '',
				)
			''');
     
    });
  }

  /*
	 * user Table
	 */
  Future<List<User>> getAllUser() async {
    final db = await database;
    var res = await db?.query("user");
    List<User>? list = (res!.isNotEmpty
        ? res.map((c) => User.fromJson(c)).toList()
        : []).cast<User>();
    return list;
  }

  

  newUser(User user) async {
    final db = await database;
    var res = await db!.insert('user', user.toJson());

    return res;
  }

  deleteUser(int id) async {
    final db = await database;
    return db?.delete("user", where: "id = ?", whereArgs: [id]);
  }

  selectById(String id) async {
    final db = await database;
    var res = await db?.delete("user",
        where: "id = ?", whereArgs: [id]);
    return res;
  }

  deleteAll() async {
    final db = await database;
    var res = await db?.delete('user');
    return res;
  }

  deleleDB() async {
    final db = await database;
    var res = await db?.execute("DROP TABLE IF EXISTS user");
    return res;
  }

 
  
  
}
