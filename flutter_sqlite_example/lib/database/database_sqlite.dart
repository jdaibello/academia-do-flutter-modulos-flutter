import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSqLite {
  Future<Database> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, 'SQLITE_EXAMPLE');

    return await openDatabase(
      databaseFinalPath,
      version: 2,
      onConfigure: (db) async {
        debugPrint('onConfigure chamado');

        await db.execute('PRAGMA foreign_keys = ON');
      },

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

        batch.execute('''
          CREATE TABLE produto(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome VARCHAR(200)
          )
        ''');

        // batch.execute('''
        //   CREATE TABLE categoria(
        //     id INTEGER PRIMARY KEY AUTOINCREMENT,
        //     nome VARCHAR(200)
        //   )
        // ''');
        batch.commit();
      },

      // Será chamado sempre que houver alteração no version incremental (1 -> 2)
      onUpgrade: (Database db, int oldVersion, int newVersion) {
        debugPrint('onUpgrade chamado');
        final batch = db.batch();

        if (oldVersion == 1) {
          batch.execute('''
            CREATE TABLE produto(
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              nome VARCHAR(200)
            )
        ''');

          //   batch.execute('''
          //     CREATE TABLE categoria(
          //       id INTEGER PRIMARY KEY AUTOINCREMENT,
          //       nome VARCHAR(200)
          //     )
          // ''');
        }

        // if (oldVersion == 2) {
        //   batch.execute('''
        //     CREATE TABLE categoria(
        //       id INTEGER PRIMARY KEY AUTOINCREMENT,
        //       nome VARCHAR(200)
        //     )
        // ''');
        // }
        batch.commit();
      },

      // Será chamado sempre que houver alteração no version decremental (2 -> ')
      onDowngrade: (Database db, int oldVersion, int newVersion) {
        debugPrint('onDowngrade chamado');
        final batch = db.batch();

        if (oldVersion == 3) {
          batch.execute('''
            DROP TABLE categoria
        ''');
        }
        batch.commit();
      },
    );
  }
}
