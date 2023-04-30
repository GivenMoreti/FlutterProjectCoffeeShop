

import 'package:coffee_shop/pages/home_page.dart';
import 'package:coffee_shop/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            CustomTextField(
            controller: TextEditingController(),
            data: Icons.email,
            hintText: "Email",
            isObscure: false,
            enabled: true,
          ),
           const Text(
                'OR',
                style: TextStyle(color: Colors.black),
              ),
          CustomTextField(
            controller: TextEditingController(),
            data: Icons.phone,
            hintText: 'Phone',
            isObscure: false,
            enabled: true,
          ),
           CustomTextField(
            controller: TextEditingController(),
            data: Icons.lock,
            hintText: "Password",
            isObscure: true,
            enabled: true,
          ),
         
          // register button
           OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const HomePage();
                        },
                      ),
                    );
                  },
                  child: const Text('Register'),
                ),
      
      
      
      ],
    );
  }
}