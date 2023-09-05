import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacing.y(12),
                Text("Enter Your Pin", style: AppTextStyles.bodyMedium),
                Spacing.y(2),
                Text(
                  "Please enter 6 unique number",
                  style: AppTextStyles.bodyExtraSmall
                      .copyWith(color: AppColors.textMediumClr),
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
                          style: AppTextStyles.headingLarge.copyWith(
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
                  style: AppTextStyles.bodySmall.copyWith(
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

class PinButton extends StatelessWidget {
  const PinButton({
    super.key,
    this.title = "0",
    required this.onTap,
    this.isDecoration = true,
    this.isIcon = false,
  });
  final String title;
  final VoidCallback onTap;
  final bool isDecoration;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 12,
      width: SizeConfig.widthMultiplier * 24,
      decoration: isDecoration
          ? const BoxDecoration(color: Colors.white10, shape: BoxShape.circle)
          : null,
      child: MaterialButton(
        onPressed: onTap,
        shape: const CircleBorder(),
        child: isIcon
            ? const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              )
            : Text(
                title,
                style: AppTextStyles.headingLarge,
              ),
      ),
    );
  }
}
