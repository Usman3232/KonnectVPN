import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:get/get.dart';

import '../../../../controllers/subcription.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';
import 'custom_textfield.dart';

class CardExpansionTile extends StatelessWidget {
  CardExpansionTile({super.key});

  final cont = Get.find<SubcriptionCont>();

  final TextEditingController name = TextEditingController();
  final TextEditingController number = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController cvc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: cont.isIdCard.value,
      child: FadeIn(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
        child: Container(
          width: SizeConfig.widthMultiplier * 88,
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 4,
              vertical: SizeConfig.heightMultiplier * 3),
          margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white10),
          child: Column(
            children: [
              PaymentMethodTextField(
                title: "Name On Card",
                hintText: "Card Owner",
                controller: name,
              ),
              PaymentMethodTextField(
                title: "Card Number",
                hintText: "Card Number",
                controller: number,
                isObsecure: true,
              ),
              Row(
                children: [
                  Flexible(
                    child: PaymentMethodTextField(
                      title: "Expiration Date",
                      hintText: "MM/YY",
                      controller: date,
                      isRequired: false,
                    ),
                  ),
                  Spacing.x(4),
                  Flexible(
                    child: PaymentMethodTextField(
                      title: "Pin",
                      hintText: "CVC",
                      controller: cvc,
                      isRequired: false,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
