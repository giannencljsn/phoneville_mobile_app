import 'package:flutter/material.dart';
import 'package:phoneville_mobile_app/views/screens/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Register Account',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 4),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email Address',
              hintText: 'Enter Email Address',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.pink,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Full Name',
              hintText: 'Full Name',
              prefixIcon: Icon(
                Icons.account_circle,
                color: Colors.pink,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter Password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.pink,
              ),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: Center(
              child: Text(
                'Register',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }),
              );
            },
            child: Text(
              'Already Have An Account?',
            ),
          ),
        ],
      ),
    );
  }
}
