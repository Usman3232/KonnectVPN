import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/referral.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class BalanceField extends StatelessWidget {
  BalanceField({super.key});

  final cont = Get.find<ReferralCont>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Duration animaDuration = const Duration(milliseconds: 700);
    return Obx(
      () => AnimatedPositioned(
        duration: animaDuration,
        top: SizeConfig.heightMultiplier * 20,
        right: cont.isWiddraw.value
            ? SizeConfig.widthMultiplier * 6
            : -SizeConfig.widthMultiplier * 100,
        child: Column(
          children: [
            Spacing.y(16),
            Container(
              height: 74,
              width: SizeConfig.widthMultiplier * 88,
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$8.21",
                    style: textTheme.headlineMedium!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 28,
                      width: 63,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Wallet",
                            style: textTheme.displaySmall!.copyWith(
                                fontSize: SizeConfig.textMultiplier * 1.05,
                                color: Colors.white54),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white54,
                            size: SizeConfig.imageSizeMultiplier * 4.5,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacing.y(1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Fee Rate  : ",
                  style: textTheme.displaySmall!.copyWith(
                      color: Colors.white54,
                      fontSize: SizeConfig.textMultiplier * 1.05),
                ),
                Text(
                  "5% From Transaction",
                  style: textTheme.displaySmall!
                      .copyWith(fontSize: SizeConfig.textMultiplier * 1.05),
                ),
                Spacing.y(5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
