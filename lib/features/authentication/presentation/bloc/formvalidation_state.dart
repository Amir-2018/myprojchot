part of 'formvalidation_bloc.dart';

@immutable
abstract class FormvalidationState {}

class FormvalidationInitial extends FormvalidationState {}

class SignInInitialState extends FormvalidationState {}

class SignInvalidState extends FormvalidationState {
  final String validMessage;
  SignInvalidState(this.validMessage);
}

class SignInInvalidState extends FormvalidationState {}

class SignErrorState extends FormvalidationState {
  final String errorMessage;
  SignErrorState(this.errorMessage);
}


class PasswordErrorState extends FormvalidationState {
  final String errorMessage;
  PasswordErrorState(this.errorMessage);
}

class PasswordValidState extends FormvalidationState {
  final String validMessage;
  PasswordValidState(this.validMessage);
}
class SignInLoadingState extends FormvalidationState {}