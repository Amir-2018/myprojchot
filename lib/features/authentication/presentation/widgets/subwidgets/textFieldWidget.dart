import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/formvalidation_bloc.dart';

class TextFieldWidget extends StatelessWidget{
  final bool isTextObscure ;
  final String placeholder ;
  final Icon iconPrefix ;
  final Color colorInputField ;
  const TextFieldWidget({
    super.key,
    required this.isTextObscure,
    required this.placeholder,
    required this.iconPrefix,
    required this.colorInputField
  }) ;

  @override
  Widget build(BuildContext context) {

    return   SizedBox(
      width: 348,
      height: 39,
      child:  TextField(
        onChanged: (value) {
          //debugPrint(value);
          if(isTextObscure){
            BlocProvider.of<ValidationBloc>(context)
                .add(SignInClassChangedPasswordEvent(value));
          }else{
            BlocProvider.of<ValidationBloc>(context)
                .add(SignInClassChangedEmailEvent(value));
          }

        },
        obscureText: isTextObscure,
        decoration:  InputDecoration(

          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF4913130F), width: 0.5),

            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: colorInputField,
          hintText: placeholder,
          hintStyle: const TextStyle(
            fontSize: 13,
            color:  Color(0xFF414141),
            fontWeight: FontWeight.bold,
            // fontFamily: SliverAppBar.medium()
          ),
          prefixIcon: iconPrefix,
        ),
      ),
    )

    ;
  }

}