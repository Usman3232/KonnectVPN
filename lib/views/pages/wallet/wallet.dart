import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/auth_textfield.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class WalletScreen extends StatefulWidget {
  WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  TextEditingController nickName = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(30),
                  Text("Wallet", style: AppTextStyles.bodyMedium)
                ],
              ),
              Spacing.y(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nick Name",
                    style: AppTextStyles.bodyExtraSmall,
                  ),
                  Spacing.y(1),
                  AuthTextField(hintText: "Nickname", controller: nickName),
                  Text(
                    "Wallet Option",
                    style: AppTextStyles.bodyExtraSmall,
                  ),
                  Spacing.y(1),
                  AuthTextField(hintText: "Nickname", controller: nickName),
                  Text(
                    "Address",
                    style: AppTextStyles.bodyExtraSmall,
                  ),
                  Spacing.y(1),
                  AuthTextField(hintText: "Address", controller: address),
                  Spacing.y(41),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2),
                    child: CustomButton(
                      title: "Add",
                      onTap: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
