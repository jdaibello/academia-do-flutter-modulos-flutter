import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSqLite {
  Future<void> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, 'SQLITE_EXAMPLE');

    await openDatabase(
      databaseFinalPath,
      version: 1,

      // Chamado somente no momento de criação do banco de dados
      // primeira vez que carrega o aplicativo
      onCreate: (Database db, int version) {
        debugPrint('onCreate chamado');

        final batch = db.batch();
        batch.execute('''
          CREATE TABLE teste(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome VARCHAR(200)
          )
        ''');
        batch.commit();
      },

      // Será chamado sempre que houver alteração no version incremental (1 -> 2)
      onUpgrade: (Database db, int oldVersion, int newVersion) {},

      // Será chamado sempre que houver alteração no version decremental (2 -> ')
      onDowngrade: (Database db, int oldVersion, int newVersion) {},
    );
  }
}
