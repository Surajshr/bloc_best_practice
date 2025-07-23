import 'package:flutter/material.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/features/dynamic_form/data/model/form_submission_model.dart';
import 'package:varosha_app/widgets/build_text.dart';

class FormSubmissionDetailsScreen extends StatelessWidget {
  final FormSubmissionModel submission;

  const FormSubmissionDetailsScreen({
    super.key,
    required this.submission,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildText(
          text: 'Submission Details',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildText(
              text: submission.formData.title,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.kTextColor,
            ),
            SizedBox(height: 24.h),
            ...submission.formData.steps.expand((step) {
              // Skip empty steps
              if (step.inputs.isEmpty) return [];

              return [
                BuildText(
                  text: step.title,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kTextColor,
                ),
                SizedBox(height: 8.h),
                BuildText(
                  text: step.description,
                  fontSize: 14.sp,
                  color: AppColors.kTextDisabledColor,
                ),
                SizedBox(height: 16.h),
                ...step.inputs.map((input) {
                  final value = submission.formValues.toMap()[input.key];
                  if (value == null) return const SizedBox.shrink();

                  return Container(
                    width: 1.sw,
                    margin: EdgeInsets.only(bottom: 16.h),
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: AppColors.kWhiteColor,
                      borderRadius: BorderRadius.circular(8.r),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.kBackgroundColor.withValues(
                            alpha: 0.1,
                          ),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildText(
                          text: input.label,
                          fontSize: 14.sp,
                          color: AppColors.kTextDisabledColor,
                        ),
                        SizedBox(height: 8.h),
                        BuildText(
                          text: value.toString(),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kTextColor,
                        ),
                      ],
                    ),
                  );
                }),
                SizedBox(height: 24.h),
              ];
            }).toList(),
          ],
        ),
      ),
    );
  }
}
