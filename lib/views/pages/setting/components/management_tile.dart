import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';
import '../../manage account/manage_account.dart';

class SettingManagementTile extends StatelessWidget {
  const SettingManagementTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Get.to(
          () => ManageAccountScreen(),
        );
      },
      child: Row(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 13,
            margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(18),
            ),
            alignment: Alignment.center,
            child: Image.asset(AppIcons.user,
                height: SizeConfig.imageSizeMultiplier * 6),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Manage Account",
                style: textTheme.displaySmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Spacing.y(1),
              Row(
                children: [
                  Text(
                    "2",
                    style: textTheme.displaySmall!.copyWith(
                        color: AppColors.primaryClr,
                        fontSize: SizeConfig.textMultiplier * 1),
                  ),
                  Text(
                    "/4 Document Verified",
                    style: textTheme.displaySmall!.copyWith(
                        color: Colors.white38,
                        fontSize: SizeConfig.textMultiplier * 1),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
            size: SizeConfig.imageSizeMultiplier * 4,
          )
        ],
      ),
    );
  }
}
