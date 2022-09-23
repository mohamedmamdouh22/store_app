import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  CustomButton({required this.onpressed,required this.text});
  String text;
  VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.all(size.width/15),
      child: Container(
        width: double.infinity,
        margin: EdgeInsetsDirectional.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xff2a3b5c),
                Color(0xff3b5198),
              ]
          ),
        ),
        child: MaterialButton(

          height: 55,
          onPressed:onpressed,
          child: Text(text,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Times'),),

        ),
      ),
    );
  }
}
