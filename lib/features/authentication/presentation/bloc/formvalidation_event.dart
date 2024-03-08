part of 'formvalidation_bloc.dart';

@immutable
abstract class FormvalidationEvent {}


class SignInClassChangedEmailEvent extends FormvalidationEvent {
  final String emailValue;
  SignInClassChangedEmailEvent(this.emailValue);
}

class SignInClassChangedPasswordEvent extends FormvalidationEvent {
  final String passwordlValue;
  SignInClassChangedPasswordEvent(this.passwordlValue);
}

class SignInSubmittedEvent extends FormvalidationEvent {
  final String email;
  final String password;
  SignInSubmittedEvent(this.email, this.password);
}