import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_ticarett/data/data.dart';
import 'package:e_ticarett/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDisplayWidget extends StatefulWidget {
  const ProductDisplayWidget({super.key});

  @override
  State<ProductDisplayWidget> createState() => _ProductDisplayWidgetState();
}

class _ProductDisplayWidgetState extends State<ProductDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      crossAxisSpacing: 15,
      crossAxisCount: 2,
      itemCount: products.length,
      mainAxisSpacing: 10,
      itemBuilder: (context, index) {
        return singleItemWidget(
          products[index],
          index == products.length - 1 ? true : false,
        );
      },
    );
  }

  Widget singleItemWidget(Product product, bool lastItem) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(1, 1),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: CachedNetworkImage(
                      imageUrl: product.productImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                      top: 10.0,
                    ),
                    child: Text(
                      product.productName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Row(
                      children: [
                        Text("\$${product.currentPrice}"),
                        const SizedBox(width: 5),
                        Text(
                          "\$${product.oldPrice}",
                          style: const TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: kRedColor,
                            decorationThickness: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 5,
              top: 10,
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  product.isLiked == true
                      ? FontAwesomeIcons.solidHeart
                      : FontAwesomeIcons.heart,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: lastItem == true ? MediaQuery.of(context).size.height * 0.50 : 0,
        )
      ],
    );
  }
}
