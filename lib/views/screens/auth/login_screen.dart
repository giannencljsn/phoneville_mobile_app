import 'package:flutter/material.dart';
import 'package:phoneville_mobile_app/views/screens/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Account',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                letterSpacing: 4,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //Email address
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email Address',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Password
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),

            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                print('I love you Jesus Christ!');
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 100,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      letterSpacing: 4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
              child: Text('Need an Account?'),
            ),
          ],
        ),
      ),
    );
  }
}
