import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/features/dynamic_form/data/model/dynamic_form_model.dart';
import 'package:varosha_app/features/dynamic_form/data/model/form_submission_model.dart';
import 'package:varosha_app/features/dynamic_form/presentation/logic/dynamic_form_bloc.dart';
import 'package:varosha_app/features/dynamic_form/presentation/widgets/input_builder.dart';
import 'package:varosha_app/features/dynamic_form/presentation/widgets/step_progress_indicator.dart';
import 'package:varosha_app/route/route_imports.dart';
import 'package:varosha_app/widgets/app_button.dart';
import 'package:varosha_app/widgets/build_text.dart';
import 'package:varosha_app/widgets/custom_dialogbox.dart';

class DynamicFormScreen extends StatefulWidget {
  const DynamicFormScreen({super.key});

  @override
  State<DynamicFormScreen> createState() => _DynamicFormScreenState();
}

class _DynamicFormScreenState extends State<DynamicFormScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DynamicFormBloc>().add(DynamicFormEvent.loadForm(
          DynamicFormModel.fromJson(
            jsonDecode(AppConstants.sampleFormJson),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<DynamicFormBloc, DynamicFormState>(
            builder: (context, state) {
              if (state.formData == null) {
                return const BuildText(
                  text: 'Dynamic Form',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                );
              }
              return BuildText(
                text: state.formData!.title,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              );
            },
          ),
        ),
        body: BlocConsumer<DynamicFormBloc, DynamicFormState>(
          listener: (context, state) {
            if (state.isSubmitted && state.isValid) {
              submitDialogBox(context, state);
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.formData == null) {
              return const Center(
                child: BuildText(
                  text: 'No form data available',
                  fontSize: 16,
                  color: AppColors.kTextDisabledColor,
                ),
              );
            }

            final currentStep = state.formData!.steps[state.currentStep];

            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.w),
                  child: StepProgressIndicator(
                    totalSteps: state.formData!.steps.length,
                    currentStep: state.currentStep,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BuildText(
                        text: currentStep.title,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kTextColor,
                      ),
                      SizedBox(height: 8.h),
                      BuildText(
                        text: currentStep.description,
                        fontSize: 16.sp,
                        color: AppColors.kTextDisabledColor,
                      ),
                    ],
                  ),
                ),
                if (state.currentStep == state.formData!.steps.length - 1)
                  _buildReviewSection(context)
                else
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.all(16.w),
                      itemCount: currentStep.inputs.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 16.h),
                      itemBuilder: (context, index) {
                        final input = currentStep.inputs[index];
                        final formValues = state.formValues.toMap();
                        return InputBuilder(
                          input: input,
                          value: formValues[input.key],
                        );
                      },
                    ),
                  ),
                _buildBottomButtons(context, state),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> submitDialogBox(
      BuildContext context, DynamicFormState state) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => CustomDialogBox(
        title: 'Success',
        description: 'Your form has been submitted successfully!',
        buttonText: 'View Details',
        onButtonPressed: () {
          context
              .read<DynamicFormBloc>()
              .add(const DynamicFormEvent.resetFormState());
          Navigator.pop(context); // Close dialog
          context.push(
            RouteName.formSubmissionDetails,
            extra: FormSubmissionModel(
              formData: state.formData!,
              formValues: state.formValues,
            ),
          );
        },
      ),
    );
  }

  Widget _buildReviewSection(BuildContext context) {
    return Expanded(
      child: BlocBuilder<DynamicFormBloc, DynamicFormState>(
        builder: (context, state) {
          final formValues = state.formValues;
          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...state.formData!.steps.expand((step) {
                  // Skip empty steps
                  if (step.inputs.isEmpty) return [];

                  return [
                    BuildText(
                      text: step.title,
                      fontSize: 18.sp,
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
                      dynamic value;
                      switch (input.key) {
                        case 'fullName':
                          value = formValues.fullName;
                          break;
                        case 'age':
                          value = formValues.age;
                          break;
                        case 'gender':
                          value = formValues.gender;
                          break;
                        case 'vehicleType':
                          value = formValues.vehicleType;
                          break;
                        case 'vehicleYear':
                          value = formValues.vehicleYear;
                          break;
                        case 'hasExistingInsurance':
                          value = formValues.hasExistingInsurance;
                          break;
                        case 'coverageType':
                          value = formValues.coverageType;
                          break;
                        case 'roadsideAssistance':
                          value = formValues.roadsideAssistance;
                          break;
                      }

                      if (value == null) return const SizedBox.shrink();

                      return Container(
                        margin: EdgeInsets.only(bottom: 16.h),
                        padding: EdgeInsets.all(16.w),
                        width: 1.sw,
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
                    SizedBox(height: 16.h),
                  ];
                }).toList(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildBottomButtons(BuildContext context, DynamicFormState state) {
    final isLastStep = state.currentStep == state.formData!.steps.length - 1;
    final isFirstStep = state.currentStep == 0;

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.kBackgroundColor.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          if (!isFirstStep)
            Expanded(
              child: AppButton(
                onPressed: () {
                  context
                      .read<DynamicFormBloc>()
                      .add(const DynamicFormEvent.previousStep());
                },
                text: 'Previous',
                buttonBorderColor: AppColors.kPrimaryColor,
                buttonColor: AppColors.kWhiteColor,
                textStyle: TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          if (!isFirstStep) SizedBox(width: 16.w),
          Expanded(
            child: AppButton(
              onPressed: () {
                if (isLastStep) {
                  context
                      .read<DynamicFormBloc>()
                      .add(const DynamicFormEvent.submitForm());
                } else {
                  context
                      .read<DynamicFormBloc>()
                      .add(const DynamicFormEvent.nextStep());
                }
              },
              text: isLastStep ? 'Submit' : 'Next',
            ),
          ),
        ],
      ),
    );
  }
}
