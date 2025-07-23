import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:varosha_app/core/imports/ui_imports.dart';
import 'package:varosha_app/features/dynamic_form/data/model/dynamic_form_model.dart';
import 'package:varosha_app/features/dynamic_form/presentation/logic/dynamic_form_bloc.dart';
import 'package:varosha_app/widgets/app_text_field.dart';

class InputBuilder extends StatefulWidget {
  final FormInput input;
  final dynamic value;

  const InputBuilder({
    super.key,
    required this.input,
    this.value,
  });

  @override
  State<InputBuilder> createState() => _InputBuilderState();
}

class _InputBuilderState extends State<InputBuilder> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  @override
  void didUpdateWidget(InputBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value?.toString() != _controller.text) {
      _initializeController();
    }
  }

  void _initializeController() {
    final initialValue =
        widget.value?.toString() ?? widget.input.defaultValue?.toString() ?? '';
    _controller = TextEditingController(text: initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.input.type) {
      case 'text':
        return _buildTextField(context);
      case 'dropdown':
        return _buildDropdown(context);
      case 'toggle':
        return _buildToggle(context);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildTextField(BuildContext context) {
    return AppTextField(
      controller: _controller,
      labelText: widget.input.label,
      keyBoardType: widget.input.validation?.numberOnly == true
          ? TextInputType.number
          : TextInputType.text,
      onChanged: (value) {
        // Convert to int if it's a number field
        final finalValue = widget.input.validation?.numberOnly == true
            ? int.tryParse(value)
            : value;
        context.read<DynamicFormBloc>().add(
            DynamicFormEvent.updateFormValue(widget.input.key, finalValue));
      },
      validator: (value) {
        if (widget.input.required && (value == null || value.isEmpty)) {
          return 'This field is required';
        }
        if (widget.input.validation?.numberOnly == true) {
          final number = int.tryParse(value ?? '');
          if (number == null) {
            return 'Please enter a valid number';
          }
        }
        return null;
      },
    );
  }

  Widget _buildDropdown(BuildContext context) {
    final options = widget.input.options ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.input.label,
          style: TextStyle(
            fontFamily: AppConstants.kFontFamily,
            color: AppColors.kTextDisabledColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            height: 16.sp / 12.sp,
            letterSpacing: 0.6,
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.kWhiteColor),
            boxShadow: [
              BoxShadow(
                color: AppColors.kBackgroundColor.withValues(alpha: 0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: DropdownButton<String>(
            value: widget.value as String?,
            isExpanded: true,
            underline: const SizedBox(),
            hint: Text(
              widget.input.label,
              style: TextStyle(
                fontFamily: AppConstants.kFontFamily,
                color: AppColors.kTextDisabledColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                height: 16.sp / 12.sp,
                letterSpacing: 0.6,
              ),
            ),
            items: options.map((option) {
              return DropdownMenuItem(
                value: option,
                child: Text(
                  option,
                  style: TextStyle(
                    fontFamily: AppConstants.kFontFamily,
                    color: AppColors.kTextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    height: 16.sp / 12.sp,
                    letterSpacing: 0.6,
                  ),
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              context.read<DynamicFormBloc>().add(
                  DynamicFormEvent.updateFormValue(widget.input.key, newValue));
            },
          ),
        ),
      ],
    );
  }

  Widget _buildToggle(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.input.label,
            style: TextStyle(
              color: AppColors.kTextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Switch(
          value: (widget.value as bool?) ??
              widget.input.defaultValue as bool? ??
              false,
          onChanged: (newValue) {
            context.read<DynamicFormBloc>().add(
                DynamicFormEvent.updateFormValue(widget.input.key, newValue));
          },
          activeColor: AppColors.kPrimaryColor,
        ),
      ],
    );
  }
}
