import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotification {
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  static final PushNotification _notificationInstance = PushNotification._internal();

  factory PushNotification() {
    return _notificationInstance;
  }

  static void _configureNotifications() {
    // TODO: Link to message types
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
  }

  // Only applies for iOS
  static void _requestPermissions() async {
    await _firebaseMessaging.requestNotificationPermissions(
        
    );
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
    });
  }
 
  static void init() async {
    _configureNotifications();
    _requestPermissions();
    _firebaseMessaging.subscribeToTopic('user');
  }

  PushNotification._internal();
}