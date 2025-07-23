import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:varosha_app/core/constants/app_colors.dart';
import 'package:varosha_app/core/constants/app_constants.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    super.key,
    this.elevation = 1,
    this.onPressed,
    this.buttonColor,
    this.width,
    this.height,
    this.textStyle,
    this.isLoading = false,
    this.textAlign,
    this.borderRadius,
    this.buttonBorderColor,
  });

  final double? elevation;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 68.h,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(elevation),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((
            Set<WidgetState> states,
          ) {
            if (!states.contains(WidgetState.disabled)) {
              return buttonColor ?? AppColors.kPrimaryColor;
            }
            return null; // Defer to the widget's default.
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.kWhiteColor;
            }
            return null; // Defer to the widget's default.
          }),
          shape: WidgetStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              side: buttonBorderColor != null
                  ? BorderSide(color: buttonBorderColor!)
                  : BorderSide.none,
            ),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColors.kBackgroundColor,
                ),
              )
            : Text(
                text,
                style: textStyle ??
                    TextStyle(
                      fontFamily: AppConstants.kFontFamily,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kTextColor,
                      height: 28.sp / 18.sp,
                    ),
                textAlign: textAlign ?? TextAlign.center,
              ),
      ),
    );
  }
}
