import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/icons.dart';
import '../../constants/text_styles.dart';
import '../../controllers/swap.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';

class EmptyWalletOptionDialog extends StatefulWidget {
  const EmptyWalletOptionDialog({super.key});

  @override
  State<EmptyWalletOptionDialog> createState() =>
      _EmptyWalletOptionDialogState();
}

class _EmptyWalletOptionDialogState extends State<EmptyWalletOptionDialog> {
  final cont = Get.find<SwapCont>();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      cont.isBlur.value = true;
    });
  }

  @override
  void dispose() {
    super.dispose();
    Future.delayed(Duration.zero, () {
      cont.isBlur.value = false;
    });
  }

  List<String> walletButtonTitle = ["Import", "Create"];
  List<String> walletButtonIcons = [AppIcons.import, AppIcons.create];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      child: Container(
        height: SizeConfig.heightMultiplier * 31,
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
            Spacing.y(5),
            Container(
              height: 42,
              width: SizeConfig.widthMultiplier * 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white12),
              ),
              alignment: Alignment.center,
              child: Text(
                "You Don’t Have Yet",
                style: AppTextStyles.bodyExtraSmall.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.textMultiplier * 1.05,
                    color: Colors.white38),
              ),
            ),
            Spacing.y(5),
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
                        color: Colors.white.withOpacity(.05)),
                    child: Row(
                      children: [
                        Container(
                          height: SizeConfig.heightMultiplier * 4,
                          width: SizeConfig.widthMultiplier * 8.8,
                          margin: EdgeInsets.only(
                              right: SizeConfig.widthMultiplier * 3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(.05)),
                          alignment: Alignment.center,
                          child: Image.asset(
                            walletButtonIcons[index],
                            height: SizeConfig.imageSizeMultiplier * 4,
                          ),
                        ),
                        Text(
                          walletButtonTitle[index],
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
