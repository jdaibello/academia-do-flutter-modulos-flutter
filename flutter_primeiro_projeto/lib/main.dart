import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigation_bar/bottom_navigation_bar_page.dart';
import 'package:flutter_primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:flutter_primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_page.dart';
import 'package:flutter_primeiro_projeto/pages/forms/forms_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_columns_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/list_view_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/single_child_scroll_view_page.dart';
import 'package:flutter_primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page2.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnsPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
        '/scrolls/single_child': (_) => const SingleChildScrollViewPage(),
        '/scrolls/list_view': (_) => const ListViewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackbars': (_) => const SnackbarPage(),
        '/forms': (_) => const FormsPage(),
        '/cidades': (_) => const CidadesPage(),
        '/stack': (_) => const StackPage(),
        '/stack/2': (_) => const StackPage2(),
        '/bottom_navigation_bar': (_) => const BottomNavigationBarPage(),
        '/circle_avatar': (_) => const CircleAvatarPage(),
      },
    );
  }
}
