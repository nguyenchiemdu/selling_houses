import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selling_houses/gen/assets.gen.dart';
import 'package:selling_houses/gen/colors.gen.dart';
import 'package:selling_houses/utils/app_text_style.dart';
import 'package:selling_houses/utils/extensions/context_ext.dart';

class ChatTextField extends StatefulWidget {
  const ChatTextField({super.key});

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  final recommendations = [
    'I’m interested',
    'Hello! When can we do a viewing?',
    'Can you send me more details?',
  ];
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 14.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            context.localization.selectMessage,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 33.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemBuilder: (_, index) {
              return OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(51.r),
                  ),
                  textStyle: AppTextStyles.w400s14,
                  foregroundColor: ColorName.gray,
                ),
                onPressed: () {
                  _controller.text = recommendations[index];
                  _focusNode.requestFocus();
                },
                child: Text(recommendations[index]),
              );
            },
            separatorBuilder: (_, __) => SizedBox(
              width: 10.w,
            ),
            itemCount: recommendations.length,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
          child: Row(
            children: [
              IconButton(
                icon: Assets.svgs.plus.svg(),
                onPressed: () {},
              ),
              Expanded(
                child: TextField(
                  focusNode: _focusNode,
                  controller: _controller,
                  decoration: InputDecoration(
                      hintText: context.localization.sendAMessageHint),
                  onSubmitted: (value) {
                    _controller.clear();
                    // TODO: send message
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
