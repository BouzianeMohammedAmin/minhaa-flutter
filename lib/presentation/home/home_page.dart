import 'package:flutter/material.dart';
import 'package:minhaa/presentation/Opportunities/opportunities_page.dart';
import 'package:minhaa/presentation/auth/account_page.dart';
import 'package:minhaa/presentation/favorites/favorities_page.dart';
import 'package:minhaa/presentation/forum/question_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = new PageController();

  List<Widget> _screens = [
    OpportunitiesPage(),
    FavoritiesPage(),
    QuestionsPage(),
    AccountPage(),
  ];
  void _onTapedItem(index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: _screens,
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onTapedItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Opportunities'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Fourms'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
