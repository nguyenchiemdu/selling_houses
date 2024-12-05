import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selling_houses/gen/colors.gen.dart';
import 'package:selling_houses/utils/app_text_style.dart';
import 'package:selling_houses/utils/extensions/context_ext.dart';

class Toast extends StatelessWidget {
  const Toast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: ColorName.gray,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text(
            context.localization.reservedToastTitle,
            style: AppTextStyles.w700s12,
          ),
          Text(
            context.localization.reservedToastMessage,
            style: AppTextStyles.w400s12,
          )
        ],
      ),
    );
  }
}
