library uidata;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

part '../uidata/color.dart';
part '../uidata/text_styles.dart';
part '../uidata/image.dart';
part '../uidata/vector.dart';
part '../uidata/icon.dart';
part '../uidata/font.dart';
part '../uidata/spacing.dart';

class UIData {
  //  Page Orientation Dimentions
  static final double responsiveHeight = (Get.height.ceil()).toDouble();
  static final double responsiveWidth = (Get.width.ceil()).toDouble();
}
