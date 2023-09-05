import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/verification.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

import '../../../../utils/size_config.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key, required this.cameras});
  final List<CameraDescription>? cameras;

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  final cont = Get.find<VerificationCont>();
  late CameraController _cameraController;
  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initCamera(widget.cameras![0]);
  }

  Future takePicture() async {
    if (!_cameraController.value.isInitialized) {
      return null;
    }
    if (_cameraController.value.isTakingPicture) {
      return null;
    }
    try {
      await _cameraController.setFlashMode(FlashMode.off);
      XFile picture = await _cameraController.takePicture();
      // Get.bottomSheet(OCRBottomSheet(picture: picture),
      //     isScrollControlled: true);
      print('success');
    } on CameraException catch (e) {
      debugPrint('Error occured while taking picture: $e');
      return null;
    }
  }

  Future initCamera(CameraDescription cameraDescription) async {
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.high);
    try {
      await _cameraController.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
    } on CameraException catch (e) {
      debugPrint("camera error $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.defaultPadding,
        child: Column(children: [
          Spacing.y(6),
          Row(
            children: [
              const CustomBackButton(),
              Spacing.x(23),
              Text("Scan Back Side", style: AppTextStyles.bodyMedium),
            ],
          ),
          Spacing.y(20),
          cameraWidget(context),
          Spacing.y(5),
          SizedBox(
            width: SizeConfig.widthMultiplier * 76,
            child: Text(
                "Position your document inside the frame. Make sure that all the data is clearly visible.",
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyExtraSmall),
          ),
          Spacing.y(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  cont.torch.value = !cont.torch.value;
                  if (cont.torch.value == false) {
                    _cameraController.setFlashMode(FlashMode.off);
                  } else if (cont.torch.value == true) {
                    _cameraController.setFlashMode(FlashMode.torch);
                  }
                },
                child: Container(
                  height: SizeConfig.heightMultiplier * 7,
                  width: SizeConfig.widthMultiplier * 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white38),
                  ),
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 50,
                child: CustomButton(
                  title: "SCAN",
                  onTap: () {
                    takePicture();
                  },
                ),
              ),
              Container(
                height: SizeConfig.heightMultiplier * 7,
                width: SizeConfig.widthMultiplier * 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white38),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget cameraWidget(BuildContext context) {
    return SizedBox(
      width: SizeConfig.widthMultiplier * 90,
      height: SizeConfig.heightMultiplier * 25,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CameraPreview(_cameraController)),
    );
  }
}
