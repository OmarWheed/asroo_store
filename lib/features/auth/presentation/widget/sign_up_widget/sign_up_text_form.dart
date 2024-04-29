import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widget/custom_text_field.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/utils/app_regex.dart';

import '../../../../../core/common/animations/animate_do.dart';

class SignUpTextForm extends StatefulWidget {
  const SignUpTextForm({super.key});

  @override
  State<SignUpTextForm> createState() => _SignUpTextFormState();
}

class _SignUpTextFormState extends State<SignUpTextForm> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.fullName),
              keyboardType: TextInputType.text,
              validator: (input) {
                if (input == null || input.isEmpty || input.length < 4) {
                  return context.translate(LangKeys.validName);
                }

                return null;
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (input) {
                if (!AppRegex.isEmailValid(' ')) {
                  return context.translate(LangKeys.validEmail);
                }

                return null;
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    showPassword ? Icons.visibility_off : Icons.visibility,
                    color: context.color.textColor,
                  )),
              controller: TextEditingController(),
              obscureText: showPassword,
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              validator: (input) {
                if (input == null || input.isEmpty || input.length < 6) {
                  return context.translate(LangKeys.validPassword);
                }

                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
