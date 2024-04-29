import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animations/animate_do.dart';
import 'package:store_app/core/common/widget/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/app_routes.dart';
import 'package:store_app/core/style/fonts/font_weight_helper.dart';
import 'package:store_app/features/auth/presentation/widget/auth_title.dart';
import 'package:store_app/features/auth/presentation/widget/dark_and_lang_button.dart';
import 'package:store_app/features/auth/presentation/widget/sign_up_widget/sign_up_button.dart';
import 'package:store_app/features/auth/presentation/widget/sign_up_widget/sign_up_text_form.dart';
import 'package:store_app/features/auth/presentation/widget/sign_up_widget/user_avatar_image.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //appbar
            const DarkAndLangButton(),

            SizedBox(height: 40.h),
            //title
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            SizedBox(height: 10.h),
            //User Avatar image
            const UserAvatar(),

            SizedBox(height: 20.h),
            //forms
            const SignUpTextForm(),
            SizedBox(height: 20.h),
            //button
            const SignUpButton(),
            SizedBox(height: 20.h),
            //create text
            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(PagesName.loginScreen);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    color: context.color.bluePinkLight,
                    fontWeight: FontWeightHelper.bold,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
