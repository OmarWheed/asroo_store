import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animations/animate_do.dart';
import 'package:store_app/core/common/widget/custom_linear_button.dart';
import 'package:store_app/core/common/widget/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInLeft(
      duration: 400,
      child: CustomLinearButton(
        width: double.infinity,
        height: 50.h,
        child: TextApp(
          text: context.translate(LangKeys.signUp),
          theme: context.textStyle
              .copyWith(fontWeight: FontWeightHelper.bold, fontSize: 18.sp),
        ),
        onPressed: () {},
      ),
    );
  }
}
