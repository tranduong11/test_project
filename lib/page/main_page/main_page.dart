import 'package:bloc_project/const/app_color.dart';
import 'package:bloc_project/page/home_page/home_page.dart';
import 'package:bloc_project/page/login_page/login_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _controller = PageController();
  int _curr = 0;

  final List<Widget> _pages = [
    HomePage(),
    LoginPage(),
  ];

  final List<String> _listNameItem = ['Home', 'Login'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: _pages,
            onPageChanged: (index) {
              setState(() {
                _curr = index;
              });
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: buildBottomAppBar(),
          ),
        ],
      ),
    );
  }

  Widget buildBottomAppBar() {
    return Container(
      margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
      decoration: BoxDecoration(
        color: AppColor.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(90),
        border: Border(
          top: BorderSide(width: 1, color: AppColor.cGray_50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(_listNameItem.length, (index) {
          return buildItem(index);
        }),
      ),
    );
  }

  Widget buildItem(int index) {
    return GestureDetector(
      onTap: () {
        if (_curr != index) {
          setState(() {
            _curr = index;
          });
          _controller.jumpToPage(index);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              index == 0 ? Icons.home : Icons.login,
              color: _curr == index ? AppColor.cBlack_50 : AppColor.cGray,
            ),
            const SizedBox(height: 4),
            Text(
              _listNameItem[index],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: _curr == index ? AppColor.cBlack_50 : AppColor.cGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
