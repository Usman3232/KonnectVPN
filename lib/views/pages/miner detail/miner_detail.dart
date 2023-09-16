import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_textfield.dart';

class MinerDetailScreen extends StatelessWidget {
  MinerDetailScreen({super.key});

  TextEditingController deviceModel = TextEditingController();
  TextEditingController seriralNumber = TextEditingController();
  TextEditingController ipAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(24),
                  Text(
                    "Miners Detail",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.white.withOpacity(.8),
                    ),
                  )
                ],
              ),
              Spacing.y(5),
              Container(
                height: 112,
                width: 112,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white10),
              ),
              Spacing.y(3),
              Text(
                "Miner Status",
                style: AppTextStyles.bodyExtraSmall.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.textMultiplier * 1.05,
                    color: Colors.white38),
              ),
              Spacing.y(1),
              Text(
                "On",
                style: AppTextStyles.bodyMedium.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.primaryClr),
              ),
              Spacing.y(6),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Device Model",
                      style: AppTextStyles.bodyExtraSmall)),
              Spacing.y(1),
              CustomTextField(hintText: "Model", controller: deviceModel),
              Spacing.y(2),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Serial Number",
                      style: AppTextStyles.bodyExtraSmall)),
              Spacing.y(1),
              CustomTextField(hintText: "Number", controller: seriralNumber),
              Spacing.y(2),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text("IP address", style: AppTextStyles.bodyExtraSmall)),
              Spacing.y(1),
              CustomTextField(
                  hintText: "Model", isfilled: false, controller: ipAddress),
              Spacing.y(14),
              CustomButton(
                title: "Save",
                isShadow: false,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
