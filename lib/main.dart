import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    final double ekrang = ekran.size.width;
    final double ekrany = ekran.size.height;

    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              ekrang / 20, ekrany / 6, ekrang / 20, ekrany / 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: ekrang / 4, child: Image.asset('assets/logo.png')),
              SizedBox(height: ekrany / 15),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "Kullanıcı Adını giriniz",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(height: ekrany / 20),
              const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "Şifreyi giriniz",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(height: ekrany / 15),
              SizedBox(
                width: ekrang,
                height: ekrany / 20,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: ekrang / 12, right: ekrang / 12),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: const Text(
                      'Giriş Yap',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: ekrany / 20),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Yardım ?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
