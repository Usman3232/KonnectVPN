import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class DepositTab extends StatelessWidget {
  const DepositTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6),
      physics: const BouncingScrollPhysics(),
      children: [
        Spacing.y(3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Show 123 datas",
              style: textTheme.displaySmall!.copyWith(
                  fontSize: SizeConfig.textMultiplier * 1.05,
                  color: Colors.white38),
            ),
            Container(
              height: 26,
              width: 63,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.borderClr),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.filter_alt_outlined,
                      color: Colors.white60,
                      size: SizeConfig.imageSizeMultiplier * 4),
                  Spacing.x(1),
                  Text(
                    "Filter",
                    style: textTheme.displaySmall!.copyWith(
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: Colors.white60),
                  ),
                ],
              ),
            )
          ],
        ),
        Spacing.y(3),
        ...List.generate(
          10,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 5.8,
                  width: SizeConfig.widthMultiplier * 12.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white10),
                  alignment: Alignment.center,
                  child: Image.asset(AppIcons.dataBase,
                      height: SizeConfig.imageSizeMultiplier * 5),
                ),
                Spacing.x(4),
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
                      "Bandwidth : 500 KNKT/m",
                      style: textTheme.displaySmall!.copyWith(
                          color: Colors.white38,
                          fontSize: SizeConfig.textMultiplier * 1.05),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
