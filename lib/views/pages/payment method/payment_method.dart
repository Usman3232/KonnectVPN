import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/controllers/subcription.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/detail/detail.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import 'components/card_expansion_tile.dart';
import 'components/payment_tile.dart';
import 'components/promo_textfield.dart';
import 'components/wallet_expansion_tile.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({super.key});
  final cont = Get.put(SubcriptionCont());

  TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Background(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            child: Column(
              children: [
                Spacing.y(6),
                const CustomAppbar(title: "Payment Method"),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 2),
                  child: SizedBox(
                    height: SizeConfig.heightMultiplier * 81.5,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacing.y(3),
                          PaymentMethodTile(
                            title: "Credit/Debit Card",
                            icon: AppIcons.card,
                            onTap: () {
                              cont.isIdCard.value = !cont.isIdCard.value;
                            },
                            isCheck: cont.isIdCard.value,
                          ),
                          CardExpansionTile(),
                          PaymentMethodTile(
                            title: "E-Wallet",
                            icon: AppIcons.eWallet,
                            onTap: () {
                              cont.isEWallet.value = !cont.isEWallet.value;
                            },
                            isCheck: cont.isEWallet.value,
                          ),
                          EWalletExpansionTile(),
                          PaymentMethodTile(
                            title: "Crypto",
                            icon: AppIcons.crypto,
                            onTap: () {
                              cont.isCrypto.value = !cont.isCrypto.value;
                            },
                            isCheck: cont.isCrypto.value,
                          ),
                          //extract this code after design
                          Visibility(
                            visible: cont.isEWallet.value,
                            child: const SizedBox(),
                          ),
                          Spacing.y(4),
                          Text(
                            "Promo Code",
                            style: textTheme.displaySmall!,
                          ),
                          Spacing.y(1),
                          PaymentTextField(
                            controller: code,
                          ),
                          Spacing.y(2)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 2),
                  child: CustomButton(
                    title: "Continue Payment",
                    isShadow: false,
                    onTap: () {
                      Get.to(() => const DetailScreen());
                    },
                  ),
                ),
                Spacing.y(2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
