import 'package:flutter/material.dart';
import 'sizing_imformation.dart';
import 'utils.dart';

class ResponsiveBuilder extends StatelessWidget {

  final Widget Function(
    BuildContext context,SizingInformation sizingInformation) builder;
  const ResponsiveBuilder({  Key ?key, required this.builder }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context,constraints){
     var mediaQuery=MediaQuery.of(context);
    var sizingInformation=SizingInformation(
      orientation: mediaQuery.orientation,
      deviceScreenType: getDeviceType(mediaQuery),
      screenSize: mediaQuery.size,
      localWidgetSize: Size(constraints.maxWidth,constraints.maxHeight)
    );
    return builder(
      context,sizingInformation
    );
    });
  }
}