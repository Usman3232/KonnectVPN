import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

import '../../widgets/number_button.dart';

class SwapScreen extends StatelessWidget {
  const SwapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child: Padding(
        padding: AppConstants.defaultPadding,
        child: Column(
          children: [
            Spacing.y(6),
            const Align(
              alignment: Alignment.topLeft,
              child: CustomBackButton(),
            ),
            Spacing.y(3),
            Text(
              "Balance",
              style: AppTextStyles.bodySmall.copyWith(color: Colors.white54),
            ),
            Text(
              "10.000",
              style: AppTextStyles.headingLarge
                  .copyWith(fontSize: SizeConfig.textMultiplier * 4.8),
            ),
            Text(
              "KNKT",
              style: AppTextStyles.bodyMedium
                  .copyWith(color: AppColors.primaryClr),
            ),
            Spacing.y(5),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 10,
                  width: SizeConfig.widthMultiplier * 92,
                  margin: EdgeInsets.only(
                      bottom: SizeConfig.heightMultiplier * 1.8),
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 4),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2734.14 ",
                        style: AppTextStyles.headingMedium
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: 28,
                        width: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white10),
                        alignment: Alignment.center,
                        child: Text(
                          "KNKT",
                          style: AppTextStyles.bodyExtraSmall.copyWith(
                              fontSize: SizeConfig.textMultiplier * 1.05,
                              color: Colors.white54),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 34,
                    width: 34,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "8726.21",
                          style: AppTextStyles.headingMedium.copyWith(
                              color: Colors.white54,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.heightMultiplier * .4),
                          child: Text(
                            " USD",
                            style: AppTextStyles.bodyExtraSmall.copyWith(
                                fontSize: SizeConfig.textMultiplier * 1.05,
                                color: Colors.white54,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Spacing.y(1),
                    Text(
                      "1000 Connect  = 1  KPN",
                      style: AppTextStyles.bodyExtraSmall
                          .copyWith(fontSize: SizeConfig.textMultiplier * 1.05),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.dialog(const SizedBox()
                        // WalletOptionDialog(),
                        // );
                        // EmptyWalletOptionDialog()
                        );
                  },
                  child: Container(
                    height: 28,
                    width: 63,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white10),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Wallet",
                          style: AppTextStyles.bodyExtraSmall.copyWith(
                              color: Colors.white54,
                              fontSize: SizeConfig.textMultiplier * 1.05),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white54,
                          size: SizeConfig.imageSizeMultiplier * 4,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Spacing.y(5),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: SizeConfig.widthMultiplier * 6,
              children: [
                NumberButton(
                  title: "1",
                  onTap: () {},
                ),
                NumberButton(
                  title: "2",
                  onTap: () {},
                ),
                NumberButton(
                  title: "3",
                  onTap: () {},
                ),
                NumberButton(
                  title: "4",
                  onTap: () {},
                ),
                NumberButton(
                  title: "5",
                  onTap: () {},
                ),
                NumberButton(
                  title: "6",
                  onTap: () {},
                ),
                NumberButton(
                  title: "7",
                  onTap: () {},
                ),
                NumberButton(
                  title: "8",
                  onTap: () {},
                ),
                NumberButton(
                  title: "9",
                  onTap: () {},
                ),
                NumberButton(
                  title: "00",
                  onTap: () {},
                ),
                NumberButton(
                  onTap: () {},
                ),
                NumberButton(
                  isIcon: true,
                  onTap: () {},
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 2),
              child: CustomButton(
                title: "Convert",
                onTap: () {},
              ),
            ),
            Spacing.y(2),
          ],
        ),
      )),
    );
  }
}
