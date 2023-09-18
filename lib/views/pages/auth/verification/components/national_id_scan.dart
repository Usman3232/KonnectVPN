import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/scan.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/text_styles.dart';
import '../../../../../utils/size_config.dart';
import '../../../../../utils/spacing.dart';

class NationalIdScan extends StatelessWidget {
  const NationalIdScan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        SizedBox(
          width: SizeConfig.widthMultiplier * 74,
          child: Text(
            "Have a final check if all data is clearly visible and that it matches the information you have entered in previous steps.",
            textAlign: TextAlign.center,
            style: textTheme.displaySmall!
                .copyWith(height: 1.9, color: Colors.white38),
          ),
        ),
        IdCard(
          type: "Front Side",
          onTap: () async {
            await availableCameras()
                .then((value) => Get.to(() => ScanScreen(cameras: value)));
          },
        ),
        IdCard(
          type: "Back Side",
          onTap: () {},
        ),
        IdCard(
          type: "Selfie with ID",
          onTap: () {},
        ),
        Spacing.y(5),
      ],
    );
  }
}

class IdCard extends StatelessWidget {
  const IdCard({
    super.key,
    required this.type,
    required this.onTap,
  });
  final String type;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Spacing.y(5),
        Container(
          height: SizeConfig.heightMultiplier * 20,
          width: SizeConfig.widthMultiplier * 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white10),
        ),
        Spacing.y(2),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                type,
                style:
                    textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  height: SizeConfig.heightMultiplier * 4,
                  width: SizeConfig.widthMultiplier * 30,
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.borderClr),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Scan Now",
                        style: textTheme.displaySmall!.copyWith(
                            color: Colors.white38,
                            fontSize: SizeConfig.textMultiplier * 1),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white38,
                        size: SizeConfig.imageSizeMultiplier * 3,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
