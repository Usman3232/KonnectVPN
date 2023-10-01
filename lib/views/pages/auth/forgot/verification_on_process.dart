import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/welcome_onboard.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class VerificationOnProcessScreen extends StatelessWidget {
  const VerificationOnProcessScreen({super.key});

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
                "Verification On Process",
                style: textTheme.displayLarge!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              Spacing.y(2),
              Text(
                "You’ll need a verification before using",
                textAlign: TextAlign.center,
                style: textTheme.displaySmall!.copyWith(color: Colors.white38),
              ),
              Spacing.y(10),
              Image.asset(AppImages.onProcess,
                  height: SizeConfig.imageSizeMultiplier * 65),
              const Spacer(),
              CustomButton(
                title: "Back To Login",
                onTap: () {
                  Get.to(() => const WelcomeOnboardScreen());
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
