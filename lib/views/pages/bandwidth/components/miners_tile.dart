import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class MinersTile extends StatelessWidget {
  const MinersTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white10),
            alignment: Alignment.center,
            child: Image.asset(
              AppIcons.dataBase,
              height: SizeConfig.imageSizeMultiplier * 6,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Model : ",
                    style: textTheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "12EWTU",
                    style: textTheme.bodySmall!.copyWith(
                        color: AppColors.primaryClr,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Spacing.y(1),
              Text(
                "Bandwidth : 200 KNKT/m",
                style: textTheme.displaySmall!.copyWith(color: Colors.white38),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Count",
                style: textTheme.displaySmall!.copyWith(color: Colors.white38),
              ),
              Spacing.y(1),
              Text(
                "2",
                style: textTheme.displaySmall!
                    .copyWith(fontWeight: FontWeight.w600),
              )
            ],
          )
        ],
      ),
    );
  }
}
