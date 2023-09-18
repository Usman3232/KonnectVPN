import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class NetworkTestScreen extends StatelessWidget {
  const NetworkTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 34,
              width: SizeConfig.widthMultiplier * 100,
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              color: Colors.white.withOpacity(.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacing.y(6),
                  const CustomAppbar(title: "Network Test"),
                  Spacing.y(5),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "App Detectioon",
                          style: textTheme.bodyMedium!
                              .copyWith(color: Colors.white60),
                        ),
                        Spacing.y(1),
                        Text("Monitoring  Tool",
                            style: textTheme.headlineLarge!),
                        Spacing.y(2),
                        Text(
                          "This page is only used to locate your browser and network information, and does not involve your privacy information",
                          style: textTheme.displaySmall!.copyWith(
                              fontSize: SizeConfig.textMultiplier * 1.05,
                              height: 1.9,
                              color: Colors.white38),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 6,
                  right: SizeConfig.widthMultiplier * 6),
              child: SizedBox(
                height: SizeConfig.heightMultiplier * 66,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _columnInfo(context, title: "Language", data: "English"),
                      _columnInfo(context,
                          title: "Device Information",
                          data:
                              "Mozilla/5.0 (iPhone; CPU iPhone OS 16_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 BNC/1.11.1 (iOS 2.68.1)"),
                      _columnInfo(context,
                          title: "Operating System", data: "iOS 16.5.1"),
                      _columnInfo(context,
                          title: "Browser Information", data: "WKWebView"),
                      _columnInfo(context,
                          title: "Phone Information",
                          data: "Iphone 14 Pro Max"),
                      Spacing.y(4),
                      Text(
                        "Api ws Response Speed",
                        style: textTheme.displaySmall!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      Spacing.y(2),
                      Row(
                        children: [
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 17,
                            child: Text(
                              "App_be",
                              style: textTheme.displaySmall!.copyWith(
                                  color: Colors.white60,
                                  fontSize: SizeConfig.textMultiplier * 1.05),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 16,
                            child: Text(
                              "326 ms",
                              style: textTheme.displaySmall!.copyWith(
                                  color: Colors.white60,
                                  fontSize: SizeConfig.textMultiplier * 1.05),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 35,
                            child: Text(
                              "Connection Succeeded",
                              style: textTheme.displaySmall!.copyWith(
                                  color: AppColors.primaryClr,
                                  fontSize: SizeConfig.textMultiplier * 1.05),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.widthMultiplier * 20,
                            child: Text(
                              "Currently In Use",
                              style: textTheme.displaySmall!.copyWith(
                                  color: Colors.white60,
                                  fontSize: SizeConfig.textMultiplier * 1.05),
                            ),
                          )
                        ],
                      ),
                      _columnInfo(context,
                          title: "User IP", data: "176.237.51.251"),
                      _columnInfo(context,
                          title: "Download Speed", data: "NaN Kb/s"),
                      Spacing.y(2),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _columnInfo(BuildContext context,
      {String title = "title", data = "data"}) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          Spacing.y(.5),
          Text(
            data,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                height: SizeConfig.heightMultiplier * .21,
                fontSize: SizeConfig.textMultiplier * 1.05,
                color: Colors.white38),
          )
        ],
      ),
    );
  }
}
