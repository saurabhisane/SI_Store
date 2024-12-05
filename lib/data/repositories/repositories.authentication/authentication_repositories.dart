import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:si_store/features/authentication/screens/Login/login_screen.dart';
import 'package:si_store/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepositories extends GetxController {
  static AuthenticationRepositories get instance => Get.find();

  //Get Storage
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    if(kDebugMode){
      print('=========================GET STORAGE ====================');
      print(deviceStorage.read('isFirstTime'));
    }

    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(Onboarding());
  }



}
