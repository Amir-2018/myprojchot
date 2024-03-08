import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:meta/meta.dart';

part 'formvalidation_event.dart';
part 'formvalidation_state.dart';

class ValidationBloc extends Bloc<FormvalidationEvent, FormvalidationState> {
  ValidationBloc() : super(SignInInitialState()) {
    on<SignInClassChangedEmailEvent>((event, emit) {
      if(event.emailValue==""){
        emit(SignErrorState(""));
      }
      else if (!(EmailValidator.validate(event.emailValue))) {
        emit(SignErrorState("Please enter a valid email address "));
      }else{
        emit(SignInvalidState("Valid email input"));
      }
    });

    on<SignInClassChangedPasswordEvent>((event, emit) {
      if(event.passwordlValue==""){
        emit(PasswordErrorState(""));
      }
      else if (event.passwordlValue.length<7) {
        emit(PasswordErrorState("Please enter a valid password "));
      }else{
        emit(PasswordValidState("Password is valid"));
      }
    });
    /* on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });*/
  }
}
