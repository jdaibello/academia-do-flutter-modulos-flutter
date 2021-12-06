import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            // icon: const Icon(Icons.restaurant_menu),
            // initialValue: PopupMenuPages.container,
            tooltip: 'Selecione um item',
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.mediaQuery,
                  child: Text('MediaQuery'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('LayoutBuilder'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
