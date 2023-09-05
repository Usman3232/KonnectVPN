import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationCont extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController code = TextEditingController();
  TextEditingController citizenship = TextEditingController();
  TextEditingController residence = TextEditingController();

  RxInt currentSection = 0.obs;
  RxDouble progressValue = 0.0.obs;

  RxInt selectedDocument = (-1).obs;

  //SCAN CONTROL
   RxBool torch = false.obs;
}
