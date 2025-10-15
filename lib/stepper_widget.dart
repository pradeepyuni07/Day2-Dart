import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int curr_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        // stepIconBuilder: (index, state) {
        //   if (state == StepState.complete) return Icon(Icons.check_circle);
        //   return CircleAvatar(child: Text('${index+1}'));
        // },
        connectorThickness: 10,
        stepIconHeight: 40,
        stepIconWidth: 40,

         elevation: 7,
        // type: StepperType.horizontal,
        currentStep: curr_index,

        onStepContinue: () {
          setState(() {
            if (curr_index < 2) {
              curr_index++;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (curr_index > 0) {
              curr_index--;
            }
          });
        },
        steps: [
          Step(
            state: curr_index > 0 ? StepState.complete : StepState.indexed,

            stepStyle:StepStyle(
               connectorThickness: 10,
                boxShadow: BoxShadow(spreadRadius: 10,blurRadius: 5,color: Colors.yellow),
                 border: BoxBorder.all(width: 2,color: Colors.black),
                connectorColor: curr_index==0?Colors.transparent:Colors.grey,
              color:curr_index==0?Colors.red:Colors.green
            ) ,
            isActive: curr_index==0?true:false,
            title: Text("First Step"),
            content: Text("hmm bhai mai first step u"),
          ),
          Step(
            stepStyle:StepStyle(
                  gradient: LinearGradient(colors: [Colors.green,Colors.pink]),
                 indexStyle: TextStyle(color: Colors.white),
                  boxShadow: BoxShadow(spreadRadius: 10,blurRadius: 5,color: Colors.yellow),
                connectorColor: curr_index==1?Colors.transparent:Colors.grey,
                // color:curr_index==1?Colors.red:Colors.green
            ) ,
            isActive: curr_index==1?true:false,
            state: curr_index > 1 ? StepState.complete : StepState.indexed,

            title: Text("Second Step"),
            content: Text("hmm bhai mai Second step u"),
          ),
          Step(
            stepStyle:StepStyle(
                connectorColor: curr_index==2?Colors.transparent:Colors.grey,
                color:curr_index==2?Colors.red:Colors.green
            ) ,
            isActive: curr_index==2?true:false,
          state: StepState.indexed,
            title: Text("Third Step"),
            content: Text("hmm bhai mai Third step u"),
          ),
        ],
      ),
    );
  }
}
