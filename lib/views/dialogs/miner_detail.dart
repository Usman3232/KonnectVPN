import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/images.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';
import '../widgets/custom_btn.dart';
import '../widgets/custom_textfield.dart';

class MinersDetailDialog extends StatefulWidget {
  const MinersDetailDialog({super.key});

  @override
  State<MinersDetailDialog> createState() => _MinersDetailDialogState();
}

class _MinersDetailDialogState extends State<MinersDetailDialog> {
  TextEditingController deviceModel = TextEditingController();
  TextEditingController seriralNumber = TextEditingController();
  TextEditingController ipAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      child: Container(
        height: SizeConfig.heightMultiplier * 59,
        width: SizeConfig.widthMultiplier * 88,
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier * 3,
            left: SizeConfig.widthMultiplier * 5,
            right: SizeConfig.widthMultiplier * 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white12),
          color: const Color(0xff121212),
          borderRadius: BorderRadius.circular(24),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Miners Detail",
              style: AppTextStyles.bodyLarge.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacing.y(3),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white10),
            ),
            Spacing.y(2),
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
            Spacing.y(3),
            Align(
                alignment: Alignment.centerLeft,
                child:
                    Text("Device Model", style: AppTextStyles.bodyExtraSmall)),
            Spacing.y(1),
            CustomTextField(hintText: "Model", controller: deviceModel),
            Align(
                alignment: Alignment.centerLeft,
                child:
                    Text("Serial Number", style: AppTextStyles.bodyExtraSmall)),
            Spacing.y(1),
            CustomTextField(hintText: "Number", controller: seriralNumber),
            Spacing.y(2),
            CustomButton(
              title: "Save",
              isShadow: false,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
