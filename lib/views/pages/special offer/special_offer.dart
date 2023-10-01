import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/controllers/subcription.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/payment%20method/payment_method.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

import 'components/special_offer_tile.dart';

class SpecialOfferScreen extends StatelessWidget {
  SpecialOfferScreen({super.key});
  final cont = Get.put(SubcriptionCont());

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
