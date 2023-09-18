import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/swap.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import 'package:konnekt_vpn/views/widgets/glass_background.dart';
import '../../dialogs/empty_wallet_option.dart';
import '../../dialogs/wallet_option.dart';
import '../../widgets/number_button.dart';

class SwapScreen extends StatelessWidget {
  SwapScreen({super.key});

  final cont = Get.put(SwapCont());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        body: GlassBackground(
          inAsyncCall: cont.isBlur.value,
          child: Background(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
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
                    style: textTheme.bodySmall!.copyWith(color: Colors.white54),
                  ),
                  Text(
                    "10.000",
                    style: textTheme.headlineLarge!
                        .copyWith(fontSize: SizeConfig.textMultiplier * 4.8),
                  ),
                  Text(
                    "KNKT",
                    style: textTheme.bodyMedium!
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
                              style: textTheme.headlineMedium!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            Container(
                              height: SizeConfig.heightMultiplier * 3,
                              width: SizeConfig.widthMultiplier * 10.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white10),
                              alignment: Alignment.center,
                              child: Text(
                                "KNKT",
                                style: textTheme.displaySmall!.copyWith(
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
                          height: SizeConfig.heightMultiplier * 3.8,
                          width: SizeConfig.widthMultiplier * 8.5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          alignment: Alignment.center,
                          child: Image.asset(
                            AppIcons.swapBlack,
                            height: SizeConfig.imageSizeMultiplier * 4,
                          ),
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
                                style: textTheme.headlineMedium!.copyWith(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: SizeConfig.heightMultiplier * .4),
                                child: Text(
                                  " USD",
                                  style: textTheme.displaySmall!.copyWith(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05,
                                      color: Colors.white54,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                          Spacing.y(1),
                          Text(
                            "1000 Connect  = 1  KPN",
                            style: textTheme.displaySmall!.copyWith(
                                fontSize: SizeConfig.textMultiplier * 1.05),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.dialog(
                            const WalletOptionDialog(),
                            barrierColor: Colors.transparent,
                            // const EmptyWalletOptionDialog(),
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
                                style: textTheme.displaySmall!.copyWith(
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
            ),
          ),
        ),
      ),
    );
  }
}
