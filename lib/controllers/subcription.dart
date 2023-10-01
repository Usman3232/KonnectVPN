import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubcriptionCont extends GetxController {
  //Subcriptioln
  RxInt selectedSubcription = (-1).obs;
  //SpecialOffer
  RxInt selectedOffer = 0.obs;
  PageController pagecont =
      PageController(viewportFraction: 0.7, keepPage: true);

//paymentMethod
  RxBool isIdCard = false.obs;
  RxBool isEWallet = false.obs;
  RxBool isCrypto = false.obs;

  RxInt selectedEWallet = (-1).obs;
}
