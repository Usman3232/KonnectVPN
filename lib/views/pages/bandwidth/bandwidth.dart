import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_slider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BandwidthScreen extends StatelessWidget {
  const BandwidthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.y(6),
              const CustomAppbar(title: "Total Bandwidth"),
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
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Colors.white, Colors.white38],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(
                          Rect.fromLTWH(1, 1, bounds.width, bounds.height),
                        ),
                        child: Text(
                          "4579",
                          style: textTheme.headlineLarge!.copyWith(
                              fontSize: SizeConfig.textMultiplier * 4.8,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        "KNKT/m",
                        style: textTheme.headlineMedium!
                            .copyWith(color: AppColors.primaryClr),
                      ),
                    ],
                  ),
                ),
              ),
              Spacing.y(7),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Subcription Status",
                      style: textTheme.bodySmall!
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
                                  style: textTheme.displaySmall!.copyWith(
                                      color: Colors.white54,
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05),
                                ),
                                Text(
                                  "10 KNKT/m",
                                  style: textTheme.displaySmall!.copyWith(
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
                      style: textTheme.bodySmall!
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
                                      style: textTheme.bodySmall!.copyWith(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "12EWTU",
                                      style: textTheme.bodySmall!.copyWith(
                                          color: AppColors.primaryClr,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Spacing.y(1),
                                Text(
                                  "Bandwidth : 200 KNKT/m",
                                  style: textTheme.displaySmall!
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
                                  style: textTheme.displaySmall!
                                      .copyWith(color: Colors.white38),
                                ),
                                Spacing.y(1),
                                Text(
                                  "2",
                                  style: textTheme.displaySmall!
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
