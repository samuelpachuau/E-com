import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  
  final Function()? onTap;

  const MyButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding:const EdgeInsets.all(25),
        margin:const EdgeInsets.symmetric(horizontal:30),
        decoration: BoxDecoration(color: Colors.green[100],
        borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child:Text(
            'Sign In',
            style: TextStyle(
            fontSize: 18,
            fontWeight:FontWeight.bold ),),),
      ),
    );
  }
}