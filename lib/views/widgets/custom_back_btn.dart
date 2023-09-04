import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/size_config.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        height: SizeConfig.heightMultiplier * 4,
        width: SizeConfig.widthMultiplier * 9,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white10),
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white38,
        ),
      ),
    );
  }
}
