import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/skate%20kpn/skate_kpn.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class StackingScreen extends StatelessWidget {
  const StackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
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
                      style:
                          textTheme.bodySmall!.copyWith(color: Colors.white38),
                    ),
                    Spacing.y(1),
                    Text(
                      "71.34534KPN",
                      style: textTheme.headlineLarge!
                          .copyWith(fontSize: SizeConfig.textMultiplier * 4),
                    ),
                    Spacing.y(2),
                    Text(
                      "Staked",
                      style:
                          textTheme.bodySmall!.copyWith(color: Colors.white38),
                    ),
                    Spacing.y(1),
                    Text(
                      "0KPN",
                      style: textTheme.headlineLarge!
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
                    _rowInfo("Tier", "Level 1", context),
                    _rowInfo("Apr", "3.54% - 5.06%", context),
                    _rowInfo("Lock Time", "3 Months", context),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: CustomButton(
                  title: "Stake",
                  isShadow: false,
                  onTap: () {
                    Get.to(() => const SkateKpnScreen());
                  },
                ),
              ),
              Spacing.y(2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowInfo(String title, data, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.white30),
          ),
          Text(
            data,
            style: Theme.of(context).textTheme.bodySmall!,
          )
        ],
      ),
    );
  }
}
