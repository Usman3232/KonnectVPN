import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/icons.dart';
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
        height: SizeConfig.heightMultiplier * 4.5,
        width: SizeConfig.widthMultiplier * 10,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white10),
        child: Image.asset(AppIcons.arrowBack,
            height: SizeConfig.imageSizeMultiplier * 6),
      ),
    );
  }
}
