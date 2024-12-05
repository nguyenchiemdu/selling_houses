import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selling_houses/gen/colors.gen.dart';
import 'package:selling_houses/presentation/chat/widgets/card_item.dart';
import 'package:selling_houses/presentation/chat/widgets/chat_list.dart';
import 'package:selling_houses/presentation/chat/widgets/chat_text_field.dart';
import 'package:selling_houses/presentation/chat/widgets/toast.dart';
import 'package:selling_houses/utils/app_text_style.dart';

const kTitle = 'A. P.';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lotion,
      appBar: _appBar(),
      body: Column(
        children: [
          const CardItem(),
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  reverse: true,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 35.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 17.w),
                            child: const ChatList(),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          const Toast(),
                          SizedBox(
                            height: 200.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: ColorName.lotion,
                    child: const SafeArea(
                      child: ChatTextField(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() => AppBar(
        title: Text(
          kTitle,
          style: AppTextStyles.w600s16.copyWith(color: ColorName.blackChinese),
        ),
        centerTitle: false,
        backgroundColor: ColorName.lotion,
        leading: BackButton(
          color: ColorName.blackChinese,
          onPressed: () {},
        ),
        elevation: 0,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            color: ColorName.blackChinese,
            onPressed: () {},
          ),
        ],
      );
}
