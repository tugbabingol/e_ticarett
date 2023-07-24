import 'package:e_ticarett/utils/colors.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Notifications',
          style: TextStyle(color: kBackgroundColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: kBackgroundColor),
      ),
      body: FittedBox(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
            children: [
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  ),
              SizedBox(height: 16.0),
              Image(image: AssetImage("assets/11.jpeg")),
              SizedBox(height: 16.0),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  style: TextStyle(color: kBackgroundColor)),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text('11/Feb/2021 04:42 PM',
                    style: TextStyle(color: kBackgroundColor)),
              )
            ],
          ),
          ),
        ),
      ),
    );
  }
}
