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
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    //final we donot change it :)
    OpportunitiesPage(),
    FavoritiesPage(),
    QuestionsPage(),
    AccountPage(),
  ];

  void _onTapedItem(index) {
    _pageController.jumpToPage(index);
    setState(() {
      this._selectedIndex = index;
    });
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
        type: BottomNavigationBarType.fixed, // fix problem of 4 elemnt
        onTap: _onTapedItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: this._selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Opportunities',
              style: TextStyle(
                color: this._selectedIndex == 0 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: this._selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Favorites',
              style: TextStyle(
                color: this._selectedIndex == 1 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: this._selectedIndex == 2 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Fourms',
              style: TextStyle(
                color: this._selectedIndex == 2 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: this._selectedIndex == 3 ? Colors.blue : Colors.grey,
            ),
            title: Text(
              'Account',
              style: TextStyle(
                color: this._selectedIndex == 3 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
