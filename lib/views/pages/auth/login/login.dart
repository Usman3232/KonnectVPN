import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/forgot.dart';
import 'package:konnekt_vpn/views/pages/auth/sign%20up/sign_up.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/auth_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.y(20),
                Text("Welcome", style: AppTextStyles.headingMedium),
                Spacing.y(2),
                Text(
                  "Protect Your Online Privacy Our VPN app keeps your data secure and your identity anonymous.",
                  style: AppTextStyles.bodySmall
                      .copyWith(color: AppColors.textMediumClr),
                ),
                Spacing.y(6),
                Text("Email", style: AppTextStyles.bodySmall),
                Spacing.y(1),
                AuthTextField(hintText: "Enter your email", controller: email),
                Text("Password", style: AppTextStyles.bodySmall),
                Spacing.y(1),
                AuthTextField(
                  hintText: "Enter your password",
                  controller: password,
                  isPassword: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => ForgotScreen(),
                          transition: Transition.rightToLeft);
                    },
                    child: Text(
                      "Forgot Your password",
                      style: AppTextStyles.bodySmall
                          .copyWith(color: AppColors.textMediumClr),
                    ),
                  ),
                ),
                Spacing.y(28),
                CustomButton(
                  title: "Login",
                  onTap: () {},
                ),
                Spacing.y(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account? ",
                        style: AppTextStyles.bodyMedium
                            .copyWith(color: AppColors.textMediumClr)),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignUpScreen(),
                            transition: Transition.rightToLeft);
                      },
                      child: Text(
                        "Sign Up",
                        style: AppTextStyles.bodyMedium
                            .copyWith(color: AppColors.primaryClr),
                      ),
                    )
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
