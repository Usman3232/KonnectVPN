import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/citizenship.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/city.dart';
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
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name", style: textTheme.displaySmall!),
        Spacing.y(1),
        CustomTextField(hintText: "Enter full name", controller: cont.name),
        Text("Full Address", style: textTheme.displaySmall!),
        Spacing.y(1),
        CustomTextField(
            hintText: "Enter full address", controller: cont.address),
        Text("Country", style: textTheme.displaySmall!),
        Spacing.y(1),
        CustomTextField(
          hintText: "Select country",
          controller: cont.country,
          readOnly: true,
          onTap: () {
            Get.to(() => CountryScreen(), transition: Transition.noTransition);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("City", style: textTheme.displaySmall!),
                Spacing.y(1),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 55,
                  child: CustomTextField(
                    hintText: "Select city",
                    controller: cont.city,
                    readOnly: true,
                    onTap: () {
                      Get.to(() => const CityScreen(),
                          transition: Transition.noTransition);
                    },
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Code", style: textTheme.displaySmall!),
                Spacing.y(1),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 35,
                  child: CustomTextField(
                    hintText: "code",
                    controller: cont.code,
                  ),
                ),
              ],
            )
          ],
        ),
        Text("Citizenship", style: textTheme.displaySmall!),
        Spacing.y(1),
        CustomTextField(
          hintText: "Select citizenship",
          controller: cont.citizenship,
          readOnly: true,
          onTap: () {
            Get.to(() => const CitizenShipScreen(),
                transition: Transition.noTransition);
          },
        ),
        Text("Residence", style: textTheme.displaySmall!),
        Spacing.y(1),
        CustomTextField(
          hintText: "Select residence",
          controller: cont.residence,
          readOnly: true,
          onTap: () {},
        ),
      ],
    );
  }
}
