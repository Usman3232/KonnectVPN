import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_slider.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../constants/text_styles.dart';

class BandwidthScreen extends StatelessWidget {
  BandwidthScreen({super.key});

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
                  Spacing.x(21),
                  Text(
                    "Total Bandwidth",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                ],
              ),
              Spacing.y(6),
              Spacing.y(30),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Subcription Status",
                      style: AppTextStyles.bodySmall
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacing.y(2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white10),
                          alignment: Alignment.center,
                          child: Image.asset(
                            AppIcons.crownBasic,
                            height: SizeConfig.imageSizeMultiplier * 6,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Bandwidth : ",
                                  style: AppTextStyles.bodyExtraSmall.copyWith(
                                      color: Colors.white54,
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05),
                                ),
                                Text(
                                  "10 KNKT/m",
                                  style: AppTextStyles.bodyExtraSmall.copyWith(
                                      color: AppColors.primaryClr,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05),
                                )
                              ],
                            ),
                            Spacing.y(1),
                            const CustomSlider(value: 95),
                          ],
                        )
                      ],
                    ),
                    Spacing.y(4),
                    Text(
                      "Miners",
                      style: AppTextStyles.bodySmall
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    Spacing.y(1),
                    ...List.generate(
                      3,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.heightMultiplier * 1.5),
                        child: Row(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              margin: EdgeInsets.only(
                                  right: SizeConfig.widthMultiplier * 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Model : ",
                                      style: AppTextStyles.bodySmall.copyWith(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "12EWTU",
                                      style: AppTextStyles.bodySmall.copyWith(
                                          color: AppColors.primaryClr,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Spacing.y(1),
                                Text(
                                  "Bandwidth : 200 KNKT/m",
                                  style: AppTextStyles.bodyExtraSmall
                                      .copyWith(color: Colors.white38),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Count",
                                  style: AppTextStyles.bodyExtraSmall
                                      .copyWith(color: Colors.white38),
                                ),
                                Spacing.y(1),
                                Text(
                                  "2",
                                  style: AppTextStyles.bodyExtraSmall
                                      .copyWith(fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
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
