import 'package:counter_getx/controller/CounterController.dart';
import 'package:counter_getx/screen/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Clicks: ${counterController.counter.value}"),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Other());
                  },
                  child: Text("Open other screen")),
            ],
          )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              counterController.interement();
            },
            child: Icon(Icons.add),
          ),
          ElevatedButton(
            onPressed: () {
              counterController.decrement();
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
