import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/referral.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/number_button.dart';
import '../../skate kpn/skate_kpn.dart';

class ReferralKeyboard extends StatelessWidget {
  ReferralKeyboard({
    super.key,
  });

  final cont = Get.find<ReferralCont>();

  @override
  Widget build(BuildContext context) {
    Duration animaDuration = const Duration(milliseconds: 700);

    return Obx(
      () => AnimatedPositioned(
        bottom: 0,
        duration: animaDuration,
        left: cont.isWiddraw.value ? 0 : -SizeConfig.widthMultiplier * 100,
        child: Container(
          height: SizeConfig.heightMultiplier * 50,
          width: SizeConfig.widthMultiplier * 100,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing.y(2),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: SizeConfig.widthMultiplier * 6,
                children: [
                  NumberButton(
                    title: "1",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "2",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "3",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "4",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "5",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "6",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "7",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "8",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "9",
                    onTap: () {},
                  ),
                  NumberButton(
                    title: "00",
                    onTap: () {},
                  ),
                  NumberButton(
                    onTap: () {},
                  ),
                  NumberButton(
                    isIcon: true,
                    onTap: () {},
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 6),
                child: CustomButton(
                  title: "Transfer",
                  isShadow: false,
                  onTap: () {
                    Get.to(() => const SkateKpnScreen());
                  },
                ),
              ),
              Spacing.y(2)
            ],
          ),
        ),
      ),
    );
  }
}
