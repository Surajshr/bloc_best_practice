part of 'dynamic_form_bloc.dart';

@freezed
class DynamicFormEvent with _$DynamicFormEvent {
  const factory DynamicFormEvent.loadForm(DynamicFormModel formData) =
      _LoadForm;
  const factory DynamicFormEvent.updateFormValue(String key, dynamic value) =
      _UpdateFormValue;
  const factory DynamicFormEvent.nextStep() = _NextStep;
  const factory DynamicFormEvent.previousStep() = _PreviousStep;
  const factory DynamicFormEvent.submitForm() = _SubmitForm;
  const factory DynamicFormEvent.resetFormState() = _ResetFormState;
}
