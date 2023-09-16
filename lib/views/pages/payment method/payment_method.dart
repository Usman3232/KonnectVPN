import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/payment_method.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({super.key});
  final cont = Get.put(PaymentMethodCont());

  final TextEditingController name = TextEditingController();
  final TextEditingController number = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController cvc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
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
                    Spacing.x(20),
                    Text(
                      "Payment Method",
                      style: AppTextStyles.bodyMedium
                          .copyWith(color: Colors.white.withOpacity(.8)),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 2),
                  child: SizedBox(
                    height: SizeConfig.heightMultiplier * 86,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacing.y(3),
                          PaymentMethodTile(
                            title: "Credit/Debit Card",
                            onTap: () {
                              cont.isIdCard.value = !cont.isIdCard.value;
                            },
                            isCheck: cont.isIdCard.value,
                          ),
                          Visibility(
                            visible: cont.isIdCard.value,
                            child: FadeIn(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                              child: Container(
                                width: SizeConfig.widthMultiplier * 88,
                                padding: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.widthMultiplier * 4,
                                    vertical: SizeConfig.heightMultiplier * 3),
                                margin: EdgeInsets.only(
                                    bottom: SizeConfig.heightMultiplier * 2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white10),
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
                                      controller: name,
                                      isObsecure: true,
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: PaymentMethodTextField(
                                            title: "Expiration Date",
                                            hintText: "MM/YY",
                                            controller: name,
                                            isRequired: false,
                                          ),
                                        ),
                                        Spacing.x(4),
                                        Flexible(
                                          child: PaymentMethodTextField(
                                            title: "Pin",
                                            hintText: "CVC",
                                            controller: name,
                                            isRequired: false,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          PaymentMethodTile(
                            title: "E-Wallet",
                            onTap: () {
                              cont.isEWallet.value = !cont.isEWallet.value;
                            },
                            isCheck: cont.isEWallet.value,
                          ),
                          FadeIn(
                            duration: const Duration(seconds: 3),
                            curve: Curves.easeIn,
                            child: Visibility(
                              visible: cont.isEWallet.value,
                              child: Column(
                                children: [
                                  ...List.generate(
                                    3,
                                    (index) => Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical:
                                              SizeConfig.heightMultiplier * .5),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 36,
                                            width: 36,
                                            margin: EdgeInsets.only(
                                                left:
                                                    SizeConfig.widthMultiplier *
                                                        8,
                                                right:
                                                    SizeConfig.widthMultiplier *
                                                        4),
                                            decoration: BoxDecoration(
                                              color: Colors.white10,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          Text(
                                            "Paypal",
                                            style: AppTextStyles.bodyExtraSmall
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                          const Spacer(),
                                          AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 300),
                                            height: 16,
                                            width: 16,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: const Color(0xff44CCCC),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: AnimatedContainer(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              height: 10,
                                              width: 10,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff44CCCC),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacing.y(2),
                                ],
                              ),
                            ),
                          ),
                          PaymentMethodTile(
                            title: "Crypto",
                            onTap: () {
                              cont.isCrypto.value = !cont.isCrypto.value;
                            },
                            isCheck: cont.isCrypto.value,
                          ),
                          Visibility(
                            visible: cont.isEWallet.value,
                            child: const SizedBox(),
                          ),
                          Spacing.y(4),
                          Text(
                            "Promo Code",
                            style: AppTextStyles.bodyExtraSmall,
                          ),
                          Spacing.y(1),
                          TextFormField(
                            cursorColor: AppColors.primaryClr,
                            // keyboardType: keyboardType,
                            decoration: InputDecoration(
                              isDense: true,
                              isCollapsed: true,
                              fillColor: Colors.white10,
                              filled: true,
                              prefixIcon: SizedBox(
                                width: SizeConfig.widthMultiplier * 6,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width:
                                            SizeConfig.widthMultiplier * 1.6),
                                    const Icon(
                                      Icons.view_comfy_rounded,
                                      color: Colors.white38,
                                    ),
                                    SizedBox(
                                      height: SizeConfig.heightMultiplier * 3,
                                      child: VerticalDivider(
                                        width: SizeConfig.widthMultiplier * 3,
                                        color: Colors.white38,
                                        thickness: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.widthMultiplier * 5,
                                  vertical: SizeConfig.heightMultiplier * 2),
                              hintText: "Enter Here",
                              hintStyle: AppTextStyles.bodySmall
                                  .copyWith(color: Colors.white38),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white60),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: BorderSide(
                                  color: AppColors.primaryClr,
                                ),
                              ),
                            ),
                            style: AppTextStyles.bodySmall
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          Spacing.y(8),
                          CustomButton(
                            title: "Continue Payment",
                            onTap: () {},
                          ),
                          Spacing.y(2)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentMethodTextField extends StatelessWidget {
  PaymentMethodTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.isRequired = true,
    this.isObsecure = false,
    this.keyboardType,
  });

  final String title, hintText;
  final TextEditingController controller;
  final bool isRequired;
  final bool isObsecure;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: AppTextStyles.bodyExtraSmall.copyWith(
                  fontSize: SizeConfig.textMultiplier * 1.05,
                  color: Colors.white60),
            ),
            isRequired
                ? Text(
                    "*",
                    style: AppTextStyles.bodyExtraSmall.copyWith(
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: AppColors.errorClr),
                  )
                : const SizedBox(),
          ],
        ),
        Spacing.y(1),
        TextFormField(
          obscureText: isObsecure,
          obscuringCharacter: "*",
          cursorColor: AppColors.primaryClr,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            isDense: true,
            isCollapsed: true,
            fillColor: Colors.white10,
            filled: true,
            contentPadding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 5,
                vertical: SizeConfig.heightMultiplier * 2),
            hintText: hintText,
            hintStyle: AppTextStyles.bodySmall.copyWith(color: Colors.white38),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(14),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: AppColors.primaryClr,
              ),
            ),
          ),
          style: AppTextStyles.bodySmall.copyWith(fontWeight: FontWeight.w500),
        ),
        Spacing.y(1),
      ],
    );
  }
}

class PaymentMethodTile extends StatelessWidget {
  PaymentMethodTile({
    super.key,
    required this.title,
    required this.onTap,
    required this.isCheck,
  });

  final String title;
  final VoidCallback onTap;
  final bool isCheck;

  final cont = Get.find<PaymentMethodCont>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 2),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white10,
              ),
            ),
            Text(
              title,
              style: AppTextStyles.bodyExtraSmall
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isCheck ? const Color(0xff44CCCC) : Colors.white24,
                ),
              ),
              alignment: Alignment.center,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isCheck ? const Color(0xff44CCCC) : Colors.transparent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
