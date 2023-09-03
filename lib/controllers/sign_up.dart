import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpCont extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController referral = TextEditingController();
  RxBool checkbox = false.obs;
}
