import 'dart:io';

void positional(int age, String name) {
  print("$age, $name");
}

void optional(int num, [int? a]) {
  print("$num, $a");
}

void defaultFun(String str, [String? str2 = "optional"]) {
  print("$str,$str2");
}

void named({required String name, required int age}) {
  print("$name,$age");
}

int arrow(int value) => value * value;

int factorial(int n) {
  if (n <= 1) return 1;

  return n * factorial(n - 1);
}

void main() {
  positional(10, "pradeep");

  optional(10000);
  optional(1000000000, 100);

  defaultFun("yunicorn", "group");
  defaultFun("hello");

  named(name: "pradeep", age: 23);

  int res = arrow(10);
  print(res);

  print(factorial(5));

  //var
  // var name="pradeep";
  // print(name);
  // name="meena";  //allow
  // print(name);

  //dynamic
  // dynamic Name="Pradeep";
  // print(Name);
  // print(Name.runtimeType);

  // Name=100; //allow
  // print(Name);
  // print(Name.runtimeType);

  // final int a =10;
  // print(a);
  //  a=80;  not allow

  // const String str1="this is String";
  // print(str1);
  //  not allow str1="this is String";

  // int num1=50;
  // print(num1);
  //
  // double num2=30;
  // print(num2);

  // loops

  //while
  //  int n=5;
  // while(true){
  //    n--;
  //    print(n);
  // }

  //for loop
  //     for(int i=5;i>=0;i--){
  //          print(i);
  //     }

  // do while
  // int i=0;
  //
  // do{
  //   print(i);
  //   i++;
  // }while(i<=5);

  //  for Each it is a fuctional way to iterate element

  // List<int>numList=[1,2,3,5,5,5];
  // numList.forEach((value){
  //     print(value+5);
  //   });

  // List<String>strList=["pradeep ","Meena"];
  //
  // for(var key in strList){
  //   print(key);
  // }

  //if/else

  // print("Enter a age:");
  // int age = int.parse(stdin.readLineSync()!);
  //
  // if(age>18){
  //
  //   if(age<18){
  //      print("not eligible for vote");
  //   }
  //  else if(age==18){
  //     print("voting first Time");
  //   }else if(age>18 ){
  //     print("voting ....");
  //   }
  // }

  //switch

  // print("Enter a day:");
  // String? day = stdin.readLineSync();
  //
  // switch(day){
  //   case "Mon":
  //   print("Start of week");
  //   break;
  //   case "Tues":
  //     print("second day of week");
  //   break;
  //   case "Wed":
  //     print("Third day of week");
  //     break;
  //   case "Thus":
  //     print("Fourth day of week");
  //     break;
  //   case "Fri":
  //     print("Fifth day of week");
  //     break;
  //   case "Sat":
  //     print("Six day of week");
  //     break;
  //   case "Sun":
  //     print("Seventh day of week");
  //     break;
  //     default: print("not a week day");
  // }

  //Null safety

  // int a=10;
  // print(a);   //valid
  // int b=null;
  // print(b);  not allow

  // ?

  // int a;
  // print(a);  not allow

  // int ? a;
  // print(a);

  //nullable assertion
  // int? a;
  // print(a!);

  // int x=100;
  //  print(x!);

  //null aware

  // String ?str;
  // print(str??"value is null");

  //break and continue;

  // List<int>list=[1,2,60,67,90,80];
  //
  // for(var key in list){
  //     if(key%2==0){
  //        print("skip $key");
  //        continue;
  //     }
  //     if(key==90){
  //       break;
  //     }
  //     print(key);
  // }

  //List
  // List<int>list=[1,2,3,4,5,];
  //   print(list);

  // List<dynamic> list1 = [];
  // list1.add(1);
  // list1.add("string");
  //
  // print(list1);

  // var list2 = <double>[];
  // list2.add(70);
  // list2.add(80);
  // list2.add(90);
  // print(list2);

  // var list3=List.filled(5, 1);
  // print(list3);

  // var list4=List.generate(10, (index){
  //      print("${index*2 } ");
  // });
  // var list5 = [1, 2, 3];
  // list5.add(4);
  // list5.addAll([5,6,7,8]);
  // list5.removeAt(2);
  // list5.remove(6);
  // print(list5.reversed);
  //
  //  list5.add(9);
  //  // list5.removeLast();
  // // list5.removeWhere((value)=>  value>3);
  // // print( list5.indexed);
  // print(list5.first);
  // print(list5.last);
  //
  // var map=list5.asMap().entries;
  // for(var item in map){
  //   print("value =${item.value}");
  // }

  // list5.sort();
  // print(list5);
  // list5.sort((a,b)=> b.compareTo(a));
  // print(list5);

  // Normal Map
  Map<String, int> marks = {"Math": 90, "Science": 85, "English": 92};

  print(marks);

  var emptyMap = <String, String>{};
  print(emptyMap);

  var student = {"name": "Pradeep", "age": 22};

  print(student["name"]);
  print(student["age"]);
  print(student.containsKey("name"));
  print(student.containsValue(22));

  student["lastname"] = "meena";
  print(student);
}
