import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selling_houses/gen/colors.gen.dart';
import 'package:selling_houses/utils/app_text_style.dart';
import 'package:selling_houses/utils/extensions/context_ext.dart';

const kImageUrl =
    'https://s3-alpha-sig.figma.com/img/7b54/5c36/88f5e79dc59401ad13b7da0fb4c69cc6?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=XyIuLWHNQf1clrKdPJDvyGCzr6EB7gZjfnmyA7Hkn6iQss5wD-A85ar19cpcm-YWHMU--AHzbjWwJm6Z~oSekh4xJ7sKRQUCHvmD32tOSJQwqgyu4xlF0sAg5T8gKSaiMwwqGu5gcC9A5VmFahO6CsS7pGtuZZVGVdNfqASXmg6GruhmYrG~LEh~VfTYwzZAta9j2NshpOxO1-4r6sBJQgQ9PSdRmmXVTtEKEIPc1yC4qV9n8X8Vuatk832som80EmwwHIBEEZJhppYJzTQSgh~5M6B4ryQPWJjrepnMCi1u6gBOJn2gStjZkvcqtvC8t8zedg76qwE~Mtlxh-DfeQ__';
const kTitle = '123 Dedap Link (Reserved)';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: ColorName.silverAmerican,
            width: 1,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
        horizontal: 28.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: Image.network(
              kImageUrl,
              width: 80.h,
              height: 80.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kTitle,
                  style: AppTextStyles.w700s14.copyWith(
                      color: ColorName.greenDarkJungle,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 8.h),
                Text(
                  context.localization.priceFormat(4200100),
                  style: AppTextStyles.w600s14
                      .copyWith(color: ColorName.blackChinese),
                ),
                SizedBox(height: 3.5.h),
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(context.localization.unreserve),
                    ),
                    SizedBox(width: 10.w),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(context.localization.markAsSold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
