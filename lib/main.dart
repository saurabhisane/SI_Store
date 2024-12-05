import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:si_store/data/repositories/repositories.authentication/authentication_repositories.dart';
import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  //widget binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //To do init local storage
  await GetStorage.init();

  //To do init payment method

  //To do Await Native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //To do initialize the Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then
    ((FirebaseApp value) => Get.put(AuthenticationRepositories()));

  //To do initialize the authentication

  runApp(const App());
}
