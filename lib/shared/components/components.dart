import 'package:flutter/material.dart';
Widget defualtButton({
   required double width,
  //بشوف اي الاستخدام الشائع للزر بتاعي واحطه ريكويرد يعني لازم يبقي مطلوب اديله قيمه  بدل م ف كل مره احط اللون والعرض
  required  Color background,
  required VoidCallback  function,
  //ال anomanac fun بتكون اوبجيكت من فانكيشن
  required String text,
  //كمان النص اللي جوا الزر هيتغير من زر لزر اخر
  bool isUpperCase =true,
    required double radius,
})=> Container(
  width:width,
  child: MaterialButton(
    onPressed: function,
    child: Text(
       isUpperCase ? text.toUpperCase() :text ,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15.0,
        color: Colors.white,


      ),
    ),



  ),
  decoration: BoxDecoration(
    borderRadius:BorderRadius.circular(
      radius,
    ),
    color: background,
  ),




























);
Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit, //Add question mark
  Function? onChange, //Add question mark
  required Function validate,
  required var label,
  required IconData prefix,
  bool isPassword=false,
  IconData ? suffix,
   VoidCallback? suffixPressed,
})=>TextFormField(
controller:  controller,
keyboardType: type,
obscureText: isPassword,
onFieldSubmitted: onSubmit != null? onSubmit() : null,
onChanged:onChange != null? onChange() : null, //do null checking
  validator: (value) {
    return validate(value);
  },
decoration: InputDecoration(
labelText: label,
prefixIcon: Icon(prefix),
suffix: suffix !=null? IconButton(
  onPressed: suffixPressed,
  icon:   Icon(

      suffix,
  
  ),
) :null ,
border: OutlineInputBorder(),



),
);


