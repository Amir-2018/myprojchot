import 'package:bloctesting/features/authentication/presentation/widgets/subwidgets/saveWidgetButton.dart';
import 'package:bloctesting/features/authentication/presentation/widgets/subwidgets/textFieldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:email_validator/email_validator.dart';

import '../bloc/formvalidation_bloc.dart';




class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2B6353),
        foregroundColor: const Color(0xFFFFFFFF),

      ),
      body:
      BlocProvider(
        create: (context) => ValidationBloc(),
        child:
        Stack(
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
                      const Image(image: AssetImage('login_image.png')),

                      const SizedBox(height: 20,),


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
                      const TextFieldWidget(
                          isTextObscure: true,
                          placeholder: 'Password',
                          iconPrefix: Icon(Icons.lock_outline),
                          colorInputField: Color(0xFFD9D9D9)
                      ),
                      BlocBuilder<ValidationBloc, FormvalidationState>(
                          builder: (context, state) {
                            if (state is PasswordErrorState) {
                              return Text(state.errorMessage,style:const TextStyle(color: Colors.red));
                            }else if(state is PasswordValidState){
                              return Text(state.validMessage,style:const TextStyle(color: Colors.green));
                            }else{
                              return Container() ;
                            }
                          }),
                      const SizedBox(height: 5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/verifyEmail');

                        },
                        child: const Text('Forgot Password ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),

                       SaveWidgetButon(buttonContent: 'Login',onTap: (){}),
                      const SizedBox(height: 15,),
                      Container(
                        //padding : EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0) ,
                        //margin: EdgeInsets.symmetric(horizontal: 90.0,vertical: 0.0),
                        decoration: BoxDecoration(
                        ),

                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Did you have an account ? ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: Text('Signup',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Color(0xFFFEBE50)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
      ),
      ),
    );
  }
}

