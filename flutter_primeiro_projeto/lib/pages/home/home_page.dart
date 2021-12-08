import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowsColumns,
  mediaQuery,
  layoutBuilder,
  botoesRotacaoTexto,
  scrollsSingleChildScrollView,
  scrollsListView,
  dialogs,
  snackbars,
  forms,
  cidades,
  stack,
  stack2,
  bottomNavigationBar,
  circleAvatar,
  colors,
  materialBanner,
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
                case PopupMenuPages.botoesRotacaoTexto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                case PopupMenuPages.scrollsSingleChildScrollView:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                case PopupMenuPages.scrollsListView:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackbars:
                  Navigator.of(context).pushNamed('/snackbars');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack/2');
                  break;
                case PopupMenuPages.bottomNavigationBar:
                  Navigator.of(context).pushNamed('/bottom_navigation_bar');
                  break;
                case PopupMenuPages.circleAvatar:
                  Navigator.of(context).pushNamed('/circle_avatar');
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed('/colors');
                  break;
                case PopupMenuPages.materialBanner:
                  Navigator.of(context).pushNamed('/material_banner');
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
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoesRotacaoTexto,
                  child: Text('Botões e Rotação de Texto'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrollsSingleChildScrollView,
                  child: Text('Scroll SingleChildScrollView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrollsListView,
                  child: Text('Scroll ListView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbars,
                  child: Text('Snackbars'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('Forms'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades,
                  child: Text('Cidades'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('Stack'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text('Stack 2'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottomNavigationBar,
                  child: Text('BottomNavigationBar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circleAvatar,
                  child: Text('Circle Avatar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors,
                  child: Text('Cores'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.materialBanner,
                  child: Text('MaterialBanner'),
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
