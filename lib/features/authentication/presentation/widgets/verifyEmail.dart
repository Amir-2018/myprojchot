import 'package:bloctesting/features/authentication/presentation/widgets/subwidgets/saveWidgetButton.dart';
import 'package:bloctesting/features/authentication/presentation/widgets/subwidgets/textFieldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/formvalidation_bloc.dart';
class VerifyEmail extends StatefulWidget{
   const VerifyEmail({super.key}) ;
  @override
  State<VerifyEmail> createState() {
    return _VerifyEmailState() ;
  }
}
class _VerifyEmailState extends State<VerifyEmail>{
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          //title: const Text('Chotrana'),
          backgroundColor: const Color(0xFF2B6353),
          foregroundColor: const Color(0xFFFFFFFF),
        ),
        body:
    BlocProvider(
    create: (context) => ValidationBloc(),
    child:
        Center(
          child: Stack(
              children: [
                Container(
                  //color: const Color(0xFF2B6353),
                ),
                Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                        )),
                    Expanded(
                        flex: 9,
                        child: Container(
                          decoration: const BoxDecoration(
                              color:  Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0)
                              )
                          ),
                        )),
                  ],
                ),
                Container(
                  //color: const Color(0xFF2B6353),
                  child:  Center(

                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 54,
                            height: 8,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                color: Color(0xFFD9D9D9)
                            ),
                          ),
                          const SizedBox(height: 100,),
                          const Image(image: AssetImage('verifyEmail.png')),
                          const SizedBox(height: 20,),
                          const TextFieldWidget(
                              isTextObscure: false,
                              placeholder: 'Email',
                              iconPrefix: Icon(Icons.email_outlined),
                              colorInputField: Color(0xFFD9D9D9)
                          ),
                          BlocBuilder<ValidationBloc, FormvalidationState>(
                              builder: (context, state) {
                                if (state is SignErrorState) {
                                  return Text(state.errorMessage,style:const TextStyle(color: Colors.red));
                                }else if(state is SignInvalidState){
                                  return Text(state.validMessage,style:const TextStyle(color: Colors.green));
                                }else{
                                  return Container() ;
                                }
                              }),
                          const SizedBox(height: 20,),
                             SaveWidgetButon(buttonContent: 'Send',
                               onTap:  (){
                                 Navigator.pushNamed(context, '/verifyCode');
                               }
                      ,)
                        ],
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
    ),
      );
  }
}