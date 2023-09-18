import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(28.5),
                  Text(
                    "Country",
                    style: AppTextStyles.bodyMedium,
                  )
                ],
              ),
              Spacing.y(5),
              Stack(
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 75,
                    width: SizeConfig.widthMultiplier * 85,
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Container(
                          height: SizeConfig.heightMultiplier * 8,
                          width: SizeConfig.widthMultiplier * 92,
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 3),
                          margin: EdgeInsets.only(
                              bottom: SizeConfig.heightMultiplier * 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.white24),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: SizeConfig.heightMultiplier * 3.5,
                                width: SizeConfig.widthMultiplier * 7,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primaryClr),
                              ),
                              Spacing.x(3),
                              Text(
                                "Indonesia",
                                style: AppTextStyles.bodySmall
                                    .copyWith(fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(.8),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              CustomButton(
                title: "Next Step",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
