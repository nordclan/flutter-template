import 'package:flutter/painting.dart';
import 'package:sample_project/assets/colors/app_colors.dart';

// Styles of texts.
const TextStyle _text = TextStyle(
  fontStyle: FontStyle.normal,
  color: AppColors.black,
);

// Light
TextStyle textLight = _text.copyWith(fontWeight: FontWeight.w300);

// Regular
TextStyle textRegular = _text.copyWith(fontWeight: FontWeight.normal);
TextStyle textRegular14 = textRegular.copyWith(fontSize: 14.0);
TextStyle textRegular16 = textRegular.copyWith(fontSize: 16.0);
TextStyle textRegular18 = textRegular.copyWith(fontSize: 18.0);
TextStyle textRegular24 = textRegular.copyWith(fontSize: 24.0);
TextStyle textRegular14Grey = textRegular14.copyWith(color: AppColors.baseGray);
TextStyle textRegular14lightGrey =
    textRegular14.copyWith(color: AppColors.lightGray);
TextStyle textRegular16Grey = textRegular16.copyWith(color: AppColors.baseGray);

TextStyle textRegular16Blue = textRegular16.copyWith(color: AppColors.baseBlue);
TextStyle textRegular18Blue = textRegular18.copyWith(color: AppColors.baseBlue);
TextStyle textRegular24Blue = textRegular24.copyWith(color: AppColors.baseBlue);
TextStyle textRegular24White = textRegular24.copyWith(color: AppColors.white);
TextStyle textRegular18Base = textRegular18.copyWith(color: AppColors.base);

TextStyle article18 = textRegular18.copyWith(height: 1.5);

// Medium
TextStyle textMedium = _text.copyWith(
  fontWeight: FontWeight.w500,
);

TextStyle textMedium20 = textMedium.copyWith(fontSize: 20.0);

// Bold
TextStyle bold16 = textRegular16.copyWith(fontWeight: FontWeight.w600);
TextStyle bold24 = textRegular24.copyWith(fontWeight: FontWeight.w600);
