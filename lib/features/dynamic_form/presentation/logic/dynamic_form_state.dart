part of 'dynamic_form_bloc.dart';

@freezed
class DynamicFormState with _$DynamicFormState {
  const factory DynamicFormState({
    @Default(true) bool isLoading,
    @Default(false) bool isSubmitted,
    @Default(false) bool isValid,
    @Default(0) int currentStep,
    FormData? formData,
    @Default(FormValuesModel()) FormValuesModel formValues,
  }) = _DynamicFormState;
}
