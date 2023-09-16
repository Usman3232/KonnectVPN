import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(30.5),
                  Text(
                    "Detail",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.white.withOpacity(.8),
                    ),
                  )
                ],
              ),
              Spacing.y(8),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  children: [
                    Text(
                      "Gold",
                      style: AppTextStyles.bodyExtraLarge,
                    ),
                    Spacing.y(3),
                    Text(
                      "\$10,0 / Month",
                      style: AppTextStyles.headingLarge
                          .copyWith(fontSize: SizeConfig.textMultiplier * 4),
                    ),
                    Spacing.y(1),
                    Text(
                      "\$120 / year by billing yearly",
                      style: AppTextStyles.bodyExtraSmall
                          .copyWith(color: Colors.white38),
                    ),
                    Spacing.y(6),
                    rowInfo("Bill", "\$120"),
                    rowInfo("Discount", "-\$10"),
                    rowInfo("Fee", "\$1"),
                    const Divider(
                      height: 0,
                      color: Colors.white24,
                    ),
                    Spacing.y(2),
                    rowInfo("Total", "\$12"),
                    Spacing.y(5),
                    columnInfo(
                        "Transaction ID", "3M8w2knJKsr3jqMatYiyuraxVvZA"),
                    columnInfo("Promo Code", "xVvZA"),
                    Spacing.y(17),
                    CustomButton(
                      title: "Pay Now",
                      onTap: () {},
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

  Widget columnInfo(String title, code) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.bodyExtraSmall.copyWith(
                  color: Colors.white38,
                  fontSize: SizeConfig.textMultiplier * 1.05),
            ),
            Spacing.y(1),
            Text(
              code,
              style:
                  AppTextStyles.bodySmall.copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowInfo(String title, price) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.bodySmall.copyWith(color: Colors.white30),
          ),
          Text(
            price,
            style: AppTextStyles.bodySmall,
          )
        ],
      ),
    );
  }
}
