import 'package:flutter/material.dart';
import 'package:flutter_sqlite_example/database/database_sqlite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _database();
  }

  Future<void> _database() async {
    final database = await DatabaseSqLite().openConnection();

    // database.insert('teste', {'nome': 'João Pedro'});
    // database.delete('teste', where: 'nome = ?', whereArgs: ['João Pedro']);
    // database.update(
    //   'teste',
    //   {'nome': 'Academia do Flutter'},
    //   where: 'nome = ?',
    //   whereArgs: ['João Pedro'],
    // );

    // var result = await database.query('teste');
    // debugPrint('$result');

    // database.rawInsert('INSERT INTO teste VALUES(null, ?)', ['João']);
    // database.rawUpdate(
    //   'UPDATE teste SET nome = ? WHERE id = ?',
    //   ['João Academia do Flutter', 5],
    // );
    // database.rawDelete('DELETE FROM teste WHERE id = ?', [2]);
    // var result = await database.rawQuery('SELECT * FROM teste');
    // debugPrint('$result');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
