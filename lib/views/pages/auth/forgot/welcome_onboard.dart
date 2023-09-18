import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/verification.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class WelcomeOnboardScreen extends StatelessWidget {
  const WelcomeOnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            children: [
              Spacing.y(20),
              Text(
                "Welcome Onboard",
                style: textTheme.displayLarge!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              Spacing.y(2),
              Text(
                "You will notify once the verification confirmed",
                textAlign: TextAlign.center,
                style: textTheme.displaySmall!.copyWith(color: Colors.white38),
              ),
              Spacing.y(10),
              Image.asset(AppImages.getStarted,
                  height: SizeConfig.imageSizeMultiplier * 65),
              const Spacer(),
              CustomButton(
                title: "Get Started Now",
                onTap: () {
                  Get.to(VerificationDetailScreen());
                },
              ),
              Spacing.y(3)
            ],
          ),
        ),
      ),
    );
  }
}
