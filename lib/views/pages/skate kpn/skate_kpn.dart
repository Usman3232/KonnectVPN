import 'package:flutter/material.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class SkateKpnScreen extends StatelessWidget {
  const SkateKpnScreen({super.key});

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
              const CustomAppbar(title: "Skate KPN"),
              Spacing.y(10),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "KPN Amount",
                      style: textTheme.displaySmall!
                          .copyWith(color: Colors.white54),
                    ),
                    Spacing.y(1),
                    Text(
                      "71.871",
                      style: textTheme.headlineLarge!
                          .copyWith(fontSize: SizeConfig.textMultiplier * 6.4),
                    ),
                    Spacing.y(10),
                    Text(
                      "Choose Wallet",
                      style: textTheme.displaySmall!,
                    ),
                    Spacing.y(1),
                    Container(
                      height: SizeConfig.heightMultiplier * 6,
                      width: SizeConfig.widthMultiplier * 88,
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10),
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 21,
                            margin: EdgeInsets.only(
                                right: SizeConfig.widthMultiplier * 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.red),
                          ),
                          Text(
                            "Wallet 1",
                            style: textTheme.bodySmall!,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                            size: SizeConfig.imageSizeMultiplier * 3.5,
                          )
                        ],
                      ),
                    ),
                    Spacing.y(4),
                    const Divider(
                      height: 0,
                      color: Colors.white30,
                    ),
                    Spacing.y(5),
                    _rowInfo("Fee", "Level 1", context),
                    _rowInfo("Total", "\$12", context),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: CustomButton(
                  title: "Stake Now",
                  isShadow: false,
                  onTap: () {},
                ),
              ),
              Spacing.y(2)
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
