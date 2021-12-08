import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        color: Theme.of(context).primaryColor,
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
