import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_ticarett/screens/notifications_screen.dart';
import 'package:e_ticarett/screens/user_screen.dart';
import 'package:e_ticarett/utils/colors.dart';
import 'package:e_ticarett/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopContainer extends StatelessWidget {
  final String title;
  final String searchBarTitle;
  const TopContainer(
      {super.key, required this.title, required this.searchBarTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title
        Row(
          children: [
            Text(
              title,
              style: kNormalStyle.copyWith(
                  fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kGreyColor.withOpacity(0.8),
              ),
              child: Stack(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationScreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        FontAwesomeIcons.bell,
                        color: Colors.black87,
                        size: 20,
                      )),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kOrangeColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserScreen(),
                ),
              );
            },
            child:ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: CachedNetworkImage(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6uPsBbT3ImVFmbKhJWAU6VbnmhE__N0cfog&usqp=CAU",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ) ,
            ),
            
          ],
        ),
        //search bar

        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: kGreyColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            children: [
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                searchBarTitle,
                style: const TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
