import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/special_offer.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/payment%20method/payment_method.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class SpecialOfferScreen extends StatelessWidget {
  SpecialOfferScreen({super.key});
  final cont = Get.put(SpecialOfferCont());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Column(
          children: [
            Spacing.y(6),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: const Align(
                alignment: Alignment.topLeft,
                child: CustomBackButton(),
              ),
            ),
            Spacing.y(3),
            Text(
              "Special Offer",
              style:
                  textTheme.displayLarge!.copyWith(fontWeight: FontWeight.w700),
            ),
            Spacing.y(2),
            Text(
              "Congratulation We Have Special Offer For You ",
              style: textTheme.displaySmall!.copyWith(color: Colors.white38),
            ),
            Spacing.y(4),
            SizedBox(
              height: 425,
              child: PageView.builder(
                controller: cont.pagecont,
                itemCount: 4,
                onPageChanged: (value) {
                  cont.selectedOffer.value = value;
                },
                itemBuilder: (context, index) {
                  return SpecialOffer(indexx: index);
                },
              ),
            ),
            const Spacer(),
            MaterialButton(
              height: SizeConfig.heightMultiplier * 6,
              minWidth: SizeConfig.widthMultiplier * 88,
              onPressed: () {
                Get.to(() => PaymentMethodScreen());
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(color: AppColors.primaryClr),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                "Continue Gold Plan",
                style: textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.primaryClr),
              ),
            ),
            Spacing.y(2)
          ],
        ),
      ),
    );
  }
}

class SpecialOffer extends StatelessWidget {
  SpecialOffer({super.key, required this.indexx});

  final int indexx;
  List<String> subcriptionFeatures = [
    "Imperdiet sem",
    "Elit porttitor rutrum",
    "Et faucibus enim",
  ];
  final cont = Get.find<SpecialOfferCont>();
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
