
import 'intro_screen.dart';
import 'notifications_screen.dart';
import '../utils/colors.dart';
import 'package:flutter/material.dart';


class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool startAnimation = false;

  List<String> texts = [
    "My Favorites",
    "Notifications",
    "Settings",
    "About Us",
    "Log Out",
  ];

  List<IconData> icons = [
    Icons.favorite,
    Icons.notifications,
    Icons.settings,
    Icons.assignment,
    Icons.lock,
  ];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kGreyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: kBackgroundColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: texts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(icons[index]),
                    title: Text(texts[index]),
                    onTap: () {
                      // Yönlendirme işlemi burada gerçekleştirilebilir
                      switch (index) {
                        case 0:
                          // "My Favorites" sayfasına yönlendirme
                          break;
                        case 1:
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen()));
                          break;
                        case 2:
                          // "Settings" sayfasına yönlendirme
                          break;
                        case 3:
                          // "About Us" sayfasına yönlendirme
                          break;
                        case 4:
                          // "Log Out" işlemi veya sayfasına yönlendirme
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const IntroScreen()));
                          break;
                      }
                    },
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget item(int index) {
    return AnimatedContainer(
      height: 55,
      width: screenWidth,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 300 + (index * 200)),
      transform:
          Matrix4.translationValues(startAnimation ? 0 : screenWidth, 0, 0),
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth / 20,
      ),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "${index + 1}. ${texts[index]}",
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: kGreyColor),
          ),
          Icon(
            icons[index],
          ),
        ],
      ),
    );
  }
}
