import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/bandwidth/bandwidth.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            children: [
              Spacing.y(6),
              const CustomAppbar(title: "Detail"),
              Spacing.y(8),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  children: [
                    Text(
                      "Gold",
                      style: textTheme.displayLarge!,
                    ),
                    Spacing.y(3),
                    Text(
                      "\$10,0 / Month",
                      style: textTheme.headlineLarge!
                          .copyWith(fontSize: SizeConfig.textMultiplier * 4),
                    ),
                    Spacing.y(1),
                    Text(
                      "\$120 / year by billing yearly",
                      style: textTheme.displaySmall!
                          .copyWith(color: Colors.white38),
                    ),
                    Spacing.y(6),
                    rowInfo("Bill", "\$120", context),
                    rowInfo("Discount", "-\$10", context),
                    rowInfo("Fee", "\$1", context),
                    const Divider(
                      height: 0,
                      color: Colors.white24,
                    ),
                    Spacing.y(2),
                    rowInfo("Total", "\$12", context),
                    Spacing.y(5),
                    columnInfo("Transaction ID", "3M8w2knJKsr3jqMatYiyuraxVvZA",
                        context),
                    columnInfo("Promo Code", "xVvZA", context),
                  ],
                ),
              ),
              const Spacer(),
              Spacing.y(2),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: CustomButton(
                  title: "Pay Now",
                  isShadow: false,
                  onTap: () {
                    Get.to(() => const BandwidthScreen());
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

  Widget columnInfo(String title, code, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: Colors.white38,
                  fontSize: SizeConfig.textMultiplier * 1.05),
            ),
            Spacing.y(1),
            Text(
              code,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowInfo(String title, price, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
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
            price,
            style: Theme.of(context).textTheme.bodySmall!,
          )
        ],
      ),
    );
  }
}
