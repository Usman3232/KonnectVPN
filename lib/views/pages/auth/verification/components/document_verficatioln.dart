import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/images.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/text_styles.dart';
import '../../../../../controllers/verification.dart';
import '../../../../../utils/size_config.dart';
import '../../../../../utils/spacing.dart';

class DoumentVerification extends StatelessWidget {
  DoumentVerification({
    super.key,
  });

  final cont = Get.find<VerificationCont>();
  List<String> documentTypes = ["National ID", "Passport", "Driver’s Lisence"];
  List<String> documentIcons = [
    AppIcons.nationalId,
    AppIcons.passport,
    AppIcons.drivingLisence
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacing.y(3),
          Image.asset(AppImages.document,
              height: SizeConfig.imageSizeMultiplier * 35),
          Spacing.y(3),
          SizedBox(
            width: SizeConfig.widthMultiplier * 76,
            child: Text(
              "Your document photo helps us prove your identity. It should match the information you have provided in the previous steps.",
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyExtraSmall
                  .copyWith(height: 1.9, color: Colors.white38),
            ),
          ),
          Spacing.y(5),
          ...List.generate(
            3,
            (index) => GestureDetector(
              onTap: () {
                cont.selectedDocument.value = index;
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: SizeConfig.heightMultiplier * 8,
                width: SizeConfig.widthMultiplier * 92,
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 3),
                margin:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 3),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                      color: cont.selectedDocument.value == index
                          ? AppColors.primaryClr
                          : Colors.white10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 5,
                      width: SizeConfig.widthMultiplier * 11.5,
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * 3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        documentIcons[index],
                        color: cont.selectedDocument.value == index
                            ? AppColors.primaryClr
                            : Colors.white38,
                      ),
                    ),
                    Spacing.x(3),
                    Text(
                      documentTypes[index],
                      style: AppTextStyles.bodySmall,
                    ),
                    const Spacer(),
                    Icon(
                      cont.selectedDocument.value == index
                          ? Icons.check_circle
                          : Icons.arrow_forward_ios_rounded,
                      color: cont.selectedDocument.value == index
                          ? AppColors.primaryClr
                          : Colors.white,
                      size: SizeConfig.imageSizeMultiplier * 4,
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacing.y(4.7),
        ],
      ),
    );
  }
}
