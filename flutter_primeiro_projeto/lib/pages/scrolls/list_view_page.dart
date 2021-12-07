import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black,
          );
        },
        itemBuilder: (context, index) {
          debugPrint('Carregando o índice $index');

          return ListTile(
            title: Text('O item é $index'),
            subtitle: const Text('Flutter é TOP'),
            leading: CircleAvatar(
              backgroundColor: Colors.green.shade800,
              backgroundImage: const NetworkImage(
                'https://pbs.twimg.com/media/Eu7e3mQVgAImK2o.png',
              ),
            ),
            trailing: const CircleAvatar(),
          );
        },
      ),
    );
  }
}
