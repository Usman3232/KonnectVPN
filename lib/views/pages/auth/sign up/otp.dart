import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/sign_up.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/get_started.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/otp_field.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  // final cont = Get.find<SignUpCont>();
  final cont = Get.put(SignUpCont());

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacing.y(4),
                  Text(
                    "Verification Reuired",
                    style: textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  Spacing.y(8),
                  Image.asset(AppImages.message,
                      height: SizeConfig.imageSizeMultiplier * 65),
                  Spacing.y(5),
                  Text(
                    "Verification Code",
                    style: textTheme.displayLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Spacing.y(5),
                  Text(
                    "We have sent the code verification to your Email",
                    style:
                        textTheme.displaySmall!.copyWith(color: Colors.white38),
                  ),
                  Spacing.y(2),
                  Text(
                    "arnar.john@gmail.com",
                    style: textTheme.bodyMedium!
                        .copyWith(color: AppColors.primaryClr),
                  ),
                  Spacing.y(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OtpField(
                        first: true,
                        last: false,
                        controller: cont.firstOTPCont,
                      ),
                      OtpField(
                        first: false,
                        last: false,
                        controller: cont.secondOTPCont,
                      ),
                      OtpField(
                        first: false,
                        last: false,
                        controller: cont.thirdOTPCont,
                      ),
                      OtpField(
                        first: false,
                        last: true,
                        controller: cont.forthOTPCont,
                      ),
                    ],
                  ),
                  Spacing.y(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t receive any code?   ",
                          style: textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38)),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Request Again",
                          style: textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryClr),
                        ),
                      )
                    ],
                  ),
                  Spacing.y(4),
                  CustomButton(
                    title: "Submit",
                    onTap: () {
                      Get.to(() => const GetStartedScreen());
                    },
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
