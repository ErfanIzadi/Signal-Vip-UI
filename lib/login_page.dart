import 'package:flutter/material.dart';
import 'package:flutter_block_navigation/signup_page.dart';
import 'blog_page.dart';
import 'forget_passPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void _NavigatoBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.teal,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'خوش آمدید VIP به اپلیکیشن سیگنال ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Image(
                    image: AssetImage('images/w.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 32),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(200.0, 40.0),
                            side: BorderSide(color: Colors.white, width: 3.0),
                            foregroundColor: Colors.white),
                        onPressed: () {
                          _NavigatoBlogPage(context, BlogScreen());
                        },
                        child: Text(
                          'ورود به حساب',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.login,
                        color: Colors.white70,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(200.0, 40.0),
                        foregroundColor: Colors.black87,
                        backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return MyApp();
                      }));
                    },
                    child: Text(
                      'ثبت نام',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        _NavigatoBlogPage(context, ForgetPassword());
                      },
                      child: Text(
                        'فراموشی رمز عبور',
                        style: TextStyle(fontSize: 16),
                      ),
                      style: TextButton.styleFrom(
                          minimumSize: Size(200.0, 40.0),
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white38))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
