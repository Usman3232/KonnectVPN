import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/sign_up.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/email_check.dart';
import 'package:konnekt_vpn/views/pages/auth/login/login.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/auth_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final signUpCont = Get.put(SignUpCont());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        body: Background(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacing.y(6),
                    Center(
                      child: Text(
                        "Create Account",
                        style: textTheme.bodyMedium!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Spacing.y(5),
                    Text("First Name", style: textTheme.displaySmall!),
                    Spacing.y(1),
                    AuthTextField(
                        hintText: "Enter first name",
                        controller: signUpCont.firstName),
                    Text("Last Name", style: textTheme.displaySmall!),
                    Spacing.y(1),
                    AuthTextField(
                        hintText: "Enter last name",
                        controller: signUpCont.lastName),
                    Text("Email", style: textTheme.displaySmall!),
                    Spacing.y(1),
                    AuthTextField(
                        hintText: "Enter your email",
                        controller: signUpCont.email),
                    Text("Password", style: textTheme.displaySmall!),
                    Spacing.y(1),
                    AuthTextField(
                      hintText: "Enter your password",
                      controller: signUpCont.password,
                      isPassword: true,
                    ),
                    Text(
                      "At least 12 uppercase, lowercase characters and numbers",
                      style: textTheme.displaySmall!.copyWith(
                          fontSize: SizeConfig.textMultiplier * 1.2,
                          color: Colors.white38),
                    ),
                    Spacing.y(2),
                    Text("Referral Code", style: textTheme.displaySmall!),
                    Spacing.y(1),
                    AuthTextField(
                        hintText: "Enter your referral code",
                        controller: signUpCont.referral),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: AppColors.primaryClr,
                          checkColor: Colors.black,
                          side: const BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          value: signUpCont.checkbox.value,
                          onChanged: (value) {
                            signUpCont.checkbox.value = value!;
                          },
                        ),
                        Text("Agree to Policy", style: textTheme.displaySmall!)
                      ],
                    ),
                    Spacing.y(8),
                    CustomButton(
                      title: "Let’s Get Started",
                      onTap: () {
                        Get.to(() => const EmailCheckScreen());
                      },
                    ),
                    Spacing.y(2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont have an account?   ",
                          style: textTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => LoginScreen());
                          },
                          child: Text(
                            "Login",
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
      ),
    );
  }
}
