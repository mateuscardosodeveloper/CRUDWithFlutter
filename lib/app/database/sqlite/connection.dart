import 'dart:async';
import 'package:crud_with_flutter/app/database/sqlite/script.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Conmection{
  
  static Future<Database> get() async {
      var path = join(await getDatabasesPath(), 'banco_contactos');      
      Database _db = await openDatabase(
        path,
        version: 1,
        onCreate: (db,v){
          db.execute(createTable);
          db.execute(insert1);
          db.execute(insert2);
          db.execute(insert3);
        }
      );
    return _db;
  }
}