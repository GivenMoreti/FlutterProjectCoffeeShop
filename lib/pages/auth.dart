import 'package:coffee_shop/pages/login.dart';
import 'package:coffee_shop/pages/register.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading:false,
          title: const Text('Auth page'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // LoginPage(),
              RegisterPage(),

              // Text(
              //   'welcome test text',
              //   style: TextStyle(color: Colors.black),
              // ),
            ],
          ),
        ));
  }
}
