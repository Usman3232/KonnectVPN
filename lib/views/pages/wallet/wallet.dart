import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/controllers/swap.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/auth_textfield.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_dropdownfield.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({super.key});

  final cont = Get.find<SwapCont>();
  TextEditingController nickName = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            children: [
              Spacing.y(6),
              const CustomAppbar(title: "Wallet"),
              Spacing.y(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nick Name",
                    style: textTheme.displaySmall!,
                  ),
                  Spacing.y(1),
                  AuthTextField(hintText: "Nickname", controller: nickName),
                  Text(
                    "Wallet Option",
                    style: textTheme.displaySmall!,
                  ),
                  Spacing.y(1),
                  Obx(
                    () => CustomDropDownField(
                      height: SizeConfig.heightMultiplier * 6,
                      radius: 14,
                      hinttext: "Type",
                      listdata: cont.walletList,
                      currentSelectedValue: cont.selectedWallet.value == ""
                          ? null
                          : cont.selectedWallet.value,
                      onChanged: (value) {
                        cont.selectedWallet.value = value.toString();
                      },
                    ),
                  ),
                  Spacing.y(2),
                  // AuthTextField(hintText: "Nickname", controller: nickName),
                  Text(
                    "Address",
                    style: textTheme.displaySmall!,
                  ),
                  Spacing.y(1),
                  AuthTextField(hintText: "Address", controller: address),
                ],
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: CustomButton(
                  title: "Add",
                  isShadow: false,
                  onTap: () {},
                ),
              ),
              Spacing.y(2),
            ],
          ),
        ),
      ),
    );
  }
}
