import 'package:e_ticarett/screens/cart_screen.dart';
import 'package:e_ticarett/screens/category_display_screen.dart';
import 'package:e_ticarett/screens/product_display_screen.dart';
import 'package:e_ticarett/screens/user_screen.dart';
import 'package:e_ticarett/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final pageController = PageController(initialPage: 0);

  //tabbar icons
  final tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.user,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: const [
              ProductDisplayScreen(),
              CategoryDisplayScreen(),
              CartScreen(),
              UserScreen(),
            ],
          ),

          //bottom bar
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              alignment: Alignment.center,
              height: 70,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...tabBarIcons.map(
                    (icon) => IconButton(
                      onPressed: () {
                        if (currentIndex == 0) {
                          pageController.jumpToPage(1);
                          currentIndex = 1;
                        } else if (currentIndex == 1) {
                          pageController.jumpToPage(2);
                          currentIndex = 2;
                        } else if (currentIndex == 2) {
                          pageController.jumpToPage(3);
                          currentIndex = 3;
                        } else {
                          pageController.jumpToPage(0);
                          currentIndex = 0;
                        }
                      },
                      icon: Icon(
                        icon,
                        color: Colors.white60,
                        size: 22,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
