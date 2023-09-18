import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/skate%20kpn/skate_kpn.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

import '../../../constants/text_styles.dart';

class StackingScreen extends StatelessWidget {
  const StackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.y(6),
              const CustomAppbar(title: "Stacking"),
              Spacing.y(8),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Available",
                      style: AppTextStyles.bodySmall
                          .copyWith(color: Colors.white38),
                    ),
                    Spacing.y(1),
                    Text(
                      "71.34534KPN",
                      style: AppTextStyles.headingLarge
                          .copyWith(fontSize: SizeConfig.textMultiplier * 4),
                    ),
                    Spacing.y(2),
                    Text(
                      "Staked",
                      style: AppTextStyles.bodySmall
                          .copyWith(color: Colors.white38),
                    ),
                    Spacing.y(1),
                    Text(
                      "0KPN",
                      style: AppTextStyles.headingLarge
                          .copyWith(fontSize: SizeConfig.textMultiplier * 4),
                    ),
                    Spacing.y(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(
                          20,
                          (index) => Container(
                            height: SizeConfig.heightMultiplier * .3,
                            width: SizeConfig.widthMultiplier * 3,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacing.y(5),
                    _rowInfo("Tier", "Level 1"),
                    _rowInfo("Apr", "3.54% - 5.06%"),
                    _rowInfo("Lock Time", "3 Months"),
                    Spacing.y(25),
                    CustomButton(
                      title: "Stake",
                      onTap: () {
                        Get.to(() => const SkateKpnScreen());
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowInfo(String title, data) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.bodySmall.copyWith(color: Colors.white30),
          ),
          Text(
            data,
            style: AppTextStyles.bodySmall,
          )
        ],
      ),
    );
  }
}
