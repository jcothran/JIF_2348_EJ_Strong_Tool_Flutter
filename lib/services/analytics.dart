import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'forms.dart';
FirebaseAnalytics analytics = FirebaseAnalytics.instance;
//added readability 



Future<void> initialize() async { //this initializes the analytics 
  if (_analytics == null) {
    await Firebase.initializeApp();
    _analytics = FirebaseAnalytics();
  }
}