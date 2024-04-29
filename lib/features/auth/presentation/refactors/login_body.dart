import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animations/animate_do.dart';
import 'package:store_app/core/common/widget/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';
import 'package:store_app/features/auth/presentation/widget/auth_title.dart';
import 'package:store_app/features/auth/presentation/widget/dark_and_lang_button.dart';
import 'package:store_app/features/auth/presentation/widget/login_widget/login_button.dart';
import 'package:store_app/features/auth/presentation/widget/login_widget/text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //appbar
            const DarkAndLangButton(),

            SizedBox(height: 50.h),
            //title
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            SizedBox(height: 50.h),
            //forms
            const LoginTextForm(),
            SizedBox(height: 30.h),
            //button
            const LoginButton(),
            SizedBox(height: 30.h),
            //create text
            CustomFadeInDown(
              duration: 400,
              child: TextApp(
                text: context.translate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                  color: context.color.bluePinkLight,
                  fontWeight: FontWeightHelper.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
