import 'package:flutter/cupertino.dart';
import 'enum/device_screen_type.dart';

class SizingInformation{
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({required this.orientation, required this.deviceScreenType, required this.screenSize, required this.localWidgetSize});

@override

String toString() {
    super.toString();
    return "Orientation $orientation DeviceScreeType: $deviceScreenType ScreenSize:$screenSize LocalWidgetSize: $localWidgetSize";
  }

}