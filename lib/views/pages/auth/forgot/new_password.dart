import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/forgot.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/auth_textfield.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

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
                Text("Create New Password", style: AppTextStyles.headingMedium),
                Spacing.y(2),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 82,
                  child: Text(
                    "Your new password must be different from a previously used password",
                    style: AppTextStyles.bodySmall
                        .copyWith(color: AppColors.textMediumClr),
                  ),
                ),
                Spacing.y(6),
                Text("New Password", style: AppTextStyles.bodySmall),
                Spacing.y(1),
                AuthTextField(
                  hintText: "Enter your new password",
                  controller: password,
                  isPassword: true,
                ),
                Text("Repeat password", style: AppTextStyles.bodySmall),
                Spacing.y(1),
                AuthTextField(
                  hintText: "Enter your password",
                  controller: confirmPassword,
                ),
                Spacing.y(30),
                CustomButton(
                  title: "Login",
                  onTap: () {},
                ),
                Spacing.y(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont Have An Account? ",
                        style: AppTextStyles.bodyMedium
                            .copyWith(color: AppColors.textMediumClr)),
                    GestureDetector(
                      onTap: () {},
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
