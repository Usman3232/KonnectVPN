import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpecialOfferCont extends GetxController {
  RxInt selectedOffer = 0.obs;
  PageController pagecont =
      PageController(viewportFraction: 0.7, keepPage: true);
}
