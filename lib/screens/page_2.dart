import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controller/tap_controller.dart';
import 'package:getx_practice/widgets/container_button.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller= Get.find();
    return Scaffold(
      body: Center(
        child: ContainerButton(
          onTapContainer: () {
            Get.back();
          },
          title: controller.x.toString(),
        ),
      ),
    );
  }
}
