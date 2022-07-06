import 'package:fcm_notifikasi/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO : Tambahan Baru Disini
  @override
  void initState() {
    super.initState();
    //ketika notifikasi diklik dan keadaan on Terminated
    FirebaseMessaging.instance.getInitialMessage().then(
      (value) {
        //route ini di isi pada field firebase yaitu custom data
        if (value != null) {
          var _routeName = value.data['route'];
          Navigator.of(context).pushNamed(_routeName);
        }
      },
    );

    //ketika notifikasi diklik dan keadaan on Background
    FirebaseMessaging.onMessageOpenedApp.listen(
      (event) {
        if (event.notification != null) {
          print(event.notification!.title);
          print(event.notification!.body);
          print(event.data['route']);
          var _routeName = event.data['route'];
          Navigator.of(context).pushNamed(_routeName);
        }
      },
    );

    //ketika notifikasi diklik dan keadaan on Foreground
    FirebaseMessaging.onMessage.listen((event) {
      if (event.notification != null) {
        print(event.notification!.title);
        print(event.notification!.body);
        LocalNotificationService.createAndDisplayNotification(event);
      }
    });
  }

  /*@override
  void initState() {
    super.initState();

    //ketika notifikasi diklik dan keadaan on Terminated
    FirebaseMessaging.instance.getInitialMessage().then(
      (value) {
        //route ini di isi pada field firebase yaitu custom data
        if (value != null) {
          var _routeName = value.data['route'];
          Navigator.of(context).pushNamed(_routeName);
        }
      },
    );

    //ketika notifikasi diklik dan keadaan on Background
    FirebaseMessaging.onMessageOpenedApp.listen((event) {});

    //ketika notifikasi diklik dan keadaan on Foreground
    FirebaseMessaging.onMessage.listen((event) {
      if (event.notification != null) {
        print(event.notification!.title);
      }
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
    );
  }
}
