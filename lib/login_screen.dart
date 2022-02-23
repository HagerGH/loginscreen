import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailControlled=TextEditingController();
  var passwordControlled=TextEditingController();
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
                    height: 30.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String value ){
                      print(value);
                    },
                    onChanged: (String value){
                      print(value);
                    },

                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),



                  ),



                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (String value ){
                      print(value);
                    },
                    onChanged: (String value){
                      print(value);
                    },

                    decoration: InputDecoration(
                      labelText: 'password Address',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffix: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),



                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(onPressed:(){
                      print(emailControlled.text);
                      print(passwordControlled.text);
                    },
                      child: Text(
                          'LOG IN ' ,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.white,


                        ),
                      ),



                    ),
                  ),
                  SizedBox(
                    height: 10.0,

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


    );



  }
}
