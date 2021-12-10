import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa_desafio/pages/components/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    final statusBar = mediaQuery.padding.top;

    final bodyHeight = mediaQuery.size.height -
        statusBar -
        kToolbarHeight -
        kBottomNavigationBarHeight;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Blue-Vinyl',
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/more.png',
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/heart.png',
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/messenger.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: bodyHeight * 0.25,
            color: Theme.of(context).primaryColor,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Story(
                    username: 'Seu story',
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Lionel_Messi_20180626.jpg/200px-Lionel_Messi_20180626.jpg',
                    isFirst: true,
                  ),
                  Story(
                    username: 'neymarjr',
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/8/83/Bra-Cos_%281%29_%28cropped%29.jpg',
                  ),
                  Story(
                    username: 'psg',
                    imageUrl:
                        'https://cdn.jornaldebrasilia.com.br/wp-content/uploads/2021/10/29133403/w-psg.jpeg',
                  ),
                  Story(
                    username: 'barcelona',
                    imageUrl:
                        'https://pbs.twimg.com/profile_images/1409804369810296833/V41wBiqw_400x400.jpg',
                  ),
                  Story(
                    username: 'cristiano.ronaldo',
                    imageUrl:
                        'https://i0.statig.com.br/bancodeimagens/6g/y2/is/6gy2isxpckzeslb0juwvgl8q8.jpg',
                  ),
                  Story(
                    username: 'cbf',
                    imageUrl:
                        'https://observatoriog.bol.uol.com.br/wordpress/wp-content/uploads/2021/10/CBF.png',
                  ),
                  Story(
                    username: 'formula1',
                    imageUrl:
                        'https://s2.glbimg.com/ZdAxQHmYB8LGHhRkozhPz6t8OFg=/0x0:1200x750/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2017/M/l/tJe4DERc6Vxp4i2HMAFg/f1-logo-red-on-white.png',
                  ),
                  Story(
                    username: 'lewis.hamilton',
                    imageUrl:
                        'https://pbs.twimg.com/profile_images/1459959233601056774/_mVgeTmO_400x400.jpg',
                  ),
                  Story(
                    username: 'dimaria',
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/NIG-ARG_%285%29.jpg/250px-NIG-ARG_%285%29.jpg',
                  ),
                  Story(
                    username: 'ribamar',
                    imageUrl:
                        'https://s2.glbimg.com/8lt_0pYsc2RjwLF5tGWpwMildhM=/0x0:3000x2000/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2021/s/M/QLymozT5m4Hpm9Sv8TZg/agif21062721190284.jpg',
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: bodyHeight * 0.75,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        selectedIconTheme: const IconThemeData(size: 30),
        selectedFontSize: 0,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(size: 30),
        unselectedFontSize: 0,
        currentIndex: 0,
        items: [
          const BottomNavigationBarItem(
            label: '',
            tooltip: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          const BottomNavigationBarItem(
            label: '',
            tooltip: 'Pesquisar',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: '',
            tooltip: 'Reels',
            icon: Image.asset(
              'assets/images/video.png',
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            tooltip: 'Loja',
            icon: Image.asset(
              'assets/images/shopping_bag.png',
              width: 30,
              height: 30,
            ),
          ),
          const BottomNavigationBarItem(
            label: '',
            tooltip: 'Meu perfil',
            icon: SizedBox(
              width: 30,
              height: 30,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Lionel_Messi_20180626.jpg/200px-Lionel_Messi_20180626.jpg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
