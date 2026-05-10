import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/core/helper/navigator.dart';
import 'package:shop/core/utils/app_colors.dart';
import 'package:shop/core/utils/app_text_styles.dart';
import 'package:shop/features/onboarding_view/start.dart';

import '../../core/translation/translation_keys.dart';
import '../../core/utils/app_assets.dart';
class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((v)
    {
   goTo(context, Start());
    }
    );

  }
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.splashImage)
                ],
              ),
              SizedBox(width: 10.w,),
              Text(TranslationKeys.splash,
                style: AppTextStyles.splashTitle,)
            ],
          )
      ),
    );
  }
}