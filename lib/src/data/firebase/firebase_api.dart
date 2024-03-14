import 'dart:convert';
import 'dart:developer';

import 'package:certenz/src/config/navigation.dart';
import 'package:certenz/src/config/routes.dart';
import 'package:certenz/src/utils/logger.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:certenz/main.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  Logger().d({
    "title": message.notification!.title,
    "body": message.notification!.body,
    "payload": message.data,
  });
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  final _androidChannel = const AndroidNotificationChannel(
    "high_importance_channel",
    "High Importance Notifications",
    description: "This channel is used for importance notifications.",
    importance: Importance.defaultImportance,
  );

  final _localNotification = FlutterLocalNotificationsPlugin();

  void handleMessage(RemoteMessage? message) {
    dLog(message);
    if (message == null) return;
    // GoRouter.of(context).goNamed(name)
    MyRouter.router.routerDelegate.navigatorKey.currentContext!
        .goNamed("notif-test", extra: message);
    // globalNavigationKey.currentState
    //     ?.pushNamed("notif-test", arguments: message);
  }

  Future initPushNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    FirebaseMessaging.onMessage.listen((message) {
      final notification = message.notification;
      if (notification == null) return;

      _localNotification.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _androidChannel.id,
            _androidChannel.name,
            channelDescription: _androidChannel.description,
            icon: '@drawable/app_icon',
            priority: Priority.high,
          ),
        ),
        payload: jsonEncode(message.toMap()),
      );
    });
  }

  Future initLocalNotification() async {
    const iOS = DarwinInitializationSettings();
    const android = AndroidInitializationSettings('@drawable/app_icon');
    const settings = InitializationSettings(android: android, iOS: iOS);

    await _localNotification.initialize(
      settings,
      onDidReceiveNotificationResponse: (details) {
        final message = RemoteMessage.fromMap(jsonDecode(details.payload!));
        handleMessage(message);
      },
    );

    final platform = _localNotification.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();

    await platform?.createNotificationChannel(_androidChannel);
  }

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fcmToken = await _firebaseMessaging.getToken();
    log('Token : $fcmToken');
    initPushNotifications();
    initLocalNotification();
  }
}
