import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selling_houses/gen/assets.gen.dart';
import 'package:selling_houses/gen/colors.gen.dart';
import 'package:selling_houses/presentation/chat/widgets/message_item.dart';
import 'package:selling_houses/utils/app_text_style.dart';
import 'package:selling_houses/utils/enums/message_type_enum.dart';
import 'package:selling_houses/utils/extensions/context_ext.dart';

const kAvatarUrl =
    'https://s3-alpha-sig.figma.com/img/7543/702e/0371f4907e15c6bc0d9def3eca68fac2?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kYqV5SxU~hbp2p1aLUlKjNwCBSQa8Wlb~cvW8l7Hxrn73cuW3aJXiwYxofegaj1QrWjA0iuuYuJAiHAtfS5WvLfyw3E5a-9m887cndNxA1qUlkQ9LjpBRDUxFZ6q7wmvGiJ~62V-C51rgt1jCPfRgQph1NsLrd8Hxhoan~-GGJAhubLNECE8aJ0J07x3s6aDt8qFoAEHANFwzUmkkEu2bS64T4YzipYJ0~-cQFhboFhSUqTw2fCRnd4vi4IGbXjgFt6x4s0uiwDVD2JCS9LGfVz9u39XBej6b4cN244Dn4EibOryYVGNQzgnVbqhSbMCDfCAUcKTIk6NOAHCkl4aeg__';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MessageItem(
          type: MessageType.received,
          avartarUrl: kAvatarUrl,
          child: Text(
            'Hello, how can I help you?',
            style: AppTextStyles.w400s12,
          ),
        ),
        const MessageItem(
          type: MessageType.received,
          child: Text(
            'Hello, how can I help you?',
            style: AppTextStyles.w400s12,
          ),
        ),
        MessageItem(
          type: MessageType.sent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                  left: BorderSide(
                    color: ColorName.black,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                )),
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Athalia Putri',
                      style: AppTextStyles.w500s12,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet',
                      style:
                          AppTextStyles.w400s12.copyWith(color: ColorName.gray),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              const Text(
                'Do we need to bring anything???',
                style: AppTextStyles.w400s12,
              ),
            ],
          ),
        ),
        MessageItem(
          type: MessageType.offer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Made an offer: ',
                  style: AppTextStyles.w500s15,
                  children: [
                    TextSpan(
                      text: context.localization.priceFormat(4200100),
                      style: AppTextStyles.w700s15
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              RichText(
                text: TextSpan(
                  text: 'Offer expires in ',
                  style: AppTextStyles.w500s10,
                  children: [
                    TextSpan(
                      text: '24 hours.',
                      style: AppTextStyles.w500s10
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        MessageItem(
          type: MessageType.accepted,
          avartarUrl: kAvatarUrl,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.images.confetti.image(
                width: 18.h,
                height: 18.h,
              ),
              SizedBox(
                width: 13.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localization.acceptedOffer,
                    style: AppTextStyles.w500s15,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    context.localization.priceFormat(1234567),
                    style: AppTextStyles.w700s15,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
