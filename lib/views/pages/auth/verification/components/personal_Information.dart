import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/country.dart';
import '../../../../../constants/text_styles.dart';
import '../../../../../controllers/verification.dart';
import '../../../../../utils/size_config.dart';
import '../../../../../utils/spacing.dart';
import '../../../../widgets/custom_textfield.dart';

class PersonalInformation extends StatelessWidget {
  PersonalInformation({
    super.key,
  });

  final cont = Get.find<VerificationCont>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name", style: AppTextStyles.bodySmall),
        Spacing.y(1),
        CustomTextField(hintText: "Enter full name", controller: cont.name),
        Text("Full Address", style: AppTextStyles.bodySmall),
        Spacing.y(1),
        CustomTextField(
            hintText: "Enter full address", controller: cont.address),
        Text("Country", style: AppTextStyles.bodySmall),
        Spacing.y(1),
        CustomTextField(
          hintText: "Select country",
          controller: cont.country,
          readOnly: true,
          onTap: () {
            Get.to(() => const CountryScreen(),
                transition: Transition.noTransition);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("City", style: AppTextStyles.bodySmall),
                Spacing.y(1),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 55,
                  child: CustomTextField(
                    hintText: "Select city",
                    controller: cont.city,
                    readOnly: true,
                    onTap: () {},
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Code", style: AppTextStyles.bodySmall),
                Spacing.y(1),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 35,
                  child: CustomTextField(
                    hintText: "code",
                    controller: cont.code,
                    onTap: () {},
                  ),
                ),
              ],
            )
          ],
        ),
        Text("Citizenship", style: AppTextStyles.bodySmall),
        Spacing.y(1),
        CustomTextField(
          hintText: "Select citizenship",
          controller: cont.citizenship,
          readOnly: true,
          onTap: () {},
        ),
        Text("Residence", style: AppTextStyles.bodySmall),
        Spacing.y(1),
        CustomTextField(
          hintText: "Select residence",
          controller: cont.residence,
          readOnly: true,
          onTap: () {},
        ),
        Spacing.y(3),
      ],
    );
  }
}
