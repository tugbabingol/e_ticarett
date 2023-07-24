import 'package:e_ticarett/screens/home_screen.dart';
import 'package:e_ticarett/screens/sign_up_screen.dart';
import 'package:e_ticarett/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_username == 'user' && _password == 'password') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  HomeScreen(),
          ),
        );
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Incorrect Entry"),
                content: const Text("Incorrect Password or E-mail"),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'))
                ],
              );
            });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(),
                      child: const Text(
                        "MNMLMANDI",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Sign In to MNMLMANDI',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        left: 15,
                        right: 15,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Color.fromARGB(152, 167, 162, 180),
                            labelText: 'Email'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your E-mail';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _username = value!;
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        left: 15,
                        right: 15,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Color.fromARGB(152, 167, 162, 180),
                            labelText: 'Password'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kBackgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Butonun kenar yuvarlaklığını ayarlar
                        ),
                      ),
                      child: const Text('Login'),
                      onPressed: _submitForm,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      // ignore: sort_child_properties_last
                      children: <Widget>[
                        const Text('Don\'t have an account?'),
                        TextButton(
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}
