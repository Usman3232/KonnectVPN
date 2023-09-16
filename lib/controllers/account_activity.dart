import 'package:get/get.dart';

class AccountActivityCont extends GetxController {
  RxString selectedRange = "".obs;
  final rangeList = ["3 Month", "6 Month", "1 Year"];

  RxString selectedFilter = "".obs;
  final filterList = ["All"];
}
