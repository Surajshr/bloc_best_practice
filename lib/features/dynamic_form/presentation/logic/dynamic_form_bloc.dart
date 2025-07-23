import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:varosha_app/features/dynamic_form/data/model/dynamic_form_model.dart';
import 'package:varosha_app/features/dynamic_form/data/model/form_values_model.dart';

part 'dynamic_form_bloc.freezed.dart';
part 'dynamic_form_event.dart';
part 'dynamic_form_state.dart';

class DynamicFormBloc extends Bloc<DynamicFormEvent, DynamicFormState> {
  DynamicFormBloc() : super(const DynamicFormState()) {
    on<_LoadForm>(_onLoadForm);
    on<_UpdateFormValue>(_onUpdateFormValue);
    on<_NextStep>(_onNextStep);
    on<_PreviousStep>(_onPreviousStep);
    on<_SubmitForm>(_onSubmitForm);
    on<_ResetFormState>(_onResetFormState);
  }

  void _onResetFormState(
      _ResetFormState event, Emitter<DynamicFormState> emit) {
    emit(
      state.copyWith(
        formValues: const FormValuesModel(),
        isSubmitted: false,
        isValid: false,
        currentStep: 0,
      ),
    );
  }

  void _onLoadForm(_LoadForm event, Emitter<DynamicFormState> emit) {
    emit(
      state.copyWith(
        formData: event.formData.form,
        currentStep: 0,
        formValues: const FormValuesModel(),
        isLoading: false,
      ),
    );
  }

  void _onUpdateFormValue(
      _UpdateFormValue event, Emitter<DynamicFormState> emit) {
    final updatedValues = state.formValues.toMap();
    updatedValues[event.key] = event.value;
    emit(
      state.copyWith(
        formValues: FormValuesModel.fromMap(updatedValues),
      ),
    );
  }

  void _onNextStep(_NextStep event, Emitter<DynamicFormState> emit) {
    if (state.currentStep < state.formData!.steps.length - 1) {
      emit(
        state.copyWith(
          formValues: FormValuesModel.fromMap(state.formValues.toMap()),
          currentStep: state.currentStep + 1,
        ),
      );
    }
  }

  void _onPreviousStep(_PreviousStep event, Emitter<DynamicFormState> emit) {
    if (state.currentStep > 0) {
      emit(
        state.copyWith(
          currentStep: state.currentStep - 1,
        ),
      );
    }
  }

  void _onSubmitForm(_SubmitForm event, Emitter<DynamicFormState> emit) {
    // Validate all required fields
    bool isValid = true;
    final allInputs = state.formData!.steps
        .expand((step) => step.inputs)
        .where((input) => input.required)
        .toList();

    final formValues = state.formValues.toMap();
    for (final input in allInputs) {
      if (!formValues.containsKey(input.key) ||
          formValues[input.key] == null ||
          formValues[input.key].toString().isEmpty) {
        isValid = false;
        break;
      }
    }

    emit(state.copyWith(
      isSubmitted: true,
      isValid: isValid,
    ));
  }
}
