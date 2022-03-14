import 'package:flutter/material.dart';
import 'package:log_in/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailControlled=TextEditingController();

  var passwordControlled=TextEditingController();

  var formKey= GlobalKey<FormState>();

  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              //هنا عايزه اعمل validate  ف هلراب الكولوم كله بفورم
              key: formKey,
              //كل صفحه ليها مفتاح معين اول م بفتح بسكرول عندها
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center ,
                  children: [Text(
                        'Log in ',
                        style: TextStyle(
                         fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                          ),
                    SizedBox(
                      height:30.0,
                    ),
                   //
                    defaultFormField(
                        controller: emailControlled,
                        label:'Email',
                        type: TextInputType.emailAddress,
                        prefix: Icons.email,
                        validate: (value){
                          if(value!.isEmpty){
                            return ' email address must be not empty';
                          }
                          return null;
                        }
                    ),
                    SizedBox(
                      height: 30.0,
                    ),

                    defaultFormField(
                        controller: passwordControlled,
                        label:'password',
                        type: TextInputType.visiblePassword,
                        prefix: Icons.lock,
                        suffix:isPassword? Icons.visibility :Icons.visibility_off,
                        isPassword:isPassword,
                        suffixPressed: (){
                          setState(() {
                            isPassword=!isPassword;
                          });
                        },
                        validate: (value){
                          if(value!.isEmpty){
                            return ' pass word address must be not empty';
                          }
                          return null;
                        }
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    defualtButton(
                      text: 'log in ',
                      function: (){
                        if(formKey.currentState!.validate()){
                          print(emailControlled.text);
                          print(passwordControlled.text);
                        }
                      },
                      background: Colors.blue,
                      width: double.infinity,
                      radius: 10.0,


                    ),

                    SizedBox(
                      height: 10.0,

                    ),
                    defualtButton(
                      text: 'log in ',
                      function: (){
                        print(emailControlled.text);
                        print(passwordControlled.text);
                      },
                      background: Colors.blue,
                      width: double.infinity,
                      radius: 10.0,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?'
                        ),
                        TextButton(onPressed: (){},
                          child: Text('Register Now'),

                        ),
                      ],
                    )


                   ],
                ),
            ),
          ),
        ),
      ),


    );



  }
}
