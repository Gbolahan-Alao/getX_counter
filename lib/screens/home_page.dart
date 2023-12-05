import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/tap_controller.dart';
import 'package:getx_practice/screens/page_2.dart';
import 'package:getx_practice/widgets/container_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [GetBuilder<TapController>(builder: (_){
            return ContainerButton(onTapContainer: (){}, title: controller.x.toString(),);
          }),

              ContainerButton(onTapContainer: (){
                controller.increment();
              },title: 'Tap me',),
              ContainerButton(onTapContainer: (){
                Get.to(()=> const Page2());
              }, title: 'Navigate to Page 2',),
              ContainerButton(onTapContainer: (){},title:'' ,),
              ContainerButton(onTapContainer: (){},title: '',),
            
          ],
        ),
      ),
    );
  }
}
