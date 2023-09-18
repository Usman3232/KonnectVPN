import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/swap.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/dialogs/create.dart';
import 'package:konnekt_vpn/views/dialogs/import.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/glass_background.dart';

import '../../../constants/icons.dart';

class BalanceScreen extends StatelessWidget {
  BalanceScreen({super.key});

  final cont = Get.find<SwapCont>();
  List<String> walletButtonTitle = ["Import", "Create"];
  List<String> walletButtonIcons = [AppIcons.import, AppIcons.subcription];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
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
                  Spacing.y(5),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Balance",
                          style: textTheme.bodySmall!
                              .copyWith(color: Colors.white54),
                        ),
                        Text(
                          "1.000",
                          style: textTheme.headlineLarge!.copyWith(
                              fontSize: SizeConfig.textMultiplier * 5.6),
                        ),
                        Text(
                          "KPN",
                          style: textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryClr),
                        ),
                        Spacing.y(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              2,
                              (index) => InkWell(
                                onTap: () {
                                  if (index == 0) {
                                    Get.dialog(
                                      const ImportDialog(),
                                      barrierColor: Colors.transparent,
                                    );
                                  } else if (index == 1) {
                                    Get.dialog(
                                      const CreateDialog(),
                                      barrierColor: Colors.transparent,
                                    );
                                  }
                                },
                                child: Container(
                                  height: SizeConfig.heightMultiplier * 5,
                                  width: SizeConfig.widthMultiplier * 42,
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(62),
                                      color: Colors.white10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            SizeConfig.heightMultiplier * 4.5,
                                        width: SizeConfig.widthMultiplier * 9,
                                        margin: EdgeInsets.only(
                                            right:
                                                SizeConfig.widthMultiplier * 3),
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white10),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          walletButtonIcons[index],
                                          height:
                                              SizeConfig.imageSizeMultiplier *
                                                  5,
                                        ),
                                      ),
                                      Text(
                                        walletButtonTitle[index],
                                        style: textTheme.displaySmall!.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white54),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacing.y(5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Wallets",
                            style: textTheme.bodySmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Spacing.y(1.5),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 52.4,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        SizeConfig.heightMultiplier * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "1000 KPN",
                                          style: textTheme.bodyMedium!.copyWith(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Spacing.y(.6),
                                        Text(
                                          "87oftg6758ed76",
                                          style: textTheme.bodySmall!
                                              .copyWith(color: Colors.white54),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: SizeConfig.heightMultiplier * 3.3,
                                      width: SizeConfig.widthMultiplier * 22,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: AppColors.primaryClr),
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Private Key",
                                            style: textTheme.displaySmall!
                                                .copyWith(
                                                    color: AppColors.primaryClr,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: SizeConfig
                                                            .textMultiplier *
                                                        1.05),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
