import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class WalletTile extends StatelessWidget {
  const WalletTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "1000 KPN",
                style:
                    textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w700),
              ),
              Spacing.y(.6),
              Text(
                "87oftg6758ed76",
                style: textTheme.bodySmall!.copyWith(color: Colors.white54),
              )
            ],
          ),
          Container(
            height: SizeConfig.heightMultiplier * 3.3,
            width: SizeConfig.widthMultiplier * 22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.primaryClr),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Private Key",
                  style: textTheme.displaySmall!.copyWith(
                      color: AppColors.primaryClr,
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.textMultiplier * 1.05),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
