import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class DeviceTile extends StatelessWidget {
  const DeviceTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5),
      child: Row(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 5.7,
            width: SizeConfig.widthMultiplier * 12.5,
            margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white10),
            alignment: Alignment.center,
            child: Image.asset(
              AppIcons.dataBase,
              height: SizeConfig.imageSizeMultiplier * 5.5,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                "Count",
                style: textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.textMultiplier * 1.05,
                    color: Colors.white38),
              ),
              Spacing.y(1),
              Container(
                height: SizeConfig.heightMultiplier * 3.5,
                width: SizeConfig.widthMultiplier * 10.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white10),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "2",
                      style: textTheme.displaySmall!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacing.x(1),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.white38,
                      size: SizeConfig.imageSizeMultiplier * 4,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
