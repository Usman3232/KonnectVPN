import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_slider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../constants/text_styles.dart';

class BandwidthScreen extends StatelessWidget {
  const BandwidthScreen({super.key});

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
              Center(
                child: CircularPercentIndicator(
                  animation: true,
                  radius: SizeConfig.imageSizeMultiplier * 28,
                  lineWidth: SizeConfig.widthMultiplier * 4,
                  percent: 0.8,
                  circularStrokeCap: CircularStrokeCap.round,
                  widgetIndicator: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 24),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryClr,
                        border: Border.all(color: Colors.white, width: 5),
                      ),
                    ),
                  ),
                  backgroundColor: Colors.white10,
                  linearGradient: LinearGradient(colors: [
                    AppColors.primaryClr.withOpacity(.5),
                    AppColors.primaryClr,
                  ]),
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "4579",
                        style: AppTextStyles.headingLarge.copyWith(
                            fontSize: SizeConfig.textMultiplier * 4.8,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "KNKT/m",
                        style: AppTextStyles.headingMedium
                            .copyWith(color: AppColors.primaryClr),
                      ),
                    ],
                  ),
                ),
              ),
              Spacing.y(7),
              // Spacing.y(30),

              // SfRadialGauge(axes: <RadialAxis>[
              //   RadialAxis(minimum: 0, maximum: 150, ranges: <GaugeRange>[
              //     GaugeRange(startValue: 0, endValue: 50, color: Colors.green),
              //     GaugeRange(
              //         startValue: 50, endValue: 100, color: Colors.orange),
              //     GaugeRange(startValue: 100, endValue: 150, color: Colors.red)
              //   ], pointers: <GaugePointer>[
              //     NeedlePointer(value: 90)
              //   ], annotations: <GaugeAnnotation>[
              //     GaugeAnnotation(
              //         widget: Container(
              //             child: Text('90.0',
              //                 style: TextStyle(
              //                     fontSize: 25, fontWeight: FontWeight.bold))),
              //         angle: 90,
              //         positionFactor: 0.5)
              //   ])
              // ]),
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
                            const CustomSlider(value: 50),
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
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white10),
                              alignment: Alignment.center,
                              child: Image.asset(
                                AppIcons.dataBase,
                                height: SizeConfig.imageSizeMultiplier * 6,
                              ),
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
