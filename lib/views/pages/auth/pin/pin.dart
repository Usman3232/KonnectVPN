import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';

import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';

import 'components/pin_button.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacing.y(12),
                Text("Enter Your Pin", style: textTheme.bodyMedium!),
                Spacing.y(2),
                Text(
                  "Please enter 6 unique number",
                  style:
                      textTheme.displaySmall!.copyWith(color: Colors.white38),
                ),
                Spacing.y(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      6,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 3),
                        child: Text(
                          "*",
                          style: textTheme.headlineLarge!.copyWith(
                              color: Colors.white30,
                              fontSize: SizeConfig.textMultiplier * 4),
                        ),
                      ),
                    )
                  ],
                ),
                Spacing.y(3),
                Text(
                  "Try New Pin Again",
                  style: textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w500, color: AppColors.primaryClr),
                ),
                Spacing.y(4),
                Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: SizeConfig.heightMultiplier * 2.5,
                  spacing: SizeConfig.widthMultiplier * 6,
                  children: [
                    PinButton(
                      title: "1",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "2",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "3",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "4",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "5",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "6",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "7",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "8",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "9",
                      onTap: () {},
                    ),
                    PinButton(
                      title: "00",
                      isDecoration: false,
                      onTap: () {},
                    ),
                    PinButton(
                      title: "0",
                      onTap: () {},
                    ),
                    PinButton(
                      isIcon: true,
                      isDecoration: false,
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
