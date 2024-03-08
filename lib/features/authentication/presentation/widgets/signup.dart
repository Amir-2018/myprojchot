import 'package:bloctesting/features/authentication/presentation/widgets/subwidgets/saveWidgetButton.dart';
import 'package:bloctesting/features/authentication/presentation/widgets/subwidgets/textFieldWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SignupWidget extends StatelessWidget {
  const SignupWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          //title: const Text('Chotrana'),
          backgroundColor: const Color(0xFF2B6353),
          foregroundColor: const Color(0xFFFFFFFF),

        ),
        body: Center(
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
                        const Image(image: AssetImage('signup.png')),

                        const SizedBox(height: 20,),

                        const TextFieldWidget(
                            isTextObscure: false,
                            placeholder: 'Full Name',
                            iconPrefix: Icon(Icons.email_outlined),
                            colorInputField: Color(0xFFD9D9D9)
                        ),
                        const SizedBox(height: 20,),
                        const TextFieldWidget(
                            isTextObscure: false,
                            placeholder: 'Email',
                            iconPrefix: Icon(Icons.email_outlined),
                            colorInputField: Color(0xFFD9D9D9)
                        ),
                        const SizedBox(height: 20,),
                        const TextFieldWidget(
                            isTextObscure: true,
                            placeholder: 'Password',
                            iconPrefix: Icon(Icons.lock_outline),
                            colorInputField: Color(0xFFD9D9D9)
                        ),

                        const SizedBox(height: 20,),

                         SaveWidgetButon(buttonContent: 'Sign Up',onTap: (){}),
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
                                onTap: (){
                                  Navigator.pop(context);
                                }
                                ,
                                child: Text('Login',
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
      ),);

  }
}
