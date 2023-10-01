import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images.dart';
import '../../../../controllers/subcription.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class SpecialOffer extends StatelessWidget {
  SpecialOffer({super.key, required this.indexx});

  final int indexx;
  List<String> subcriptionFeatures = [
    "Imperdiet sem",
    "Elit porttitor rutrum",
    "Et faucibus enim",
  ];
  final cont = Get.find<SubcriptionCont>();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 378,
            width: 242,
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 6),
            margin: EdgeInsets.only(top: SizeConfig.heightMultiplier * 5.5),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: cont.selectedOffer.value == indexx
                      ? AppColors.primaryClr
                      : Colors.white10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacing.y(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$8,25",
                      style: textTheme.displayLarge!.copyWith(
                          fontSize: SizeConfig.textMultiplier * 4,
                          fontWeight: FontWeight.w600,
                          color: cont.selectedOffer.value == indexx
                              ? Colors.white
                              : Colors.white30),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: SizeConfig.heightMultiplier * .5),
                      child: Text(
                        " / Month",
                        style: textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: cont.selectedOffer.value == indexx
                                ? Colors.white
                                : Colors.white10),
                      ),
                    )
                  ],
                ),
                Spacing.y(1),
                Text(
                  "\$99 / year  billing yearly",
                  style: textTheme.bodySmall!.copyWith(
                      color: cont.selectedOffer.value == indexx
                          ? Colors.white38
                          : Colors.white10),
                ),
                Spacing.y(3),
                Text(
                  "12 month subscriptions",
                  style: textTheme.bodyMedium!.copyWith(
                      color: cont.selectedOffer.value == indexx
                          ? Colors.white
                          : Colors.white30),
                ),
                Divider(
                  height: SizeConfig.heightMultiplier * 5,
                  color: Colors.white38,
                ),
                ...List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.heightMultiplier * 1),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.widthMultiplier * 3),
                          child: Icon(Icons.check_circle_rounded,
                              color: cont.selectedOffer.value == indexx
                                  ? AppColors.primaryClr
                                  : Colors.white30,
                              // color: cont.selectedOffer.value == index
                              //     ? AppColors.primaryClr
                              //     : Colors.white30,
                              size: SizeConfig.imageSizeMultiplier * 4),
                        ),
                        Text(
                          subcriptionFeatures[index],
                          style: textTheme.displaySmall!.copyWith(
                              color: cont.selectedOffer.value == indexx
                                  ? Colors.white
                                  : Colors.white30),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              AppImages.getStarted,
              height: SizeConfig.imageSizeMultiplier * 25,
            ),
          ),
          cont.selectedOffer.value == indexx
              ? const SizedBox()
              : Positioned(
                  top: 0,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 11.5,
                    width: SizeConfig.widthMultiplier * 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(.8),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
