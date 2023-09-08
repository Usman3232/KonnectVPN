import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class AboutUsScreen extends StatefulWidget {
  AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
    Tab(text: 'RIGHT'),
    Tab(text: 'RIGHT'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(30),
                  Text("About Us", style: AppTextStyles.bodyMedium)
                ],
              ),
              Spacing.y(5),
              Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: SizeConfig.heightMultiplier * .2,
                      width: SizeConfig.widthMultiplier * 100,
                      color: Colors.white10,
                    ),
                  ),
                  TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: SizeConfig.heightMultiplier * .2,
                    indicatorColor: AppColors.primaryClr,
                    controller: _tabController,
                    labelColor: AppColors.primaryClr,
                    unselectedLabelColor: Colors.white30,
                    labelStyle: AppTextStyles.bodyExtraSmall,
                    tabs: myTabs,
                  ),
                ],
              ),
              Spacing.y(5),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 9.6,
                      width: SizeConfig.widthMultiplier * 21.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white10),
                      alignment: Alignment.center,
                      child: Image.asset(AppImages.appLogo,
                          height: SizeConfig.imageSizeMultiplier * 12),
                    ),
                    Spacing.y(2),
                    Text(
                      "V2.67.1",
                      style: AppTextStyles.bodyMedium
                          .copyWith(color: Colors.white38),
                    ),
                    Spacing.y(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          3,
                          (index) => Container(
                            height: SizeConfig.heightMultiplier * 5.5,
                            width: SizeConfig.widthMultiplier * 12,
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 2),
                            decoration: const BoxDecoration(
                                color: Colors.white10, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                    Spacing.y(5),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            AppIcons.document,
                            height: SizeConfig.imageSizeMultiplier * 5,
                            color: Colors.white,
                          ),
                          Spacing.x(4),
                          Text(
                            "Terms & Conditions",
                            style: AppTextStyles.bodySmall
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: SizeConfig.imageSizeMultiplier * 4)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
