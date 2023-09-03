import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/login/login.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Center(
          child: Column(
            children: [
              Spacing.y(40),
              Text(
                "KonnektVPN",
                style: AppTextStyles.headingLarge
                    .copyWith(fontSize: SizeConfig.textMultiplier * 4),
              ),
              Spacing.y(35),
              CustomButton(
                title: "Login",
                onTap: () {
                  Get.to(() => LoginScreen(),
                      transition: Transition.rightToLeft);
                },
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              CustomButton(
                title: "Create Account",
                isBorder: true,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
