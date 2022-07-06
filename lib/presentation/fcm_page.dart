import 'package:flutter/material.dart';

class FcmPage extends StatefulWidget {
  const FcmPage({Key? key}) : super(key: key);

  @override
  State<FcmPage> createState() => _FcmPageState();
}

class _FcmPageState extends State<FcmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("FCM Page"),
      ),
      body: const Center(
        child: Text("Page Khusus Notifikasi"),
      ),
    );
  }
}
