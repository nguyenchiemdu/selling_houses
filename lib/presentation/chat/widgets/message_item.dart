import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selling_houses/gen/colors.gen.dart';
import 'package:selling_houses/utils/app_text_style.dart';
import 'package:selling_houses/utils/enums/message_type_enum.dart';
import 'package:selling_houses/utils/extensions/date_time_ext.dart';

final kDate = DateTime.now();
const kUserName = 'Athalia Putri';

class MessageItem extends StatelessWidget {
  const MessageItem(
      {this.type = MessageType.sent,
      required this.child,
      this.avartarUrl,
      super.key});

  final MessageType type;
  final Widget child;
  final String? avartarUrl;
  final String userName = kUserName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.5.h),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (type == MessageType.received || type == MessageType.accepted) ...[
            avartarUrl == null
                ? SizedBox(
                    width: 30.r,
                  )
                : CircleAvatar(
                    radius: 15.r,
                    backgroundImage: NetworkImage(avartarUrl!),
                  ),
            SizedBox(
              width: 6.w,
            ),
          ],
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if ((type == MessageType.received ||
                      type == MessageType.accepted) &&
                  avartarUrl != null) ...[
                Text(
                  userName,
                  style: AppTextStyles.w400s12,
                ),
                SizedBox(
                  height: 5.h,
                )
              ],
              DefaultTextStyle(
                style: TextStyle(color: textColor),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h)
                              .copyWith(right: 48.w, bottom: 18.h),
                      child: child,
                    ),
                    Positioned.fill(
                      bottom: 7.w,
                      right: 10.w,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          kDate.toJmFormat(),
                          style: AppTextStyles.w400s10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color get backgroundColor {
    switch (type) {
      case MessageType.sent:
        return ColorName.whiteAntiFlash;
      case MessageType.received:
        return ColorName.whiteAzureish;
      case MessageType.offer:
        return ColorName.black;
      case MessageType.accepted:
        return ColorName.greenPhilippine;
      default:
        return ColorName.whiteAntiFlash;
    }
  }

  Color get textColor {
    switch (type) {
      case MessageType.sent:
        return ColorName.black;
      case MessageType.received:
        return ColorName.black;
      case MessageType.offer:
        return ColorName.lotion;
      case MessageType.accepted:
        return ColorName.lotion;
      default:
        return ColorName.lotion;
    }
  }

  MainAxisAlignment get mainAxisAlignment {
    switch (type) {
      case MessageType.sent:
        return MainAxisAlignment.end;
      case MessageType.received:
        return MainAxisAlignment.start;
      case MessageType.offer:
        return MainAxisAlignment.end;
      case MessageType.accepted:
        return MainAxisAlignment.start;
      default:
        return MainAxisAlignment.start;
    }
  }
}
