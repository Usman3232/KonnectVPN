import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/controllers/referral.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'components/balance_field.dart';
import 'components/keyboard.dart';
import 'components/my_referral_code.dart';
import 'components/tile.dart';
import 'components/type.dart';

class ReferralScreen extends StatelessWidget {
  ReferralScreen({super.key});

  final cont = Get.put(ReferralCont());
  List<String> typeTitle = ["Share Code", "Get Money", "Withdraw"];
  List<String> typeIcons = [AppIcons.users, AppIcons.getMoney, AppIcons.import];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Duration animaDuration = const Duration(milliseconds: 700);
    return Scaffold(
      body: Background(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacing.y(6),
                  CustomAppbar(
                    title: "Referral Code",
                    onTap: () {
                      if (cont.isWiddraw.value) {
                        cont.isWiddraw.value = false;
                        Future.delayed(
                            animaDuration, () => cont.showBody.value = true);
                      } else {
                        Get.back();
                      }
                    },
                  ),
                  Spacing.y(6),
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
                        Spacing.y(1),
                        Text(
                          "\$1.000",
                          style: textTheme.headlineLarge!.copyWith(
                              fontSize: SizeConfig.textMultiplier * 5.6),
                        ),
                        Spacing.y(2),
                        Obx(
                          () => cont.showBody.value
                              ? Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        cont.isWiddraw.value = true;
                                        cont.showBody.value = false;
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 96,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            gradient: LinearGradient(
                                                colors: [
                                                  Colors.white,
                                                  Colors.white.withOpacity(.8)
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter),
                                            color: Colors.white),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Withdraw",
                                          style:
                                              textTheme.displaySmall!.copyWith(
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.05,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black.withOpacity(.7),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacing.y(5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ...List.generate(
                                          typeTitle.length,
                                          (index) => ReferralType(
                                            title: typeTitle[index],
                                            icon: typeIcons[index],
                                            indexx: index,
                                            onTap: () {
                                              cont.selectedType.value = index;
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacing.y(5),
                                    const MyReferralCode(),
                                    Spacing.y(6),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "My Referrals",
                                        style: textTheme.bodySmall!.copyWith(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Spacing.y(2),
                                    const MyReferralsTile(isAvailable: false),
                                    const MyReferralsTile(isAvailable: true),
                                    const MyReferralsTile(isAvailable: false),
                                  ],
                                )
                              : const SizedBox(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            BalanceField(),
            ReferralKeyboard(),
          ],
        ),
      ),
    );
  }
}
