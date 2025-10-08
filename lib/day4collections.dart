void main() {
  // print("Hello world");

  // List<int> list=[1,2,3,4,5,6,7,8,9,10];
  // print(list);
  // var res=list.map((value)=> value*2);
  //   var res=list.where((value)=>value>2);
  //   print(res);

  // List<Map<String, dynamic>> student = [
  //   {"name": "pradeep", "age": 90},
  //   {"name": "lucky", "age": 80},
  // ];

  // var res=student.map((item)=>MapEntry(item["name"], item["age"]+7));
  // var res=student.map((item)=>print(item["age"]));

  // var res=list.reduce(((a,b)=> a+b));

  // bool isTrue=true;
  //
  // List<int> ifList=[1,2,3,4,5,if(isTrue) 7,8,9];
  // print(ifList);
  // print(res);

  // Map<String,dynamic>newMap={"name":"yash","id":90};
  //
  //  print(newMap.keys.toList());
  // print(newMap.values.toList());
  // print(newMap.containsKey("name"));
  // print(newMap.containsValue("yas"));
  // // newMap.remove("name");
  // print(newMap);
  // newMap.removeWhere((key,val)=> val is int && val>80);
  // print(newMap);
  // List<dynamic> list = [1, 2, "pradeep", 7, 8, "yash", "asbbam", ...spreadlist];
  //
  // list.add(90);
  // list.addAll(["", "kapil"]);
  // list.remove(1);
  // list.removeAt(4);
  // list.sort((a, b) {
  //   if (a is int && b is String) return -1;
  //   if (b is int && a is String) return 1;
  //
  //   return a.toString().compareTo(b.toString());
  // });
  //  var res=spreadlist.fold(1, (a,b)=>a+b);
  //
  // print(list);
  // print(res);

  var spreadlist = [10, 10, 10];

  Set<int> set = {1, 2, 2, 2, 4, 5, 6};
  set.remove(5);
  print(set);
  print(spreadlist.toSet());

  Set<int> set1 = {1, 2, 7, 8, 9, 10};
  print(set.union(set1));
  print(set.intersection(set1));
  print(set.difference(set1));
}
