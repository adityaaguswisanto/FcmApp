import 'package:fcm_notifikasi/presentation/fcm_page.dart';
import 'package:fcm_notifikasi/presentation/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/fcm_page': (_) => const FcmPage(),
      },
      home: const HomePage(),
    );
  }
}
