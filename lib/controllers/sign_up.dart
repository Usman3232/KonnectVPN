import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpCont extends GetxController {
  //SIGNUP CONTROLLERS
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController referral = TextEditingController();

  //AGREE TO POLICY
  RxBool checkbox = false.obs;

  //OTP CONTROLLERS
  TextEditingController firstOTPCont = TextEditingController();
  TextEditingController secondOTPCont = TextEditingController();
  TextEditingController thirdOTPCont = TextEditingController();
  TextEditingController forthOTPCont = TextEditingController();
}
