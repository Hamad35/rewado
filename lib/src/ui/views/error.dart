import 'package:flutter/material.dart';

// packages
import 'package:get/get.dart';
// import 'package:flutter_svg/svg.dart';

// widgets
// import '../../widgets/common_scaffold.dart';
// import '../../widgets/buttons/raised_button.dart';

// utils
import 'package:fskt/src/utils/config/uidata.dart';

class ErrorView extends StatelessWidget {
  final arguments = Get.arguments;
  final String? icon;
  final String? message;
  final String? action;

  ErrorView({
    super.key,
    this.icon,
    this.message,
    this.action,
  });
  Widget bodyData() {
    // String? displayMessage = message;
    // String? displayIcon = icon;
    // String? displayAction = action;

    // // print(arguments);
    // // printInfo(info: '${arguments.runtimeType}');
    // if (arguments != null) {
    //   // print(arguments);
    //   // print(arguments.runtimeType);
    //   if (arguments.runtimeType != String) {
    //     if (arguments['message'] != null) displayMessage = arguments['message'];
    //     if (arguments['icon'] != null) displayIcon = arguments['icon'];
    //     if (arguments['action'] != null) displayAction = arguments['action'];
    //   }
    // }
    // const kErrorStyle = TextStyle(
    //   fontWeight: FontWeight.w900,
    //   fontFamily: 'Roboto',
    //   color: Color(0xff6d6d6d),
    //   // letterSpacing: 1.2
    //   fontSize: 18,
    // );
    return Container(
      color: Colors.white,
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Stack(alignment: AlignmentDirectional.center, children: [
          //   SvgPicture.asset(
          //     UIDataVector.vectorBrokencircle,
          //     color: UIDataColors.commonColor,
          //   ),
          //   SvgPicture.asset(
          //     displayIcon ?? UIDataVector.vectorNoInternet,
          //     color: Color(0xff6d6d6d),
          //   ),
          // ]),
          SizedBox(
            height: 200,
            width: Get.width,
            child: Center(
                child: Text(
              message ?? "No internet connection",
              style: UIDataTextStyles.kErrorStyle,
              textAlign: TextAlign.center,
              // textScaleFactor: 1.5,
            )),
          ),
          // displayAction != null
          //     ? Container(
          //         width: Get.width,
          //         child: ReusableButton(
          //           buttonCurve: 30.0,
          //           label: 'Continue',
          //           onPressed: () {
          //             Get.offAndToNamed(displayAction!);
          //           },
          //         ),
          //       ).paddingAll(20)
          //     : SizedBox(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return CommonScaffold(
    //   bodyData: bodyData(),
    //   showDrawer: false,
    //   enableHeader: true,
    //   showFAB: false,
    //   showBottomNav: false,
    //   topButton: 'back',
    //   headerTitle: '',
    // );
    return Scaffold(body: bodyData());
  }
}
