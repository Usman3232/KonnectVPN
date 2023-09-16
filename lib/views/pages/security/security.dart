import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class SecurityScreen extends StatelessWidget {
  SecurityScreen({super.key});

  List<String> securityTitle = ["Your Pin", "Account Activity"];
  List<String> securitysubtitle = [
    "Security when open the apps",
    "Manage your activity for trace."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(28),
                  Text("Security", style: AppTextStyles.bodyMedium)
                ],
              ),
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
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    securityTitle[index],
                                    style: AppTextStyles.bodyExtraSmall
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                  Spacing.y(1),
                                  Text(
                                    securitysubtitle[index],
                                    style: AppTextStyles.bodyExtraSmall
                                        .copyWith(
                                            fontSize:
                                                SizeConfig.textMultiplier * 1,
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
                      style: AppTextStyles.bodySmall
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
                      onEditTap: () {
                        print("object");
                      },
                      onDeleteTap: () {
                        print("oct");
                      },
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

class VerificationTile extends StatelessWidget {
  const VerificationTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onEditTap,
    this.onDeleteTap,
    this.isDelete = true,
  });
  final String title, subtitle, icon;
  final VoidCallback onEditTap;
  final VoidCallback? onDeleteTap;
  final bool isDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5),
      child: Row(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 4.5,
            width: SizeConfig.widthMultiplier * 10,
            margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white10),
            alignment: Alignment.center,
            child:
                Image.asset(icon, height: SizeConfig.imageSizeMultiplier * 4.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.bodyExtraSmall
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Spacing.y(1),
              Text(
                subtitle,
                style: AppTextStyles.bodyExtraSmall.copyWith(
                    fontSize: SizeConfig.textMultiplier * 1.05,
                    color: Colors.white38),
              )
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: onEditTap,
            child: Image.asset(AppIcons.edit,
                height: SizeConfig.imageSizeMultiplier * 5),
          ),
          isDelete
              ? Padding(
                  padding:
                      EdgeInsets.only(left: SizeConfig.widthMultiplier * 4),
                  child: InkWell(
                    onTap: onDeleteTap,
                    child: Image.asset(AppIcons.delete,
                        height: SizeConfig.imageSizeMultiplier * 5),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
