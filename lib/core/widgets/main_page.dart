import 'package:flutter/material.dart';
import 'package:valipour_test/core/widgets/bookmark_page.dart';
import 'package:valipour_test/core/widgets/home_page.dart';
import 'package:valipour_test/core/widgets/map_page.dart';
import 'package:valipour_test/core/widgets/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<BottomNavigationBarItem> items=[
     BottomNavigationBarItem(label: "home",icon: const Icon(Icons.home),activeIcon: Column(
       children:  [
         const Icon(Icons.home,color: Colors.black54,),
         Image.asset('assets/images/ellipse.png'),
       ],
    )),
    BottomNavigationBarItem(label: "bookMark",icon: const Icon(Icons.bookmark),activeIcon: Column(
      children:  [
        const Icon(Icons.bookmark,color: Colors.black54,),
        Image.asset('assets/images/ellipse.png'),
      ],
    )),
    BottomNavigationBarItem(label: "map",icon: const Icon(Icons.map),activeIcon: Column(
      children:  [
        const Icon(Icons.map,color: Colors.black54,),
        Image.asset('assets/images/ellipse.png'),
      ],
    )),

    BottomNavigationBarItem(label: "profile",icon: const Icon(Icons.person),activeIcon: Column(
      children:  [
        const Icon(Icons.person,color: Colors.black54,),
        Image.asset('assets/images/ellipse.png'),
      ],
    )),
  ];
  List page=[
    const HomePage(),
    const BookMarkPage(),
    const MapPage(),
    const ProfilePage()
  ];
  int _currentIndex=0;
  void onTap(index){
     setState(() {
       _currentIndex=index;
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F2A40),
      body: page[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
        child: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 10,
          backgroundColor: Colors.white,
          items:items,
        ),
      ),
    );
  }
}
