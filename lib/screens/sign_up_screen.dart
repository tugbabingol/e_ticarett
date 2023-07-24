
import 'package:e_ticarett/utils/colors.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mailController = TextEditingController();

  
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 3, 7, 34),
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: const EdgeInsets.only(right: 5, left: 5, top: 50),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(152, 167, 162, 180),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(152, 167, 162, 180),
                    labelText: 'Surname',
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(152, 167, 162, 180),
                    labelText: 'E-mail',
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(152, 167, 162, 180),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: const EdgeInsets.only(right: 5, left: 5, top: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Color.fromARGB(152, 167, 162, 180),
                    labelText: 'Password Again',
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Butonun kenar yuvarlaklığını ayarlar
                  ),
                ),
                child: const Text('Sign Up'),
              ),
              Container(
                child:const Text('*By signing up, you agree tot our Terms of Use \n and to recieve Wix emails & updatess \n and acknowledge that you read our \n Privacy Policy.',
                        textAlign: TextAlign.center,),
              ),
              
              Row(
                      // ignore: sort_child_properties_last
                      children: <Widget>[
                        const Text('Already have an account?'),
                        TextButton(
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
             
            ],
          ),
        ),
      ),
    );
  }
}
