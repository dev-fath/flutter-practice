import 'package:flutter/material.dart';
import 'package:hit_flutter/components/list_card.dart';
import 'package:hit_flutter/random_word.dart';
import 'package:http/http.dart';
import 'package:naver_map_plugin/naver_map_plugin.dart';
import 'tabs/home.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainTab();
}

class _MainTab extends State<MainTab> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: (int index) => handleTapBottomNavigation(index),
        items: _bottomNavigationItems()
      ),
      body: Center(
        child: buildPageView(),
      ),
    );
  }

  List<BottomNavigationBarItem> _bottomNavigationItems() {
    return [
      const BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Icons.home),
      ),
      const BottomNavigationBarItem(
        label: "Favorite",
        icon: Icon(Icons.favorite)
      ),
      const BottomNavigationBarItem(
        label: "Map",
        icon: Icon(Icons.map)
      )
    ];
  }
  final List<Widget> _widgetOptions = [
    const Home(),
    const RandomWords(),
    const ListCard(get: Get(),),
    // const NaverMap()
  ];

  final PageController _pageController = PageController(
    initialPage: 0, keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setSelectedPage(index);
      },
      children: _widgetOptions,
    );
  }

  void setSelectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void handleTapBottomNavigation(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.ease);
    });
  }

}