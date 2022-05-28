import 'package:get/get.dart';
import 'package:get_x_state_management/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  late SharedPreferences sharedPreferences;

  @override
  void onInit() {
    super.onInit();
  }

  //delay time function for splash screen.
  Future<void> delayTime() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (!sharedPreferences.containsKey("token")) {
      Get.to(LoginScreen() );
    } else {
      //Get.offNamedUntil(Routes.RIDERPROFILE, (route) => false);
     // Get.offNamed(Routes.DASHBOARD, );
    }
  }
}
