import 'package:get/get.dart';

class PaymentMethodCont extends GetxController {
  RxBool isIdCard = false.obs;
  RxBool isEWallet = false.obs;
  RxBool isCrypto = false.obs;

  RxInt selectedEWallet = (-1).obs;
}
