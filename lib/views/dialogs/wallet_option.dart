import 'package:flutter/material.dart';

import '../../constants/text_styles.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';

class WalletOptionDialog extends StatefulWidget {
  const WalletOptionDialog({
    super.key,
  });

  @override
  State<WalletOptionDialog> createState() => _WalletOptionDialogState();
}

class _WalletOptionDialogState extends State<WalletOptionDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      child: Container(
        height: SizeConfig.heightMultiplier * 42,
        width: SizeConfig.widthMultiplier * 88,
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier * 3,
            left: SizeConfig.widthMultiplier * 5,
            right: SizeConfig.widthMultiplier * 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white12),
          color: const Color(0xff121212),
          borderRadius: BorderRadius.circular(24),
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "Wallet Option",
              style:
                  AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w700),
            ),
            Spacing.y(1),
            Text(
              "Your List Wallet What  You Have",
              style: AppTextStyles.bodyExtraSmall.copyWith(
                  fontSize: SizeConfig.textMultiplier * 1.05,
                  color: Colors.white38),
            ),
            Spacing.y(1.5),
            ...List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier * 1.5),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      margin: EdgeInsets.only(
                          right: SizeConfig.widthMultiplier * 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white10),
                    ),
                    Text(
                      "BNB Smart Chain",
                      style: AppTextStyles.bodyExtraSmall
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: SizeConfig.imageSizeMultiplier * 4,
                    )
                  ],
                ),
              ),
            ),
            Spacing.y(2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  2,
                  (index) => Container(
                    // height: 52,
                    height: SizeConfig.heightMultiplier * 5.6,
                    width: SizeConfig.widthMultiplier * 37,
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 1.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62),
                        color: Colors.white10),
                    child: Row(
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          margin: EdgeInsets.only(
                              right: SizeConfig.widthMultiplier * 3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white10),
                        ),
                        Text(
                          "Import",
                          style: AppTextStyles.bodyExtraSmall.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white54),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
