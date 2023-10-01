import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class DeviceModelTile extends StatelessWidget {
  const DeviceModelTile({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: SizeConfig.heightMultiplier * 8.3,
          width: SizeConfig.widthMultiplier * 88,
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white.withOpacity(.07)),
          child: Row(
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 5.7,
                width: SizeConfig.widthMultiplier * 12.7,
                margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white.withOpacity(.05),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  AppIcons.power,
                  height: SizeConfig.imageSizeMultiplier * 6,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "ID : ",
                        style: textTheme.bodySmall!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "12EWTU",
                        style: textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryClr),
                      ),
                    ],
                  ),
                  Spacing.y(1),
                  Text(
                    "192.168.1.1",
                    style:
                        textTheme.displaySmall!.copyWith(color: Colors.white38),
                  )
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "1 KNKT/m",
                    style: textTheme.displaySmall!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Spacing.y(1),
                  Text(
                    "Aug 19, 2023",
                    style: textTheme.displaySmall!.copyWith(
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: Colors.white38),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
