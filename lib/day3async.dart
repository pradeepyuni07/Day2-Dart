import 'dart:io';

class Pradeep {
  void show() {
    print("This is casacade");
  }

  Stream<int> numbers() async*{
      for(int i=0;i<=5;i++){
        yield i;
       await  Future.delayed(Duration(seconds: 2));
      }
  }
  // Future<String> getData() async {
  //    return await  Future.delayed(Duration(milliseconds: 100), () {
  //     return "this is return by future ";
  //   });
  // }
  // Future<String> fetchSlow(){
  //   return Future.delayed(Duration(seconds: 5),(){
  //        return "slow data";
  //   });
  // }

  // Future<List<dynamic>> waitData() async{
  //    return  await Future.wait([
  //         Future.delayed(Duration(seconds: 3),()=>"data1"),
  //         Future.delayed(Duration(seconds: 1),()=>"data2"),
  //         Future.delayed(Duration(seconds: 4),()=>"data3"),
  //   ]);
}

// Future<dynamic> anyData() {
//   var data = Future.any([
//     Future.delayed(Duration(seconds: 3), () => "dsd"),
//     Future.delayed(Duration(seconds: 1), () => "dfsfsdsdfs"),
//   ]);
//
//   return data;
// }
// Future<String> task1() async {
//   await Future.delayed(Duration(seconds: 2));
//   return "Task 1";
// }
//
// Future<String> task2() async {
//   await Future.delayed(Duration(seconds: 2));
//   return "Task 2";
// }
//
//   void checkException() {
//     try {
//       int a = 10 ~/ 0;
//       throw Exception();
//     } on FormatException {
//       print("this is formate exception");
//     } on FileSystemException {
//       print("this is File exception");
//     } on IntegerDivisionByZeroException catch (e) {
//       print(e);
//     } finally {
//       print("This is always called");
//     }
//   }

void main() async {
  var obj = Pradeep()..numbers().listen((value)=>print(value));

  // List<int>? list1=[567];
  // var list2 = [0, ...list1, 4];
  // print(list2);


  // obj.checkException();
  //   var t1 =  obj.task1();
  // var t2 =obj.task2();
  //
  // print(await t1);
  // print(await t2);
  //   Future.microtask(()=>print("i was enter first in the queue"));
  // Future.microtask(()=>print("i was enter second in the queue"));
  //
  //
  // print("i will print first");

  //
  // Future<List<dynamic>> list = obj.waitData();
  //    print(list.then((value)=>print(value)));

  //  Future value=Future.value(10);
  //  value.then((value)=>print(value));
  //
  //   Future.delayed((Duration(seconds: 5)),(){
  //       print("this is print after 2 second");
  //   });
  //
  //   Future.error("error").catchError((e)=>print(e));
  //   obj.getData().then((data)=> print(data)).catchError((e)=>print("$e")).whenComplete(()=>print("on Completed call"));
  //
  // obj.fetchSlow()
  //      .timeout(Duration(seconds: 2))
  //      .then((value) => print(value)).catchError((e)=>print(e));

  //   print("this print before future");

  // obj.getData().then((value){
  //     print(value);
  //   });

  // await obj.getData().then((value){
  //      print(value);
  //    });

  // obj.getData().then((value){
  //     print(value);
  //   }).catchError((e)=>print(e)).whenComplete((){
  //     print("this is run after complete");
  // });

  // print("this print after future");
}
