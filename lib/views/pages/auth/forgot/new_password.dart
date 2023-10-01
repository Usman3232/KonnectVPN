import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/verification_on_process.dart';
import 'package:konnekt_vpn/views/pages/auth/sign%20up/sign_up.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/auth_textfield.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacing.y(17),
                  Text(
                    "Create New Password",
                    style: textTheme.displayLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Spacing.y(2),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 80,
                    child: Text(
                      "Your new password must be different from a previously used password",
                      style: textTheme.displaySmall!
                          .copyWith(height: 1.9, color: Colors.white38),
                    ),
                  ),
                  Spacing.y(6),
                  Text("New Password", style: textTheme.displaySmall!),
                  Spacing.y(1),
                  AuthTextField(
                    hintText: "Enter your new password",
                    controller: password,
                    isPassword: true,
                  ),
                  Text("Repeat password", style: textTheme.displaySmall!),
                  Spacing.y(1),
                  AuthTextField(
                    hintText: "Enter your password",
                    controller: confirmPassword,
                  ),
                  Spacing.y(29),
                  CustomButton(
                    title: "Login",
                    onTap: () {
                      Get.to(() => const VerificationOnProcessScreen());
                    },
                  ),
                  Spacing.y(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont Have An Account?   ",
                        style: textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white38),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: Text(
                          "Sign Up",
                          style: textTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryClr),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
