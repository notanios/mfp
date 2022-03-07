import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:mdf/data/repos/user_repository_impl.dart';

class PushNotificationsController {
    UserRepository repo = Get.find<UserRepository>();

    void init (){
      FirebaseMessaging.instance.getToken().then((token) async {
        if (token != null && token.isNotEmpty) {
           await repo.sendFirebaseToken(token);
        }
      });
      FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
        if (token.isNotEmpty) {
          CurrentUserListenerSingleton().updateFireBaseToken();
        }
      });
    }
}