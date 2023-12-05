import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({super.key, required this.onTapContainer, this.title});
  final void  Function() onTapContainer;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap:onTapContainer ,
      child: Container(
                height: 70,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child:  Center(
                  child: Text(
                    title?? '',
                    style:const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
    );
  }
}