import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/controllers/verification.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../../constants/text_styles.dart';
import '../../../../utils/spacing.dart';
import 'components/personal_Information.dart';

class VerificationDetailScreen extends StatelessWidget {
  VerificationDetailScreen({super.key});

  final cont = Get.put(VerificationCont());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Background(
          child: Padding(
            padding: AppConstants.defaultPadding,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacing.y(8),
                  Center(
                    child: Text(
                      cont.currentSection.value == 0
                          ? "Personal Information"
                          : cont.currentSection.value == 1
                              ? "Document Verification"
                              : cont.currentSection.value == 2
                                  ? "National ID Scan"
                                  : "",
                      style: AppTextStyles.headingsmall
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacing.y(3),
                  Center(
                    child: SizedBox(
                      height: SizeConfig.heightMultiplier * .8,
                      width: SizeConfig.widthMultiplier * 70,
                      child: FAProgressBar(
                        currentValue: cont.progressValue.value,
                        backgroundColor: Colors.white10,
                        progressColor: AppColors.primaryClr,
                        maxValue: 3,
                      ),
                    ),
                  ),
                  Spacing.y(5),
                  cont.currentSection.value == 0
                      ? PersonalInformation()
                      : cont.currentSection.value == 1
                          ? DoumentVerification()
                          : const SizedBox(),
                  CustomButton(
                    title: "Next Step",
                    onTap: () {
                      cont.progressValue.value += 1;
                      cont.currentSection.value += 1;
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DoumentVerification extends StatelessWidget {
  DoumentVerification({
    super.key,
  });

  final cont = Get.find<VerificationCont>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacing.y(3),
          Container(
            height: SizeConfig.heightMultiplier * 15,
            width: SizeConfig.widthMultiplier * 30,
            decoration: BoxDecoration(
                color: AppColors.primaryClr, shape: BoxShape.circle),
          ),
          Spacing.y(3),
          SizedBox(
            width: SizeConfig.widthMultiplier * 83,
            child: Text(
              "Your document photo helps us prove your identity. It should match the information you have provided in the previous steps.",
              textAlign: TextAlign.center,
              style: AppTextStyles.bodySmall
                  .copyWith(color: AppColors.textMediumClr),
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
                          : Colors.white24),
                ),
                child: Row(
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 5,
                      width: SizeConfig.widthMultiplier * 11.5,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.web_stories_rounded,
                        color: cont.selectedDocument.value == index
                            ? AppColors.primaryClr
                            : Colors.white38,
                      ),
                    ),
                    Spacing.x(3),
                    Text(
                      "National ID",
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
          Spacing.y(5),
        ],
      ),
    );
  }
}
