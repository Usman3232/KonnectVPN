import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/images.dart';
import '../../constants/text_styles.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';

class SuccessDialog extends StatefulWidget {
  const SuccessDialog({super.key});

  @override
  State<SuccessDialog> createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      child: Container(
        height: SizeConfig.heightMultiplier * 35,
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
            Image.asset(
              AppImages.getStarted,
              height: SizeConfig.imageSizeMultiplier * 35,
            ),
            Spacing.y(3),
            Text(
              "Download Success",
              style:
                  AppTextStyles.bodyLarge.copyWith(fontWeight: FontWeight.w700),
            ),
            Spacing.y(1),
            SizedBox(
              width: SizeConfig.widthMultiplier * 54,
              child: Text(
                "The private key  success download to file manager",
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyExtraSmall
                    .copyWith(height: 1.5, color: Colors.white38),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
