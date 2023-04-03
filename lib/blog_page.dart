import 'package:flutter/material.dart';
import 'package:flutter_block_navigation/custom_widgets/post_widgets.dart';
import 'package:flutter_block_navigation/login_page.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final List<Widget> listBlogWidget = [
    getBlogPost('s.png', 'برای 27 شهریور SafeMoon : سیگنال خرید',
        '۱۲,۳۶۵ خرید روی', 'فروش روی ۱۲,۷۲۰'),
    getBlogPost('a.png', 'برای 27 شهریور Alchemy Pay : سیگنال خرید',
        '۸,۴۵۰ خرید روی', 'فروش روی ۹,۲۳۰'),
    getBlogPost('r.png', 'برای 27 شهریور Ripple : سیگنال خرید',
        '۱۰,۳۴۰ خرید روی', 'فروش روی ۱۱,۵۰۰'),
    getBlogPost('c.png', 'برای 27 شهریور Cosmos : سیگنال خرید',
        '۱۵,۳۰۰ خرید روی', 'فروش روی ۱۶,۱۳۰'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.teal, Colors.green],
              ),
            ),
          ),
          title: Text(
            'VIP اخبار و سیگنالهای',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...listBlogWidget,
                    SizedBox(height: 20.0),
                    TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.red),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'خروج از حساب',
                            style: TextStyle(
                                color: Colors.red[850],
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.exit_to_app,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
