
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_ticarett/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../utils/colors.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
        children: [
          AppBar(
            title: const Text(
              "Cart",
              style: TextStyle(
                fontSize: 28,
                color: kBackgroundColor,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: kBackgroundColor),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: carts.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: 75,
                margin: const EdgeInsets.only(
                  bottom: 25,
                  left: 10.0,
                  right: 10.0,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        carts[index].productImageUrl,
                      ),
                      alignment: Alignment.bottomRight,
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Stack(
                  children: [
                    Positioned(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              carts[index].productName,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 22),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${carts[index].currentPrice}\$ ",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total:    \$1244',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBackgroundColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const SignUpScreen(), //yönlendirme örnek olarak koyuldu
                      ),
                    );
                  },
                  child: const Text("Confirm"))
            ],
          ),
        ],
      ),
        ),),
      ],
    );
    
  }
}
