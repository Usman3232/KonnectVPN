import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/account_activity.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_dropdownfield.dart';

class AccountActivityScreen extends StatefulWidget {
  AccountActivityScreen({super.key});

  @override
  State<AccountActivityScreen> createState() => _AccountActivityScreenState();
}

class _AccountActivityScreenState extends State<AccountActivityScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Login Activity'),
    Tab(text: 'Security Activity'),
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

  final cont = Get.put(AccountActivityCont());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacing.y(6),
                  Row(
                    children: [
                      const CustomBackButton(),
                      Spacing.x(21),
                      Text("Account Activity", style: textTheme.bodyMedium!)
                    ],
                  ),
                  Spacing.y(5),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2),
                    child: Stack(
                      alignment: Alignment.center,
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
                          labelStyle: textTheme.displaySmall!
                              .copyWith(fontWeight: FontWeight.w500),
                          tabs: myTabs,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  LoginActivityTab(),
                  const SecurityActivityTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginActivityTab extends StatelessWidget {
  LoginActivityTab({
    super.key,
  });
  final cont = Get.find<AccountActivityCont>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6),
      child: Column(
        children: [
          Spacing.y(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date Range",
                    style: textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: Colors.white30),
                  ),
                  Spacing.y(1),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 50,
                    child: Obx(
                      () => CustomDropDownField(
                        hinttext: "Range",
                        listdata: cont.rangeList,
                        currentSelectedValue: cont.selectedRange.value == ""
                            ? null
                            : cont.selectedRange.value,
                        onChanged: (value) {
                          cont.selectedRange.value = value.toString();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date Range",
                    style: textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: Colors.white30),
                  ),
                  Spacing.y(1),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 35,
                    child: Obx(
                      () => CustomDropDownField(
                        hinttext: "Filter",
                        listdata: cont.filterList,
                        currentSelectedValue: cont.selectedFilter.value == ""
                            ? null
                            : cont.selectedFilter.value,
                        onChanged: (value) {
                          cont.selectedFilter.value = value.toString();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacing.y(2),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 1.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date",
                            style: textTheme.displaySmall!
                                .copyWith(color: Colors.white30),
                          ),
                          Text(
                            "Level 1",
                            style: textTheme.displaySmall!,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 1.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Secure",
                            style: textTheme.displaySmall!
                                .copyWith(color: Colors.white30),
                          ),
                          Text(
                            "3.54% - 5.06%",
                            style: textTheme.displaySmall!,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 1.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Location",
                            style: textTheme.displaySmall!
                                .copyWith(color: Colors.white30),
                          ),
                          Text(
                            "3 Months",
                            style: textTheme.displaySmall!,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 1.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "IP Address",
                            style: textTheme.displaySmall!
                                .copyWith(color: Colors.white30),
                          ),
                          Text(
                            "3 Months",
                            style: textTheme.displaySmall!,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 1.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                              16,
                              (index) => Container(
                                    height: SizeConfig.heightMultiplier * .2,
                                    width: SizeConfig.widthMultiplier * 3,
                                    decoration: BoxDecoration(
                                      color: Colors.white10,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 1,
                          bottom: SizeConfig.heightMultiplier * 2),
                      child: Row(
                        children: [
                          Text(
                            "Status",
                            style: textTheme.displaySmall!
                                .copyWith(color: Colors.white30),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.check_circle_rounded,
                            color: AppColors.primaryClr,
                            size: SizeConfig.imageSizeMultiplier * 4,
                          ),
                          Spacing.x(2),
                          Text(
                            "Completed",
                            style: textTheme.displaySmall!.copyWith(
                                color: AppColors.primaryClr,
                                fontSize: SizeConfig.textMultiplier * 1.05),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class SecurityActivityTab extends StatelessWidget {
  const SecurityActivityTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      children: const [],
    );
  }
}
