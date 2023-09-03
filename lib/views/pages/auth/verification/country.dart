import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.y(8),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        height: SizeConfig.heightMultiplier * 4,
                        width: SizeConfig.widthMultiplier * 9,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white10),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Spacing.x(29),
                    Text(
                      "Country",
                      style: AppTextStyles.bodyMedium,
                    )
                  ],
                ),
                Spacing.y(5),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 70,
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
                Spacing.y(3),
                CustomButton(
                  title: "Next Step",
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
