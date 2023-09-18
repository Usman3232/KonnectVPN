import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class ManageAccountScreen extends StatelessWidget {
  ManageAccountScreen({super.key});

  List<String> manageAccountTitle = ["Disable Account", "Delete Account"];
  List<String> manageAccountDiscription = [
    "Once the account is disabled, most of your actions will be restricted, such as logging in and trading. You can choose to unblock the account at any time",
    "Please note that account deletion is irreversible. Once deleted, you will not be able to access it or view transaction histories."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(20),
                  Text(
                    "Manage Account",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.white.withOpacity(.8),
                    ),
                  )
                ],
              ),
              Spacing.y(5),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Preference",
                      style: AppTextStyles.bodySmall
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacing.y(4),
                    ...List.generate(
                      2,
                      (index) => Padding(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.heightMultiplier * 4),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    manageAccountTitle[index],
                                    style: AppTextStyles.bodyExtraSmall
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: index == 0
                                        ? SizeConfig.widthMultiplier * 71
                                        : SizeConfig.widthMultiplier * 77,
                                    child: Text(
                                      manageAccountDiscription[index],
                                      style: AppTextStyles.bodyExtraSmall
                                          .copyWith(
                                              height: 1.9,
                                              fontSize:
                                                  SizeConfig.textMultiplier *
                                                      1.05,
                                              color: Colors.white38),
                                    ),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                                size: SizeConfig.imageSizeMultiplier * 4,
                              )
                            ],
                          ),
                        ),
                      ),
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
