import 'package:certenz/src/config/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotifTest extends StatefulWidget {
  const NotifTest({super.key});

  @override
  State<NotifTest> createState() => _NotifTestState();
}

class _NotifTestState extends State<NotifTest> {
  @override
  Widget build(BuildContext context) {
    var message = MyRouter.router.routerDelegate.currentConfiguration.extra
        as RemoteMessage;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${message.notification!.title}"),
            Text("${message.notification!.body}"),
            Text("${message.data}"),
          ],
        ),
      ),
    );
    ;
  }
}
