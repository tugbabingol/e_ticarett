import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_ticarett/data/data.dart';
import 'package:e_ticarett/widgets/top_container.dart';
import 'package:flutter/material.dart';

class CategoryDisplayScreen extends StatefulWidget {
  const CategoryDisplayScreen({super.key});

  @override
  State<CategoryDisplayScreen> createState() => _CategoryDisplayScreenState();
}

class _CategoryDisplayScreenState extends State<CategoryDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            const TopContainer(
              title: "Category",
              searchBarTitle: "Search Category",
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.80,
                  height: 170,
                  margin: const EdgeInsets.only(
                    bottom: 25,
                    left: 10.0,
                    right: 10.0,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        categories[index].thumbnailImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categories[index].categoryName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text("${categories[index].productCount} Products",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ));
  }
}
