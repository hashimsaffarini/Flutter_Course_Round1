import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String isUserOpenedApp = 'isUserOpenedApp';

verticalSpace(double height) {
  return SizedBox(
    height: height.h,
  );
}

horizontalSpace(double width) {
  return SizedBox(
    width: width.w,
  );
}

bool emailValidtor(String email) => RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
    .hasMatch(email);
