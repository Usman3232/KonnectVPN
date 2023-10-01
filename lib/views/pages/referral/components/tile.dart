import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class MyReferralsTile extends StatelessWidget {
  const MyReferralsTile({
    super.key,
    required this.isAvailable,
  });

  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(14),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              AppIcons.myReferrals,
              height: SizeConfig.imageSizeMultiplier * 5.5,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jhon Doe",
                style:
                    textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700),
              ),
              Spacing.y(1),
              isAvailable
                  ? Text(
                      "Available",
                      style: textTheme.displaySmall!
                          .copyWith(color: AppColors.primaryClr),
                    )
                  : Text(
                      "Pending",
                      style: textTheme.displaySmall!
                          .copyWith(color: Colors.white38),
                    )
            ],
          ),
          const Spacer(),
          Text(
            "\$10",
            style: textTheme.bodyLarge!
                .copyWith(color: Colors.white.withOpacity(.7)),
          )
        ],
      ),
    );
  }
}
