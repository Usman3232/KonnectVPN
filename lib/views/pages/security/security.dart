import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/auth/pin/pin.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';

import 'components/verification_tile.dart';

class SecurityScreen extends StatelessWidget {
  SecurityScreen({super.key});

  List<String> securityTitle = ["Your Pin", "Account Activity"];
  List<String> securitysubtitle = [
    "Security when open the apps",
    "Manage your activity for trace."
  ];

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
              Spacing.y(6),
              const CustomAppbar(title: "Security"),
              Spacing.y(3),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      2,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.heightMultiplier * 2),
                        child: InkWell(
                          onTap: () {
                            if (index == 0) {
                              Get.to(() => const PinScreen());
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    securityTitle[index],
                                    style: textTheme.displaySmall!
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                  Spacing.y(1),
                                  Text(
                                    securitysubtitle[index],
                                    style: textTheme.displaySmall!.copyWith(
                                        fontSize: SizeConfig.textMultiplier * 1,
                                        color: Colors.white38),
                                  )
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: SizeConfig.imageSizeMultiplier * 4)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacing.y(4),
                    Text(
                      "Verification",
                      style: textTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacing.y(1.5),
                    VerificationTile(
                      title: "Authenticator App",
                      subtitle: "Added : February 16, 2021",
                      icon: AppIcons.mobile,
                      onEditTap: () {},
                      isDelete: false,
                    ),
                    VerificationTile(
                      title: "Phone Number Verification",
                      subtitle: "(708) 813-8989",
                      icon: AppIcons.phone,
                      onEditTap: () {},
                    ),
                    VerificationTile(
                      title: "Email Verification",
                      subtitle: "r.m.smith@gmail.com",
                      icon: AppIcons.email,
                      onEditTap: () {},
                      onDeleteTap: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
