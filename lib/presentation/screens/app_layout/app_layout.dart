


import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../styles/app_colors.dart';
import '../home/home_screen.dart';
import '../news/news_screen.dart';
import '../settings/settings_screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final List<Map<String,dynamic>> pages =[
    {'page':const HomeScreen(), 'title' : 'Home'},
    {'page': NewsScreen(), 'title' : 'News'},
    {'page':const SettingScreen(), 'title' : 'Settings'},
  ];

  int pageIndex = 0;
  void selectPage(int index){
    setState(() {
      pageIndex = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(pages[pageIndex]['title'],style: TextStyle(fontSize: 20.sp),),
        centerTitle: true,
      ),
      body: pages[pageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        backgroundColor: AppColors.primaryColor,
        currentIndex: pageIndex,
        selectedItemColor: Colors.white,
        // type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.new_releases_sharp),label:'News'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label:'Settings'),
        ],
      ),
    );
  }
}
