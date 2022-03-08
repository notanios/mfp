import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'notifications_channel', // id
  'Notifications', // title
  importance: Importance.max,
);

//need to put icon into drawable on Android
const AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('ic_launcher');

const InitializationSettings initializationSettings =
    InitializationSettings(android: initializationSettingsAndroid);

class PushNotificationsController {
  UserRepository repo = Get.find<UserRepository>();

  void init() async {
    FirebaseMessaging.instance.getToken().then((token) async {
      print("FirebaseMessaging token: $token");
      if (token != null && token.isNotEmpty) {
        // await repo.sendFirebaseToken(token);
      }
    });
    FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
      if (token.isNotEmpty) {
        // await repo.sendFirebaseToken(token);
      }
    });

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((message) {
      processIncomingPush(message);
    });

    initLocalNotifications();
  }

  void initLocalNotifications() async {
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      // If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description,
                icon: android.smallIcon,
                importance: Importance.max,
                priority: Priority.max,
              ),
            ));
      }
    });
  }

  void processIncomingPush(RemoteMessage message) {
    var id = message.data["GiverPublicCodeID"];
    if (id != null) {
      var repo = Get.find<UserRepository>();
      repo.syncTickedLimitedData(id);
    }
  }
}
