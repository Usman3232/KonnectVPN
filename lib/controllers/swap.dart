import 'package:get/get.dart';

class SwapCont extends GetxController {
  RxBool isBlur = false.obs;
  RxInt selectedImport = 0.obs;

  RxString selectedWallet = "".obs;
  final walletList = ["Wallet 1", "Wallet 2"];
}
