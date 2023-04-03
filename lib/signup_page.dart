import 'package:flutter/material.dart';
import 'blog_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'vazir'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: const MyCustomForm(),
            appBar: AppBar(
              title: const Text(
                'لطفا اطلاعات مورد نیاز را با دقت پر کنید',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),
              ),
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
                    colors: [Colors.blueGrey, Colors.teal],
                  ),
                ),
              ),
            )));
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Directionality(
            textDirection: TextDirection.rtl,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'نام'),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'نام خانوادگی',
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'آدرس ایمیل',
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'شماره تلفن',
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'کد اشتراک اپلیکیشن سیگنال VIP',
                ),
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 23.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200.0, 40.0),
                    elevation: 2,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.teal, width: 3.0),
                    foregroundColor: Colors.teal[900]),
                onPressed: () {
                  _NavigatoBlogPage(context, BlogScreen());
                },
                child: Text(
                  'ورود به حساب',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Icon(
                Icons.login,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _NavigatoBlogPage(BuildContext context, Widget page) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (BuildContext context) {
        return page;
      },
    ),
  );
}
