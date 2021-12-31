import 'package:counter_getx/controller/CounterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Other extends StatelessWidget {
  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Clicks value ${_counterController.counter.value}"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back"))
        ],
      ),
    );
  }
}
