import "package:flutter/material.dart";
import "app_colors.dart";
abstract class AppTextStyles {
static final TextStyle splashTitle=TextStyle (
fontSize: 40,
  fontWeight: FontWeight.w700,
  color:AppColors.splashTextColors
);
static final TextStyle onBoardingTitle1=TextStyle (
fontSize: 24,
  fontWeight: FontWeight.w800,
  color:AppColors.textColors,
  fontFamily:"Montserrat",
);
static final TextStyle onBoardingDescription1=TextStyle (
fontSize: 14,
  fontWeight: FontWeight.w600,
  color:AppColors.textColors,
  fontFamily:"Montserrat",
);
static final TextStyle next=TextStyle (
fontSize: 18,
  fontWeight: FontWeight.w600,
  color:AppColors.forwardTransitionTextColors,
  fontFamily:"Montserrat",

);
static final TextStyle prev=TextStyle (
fontSize: 18,
  fontWeight: FontWeight.w600,
  color:AppColors.backTransitionTextColors,
  fontFamily:"Montserrat",

);
static final TextStyle skip=TextStyle (
fontSize: 18,
  fontWeight: FontWeight.w600,
  color:AppColors.textColors,
  fontFamily:"Montserrat",

);

}