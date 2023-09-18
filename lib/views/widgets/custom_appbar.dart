import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/icons.dart';
import '../../constants/text_styles.dart';
import '../../utils/size_config.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
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
        ),
        Text(title,
            style: textTheme.bodyMedium!
                .copyWith(color: Colors.white.withOpacity(.8))),
        SizedBox(
          height: SizeConfig.heightMultiplier * 4.5,
          width: SizeConfig.widthMultiplier * 10,
        )
      ],
    );
  }
}
