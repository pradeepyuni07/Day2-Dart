import 'dart:isolate';

import 'package:dart_app/day1practice.dart';

void main() async{
   ReceivePort receivePort=ReceivePort();

      Isolate.spawn(heavyTask, receivePort.sendPort);

    await  receivePort.listen((value){
          print(value);
          receivePort.close();
      });

      double value=20.000;
      print(value.doubleFun());
  // Test<int> obj = Test(1, 2);
  // Test<String> obj1 = Test("pradeep", "meena");

  // print(obj.value1);
  // print(obj.value2);

  // List<user<String,int>>list=[user("pradeep",1),user("meena",2)];
  //
  //   list.forEach((data)=>print("name: ${data.name}\n id:${data.id}"));

     // Progress res=Progress.loading;
     //   print(Progress.values);
     //   print(res.index);
     //
     //     for(var value in Progress.values){
     //         print(value);
     //     }
     // switch(res){
     //   case Progress.error:
     //     print("error");
     //     break;
     //   case Progress.done:
     //     print("done");
     //     break;
     //   default :
     //     print(Progress.loading.message);
     // }
   // String name="pradeep";
   // print(name.capital());
   //
   //  try{
   //    int result=10~/0;
   //    print(result);
   //  } catch (e,stackTrace){
   //    print(e);
   //    print("stackTrace: ${stackTrace}");
   //  }

}

// class Test<P> {
//   P value1;
//   P value2;
//   Test(this.value1, this.value2);
// }

// class user<T1, T2> {
//   T1 name;
//   T2 id;
//
//   user(this.name, this.id);
// }
//   enum Progress{
//      loading("data is loading"),
//     error("Something went wrong"),
//     done("Done successfully");
//
//     final String message;
//     const Progress(this.message);
//   }

  // extension StringExtension on String{
  //
  //      String capital(){
  //        if(isEmpty)return "";
  //
  //         return this[0].toUpperCase()+substring(1);
  //      }
  // }

  void heavyTask(SendPort sendport){

     var res=0;
     for(int i=0;i<10000000000;i++){
       res+=i;
     }

     sendport.send(res);


  }


    extension DoubleExtenstion on double{
          int doubleFun(){
              return this.toInt();
          }
    }