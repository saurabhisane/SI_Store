import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:si_store/features/authentication/controller/sign_up/nework_manager.dart';
import 'package:si_store/utils/constants/images_string.dart';
import 'package:si_store/utils/loader/sloader.dart';
import 'package:si_store/utils/popups/openloading_dialog.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final firstName = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      //start loading
      SFullScreenLoader.openLoadingDialog(
          'We are processing your info', SImagesString.docerImage);

      //connectivity check
      final isConnect = await NetworkManager.instance.isConnected();

      if (!isConnect) return;

      //form validation
      if (!signupFormKey.currentState!.validate()) return;

      if (!privacyPolicy.value) {
        SLoader.warningSnackBar(
            title: 'Accept Privacy policies',
            message:
                'In order to create account, you must have to read and accept the privacy & policy!');
        return;
      }
    } catch (e) {
      print(e.runtimeType);
      SLoader.errorSnackBar(title: 'oh snap', message: e.toString());
    } finally {
      SFullScreenLoader.stopLoading();
    }
  }
}
