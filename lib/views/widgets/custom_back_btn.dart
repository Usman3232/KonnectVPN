import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import '../../utils/size_config.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap ?? () => Get.back(),
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
