import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_config.dart';

class MyReferralCode extends StatelessWidget {
  const MyReferralCode({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DottedBorder(
          color: AppColors.primaryClr,
          strokeWidth: 2,
          dashPattern: const [8, 4],
          radius: const Radius.circular(14),
          borderType: BorderType.RRect,
          child: Container(
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 70,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            decoration: BoxDecoration(
              color: AppColors.primaryClr.withOpacity(.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "EKREF5368",
                  style: textTheme.bodyMedium!
                      .copyWith(color: AppColors.primaryClr),
                ),
                Text(
                  "Copy",
                  style: textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.white38),
                )
              ],
            ),
          ),
        ),
        Container(
          height: SizeConfig.heightMultiplier * 6,
          width: SizeConfig.widthMultiplier * 13.5,
          decoration: BoxDecoration(
            color: AppColors.primaryClr,
            borderRadius: BorderRadius.circular(14),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.share,
            color: Colors.white,
            size: SizeConfig.imageSizeMultiplier * 7,
          ),
        )
      ],
    );
  }
}
