import 'package:get/get.dart';
import 'package:si_store/features/authentication/controller/sign_up/nework_manager.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}