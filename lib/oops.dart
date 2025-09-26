// class A {
//   // String name;
//   // int rollNo;
//   //
//   // A(this.name,this.rollNo); // default Constructor
//
//   String firstName;
//   String lastName;
//   int roll_no;
//   double percentage;
//
//   A({
//     required this.firstName,
//     required this.lastName,
//     required this.percentage,
//     required this.roll_no,
//   });
//
//   // factory A.fromJson(Map<String, dynamic> json) {
//   //   return A(
//   //     firstName: json["fname"],
//   //     lastName: json["lname"],
//   //     roll_no: json["rollno"],
//   //     percentage: json["percentage"],
//   //   );
//   // }
//   A.fromJson(Map<String, dynamic> json)
//     : firstName = json["fname"],
//       lastName = json["lname"],
//       roll_no = json["rollno"],
//       percentage = json["percentage"];
// }
//
// class B {
//   final String str;
//   final int num;
//
//   const B(this.str, this.num);
// }

// class Pradeep {
//   String str;
//   Pradeep({this.str = "i am string from Pradeep class Constructor"});
//
//   void show1() {
//     print("This is Pradeep class");
//   }
//
//   int overload1(int value, [int? value2]) {
//     if (value2 == null) {
//       return value * value;
//     } else {
//       return value * value2;
//     }
//   }
// }
//
// class Lucky extends Pradeep {
//   Lucky() : super();
//   void show() {
//     print("This is Lucky class ");
//     print(str);
//   }
// }

//
// mixin m1{
//   void display(){
//     print("This is m1 ");
//   }
// }
// mixin m2{
//    void display(){
//       print("This is m2");
//    }
// }
//
// class Pradeep with m1, m2{
//     void show(){
//       print("This is pradeep class");
//     }
// }
//  mixin Lucky on Pradeep{
//
//  }
//   // class Kapil with Lucky{
//   //
//   // }

//  abstract class me {
//   void mujheusekarnapadega() {}
// }
//
// class A extends me {
//   // @override
//   // // void mujheusekarnapadega() {
//   // //   print("class a tujhe interface ne aukat dikha di");
//   // // }
// }

  // class getset{
  //   String _str="";
  //
  //   String get  name => _str;
  //    set  name (String a){
  //      _str=a;
  //
  //   }
  // }

class Test{
     int _num=10;
}

void main() {
    var obj=Test();
    print(obj._num);
    // var obj=getset();
    // obj.name="pradeep";
    // print(obj.name);
    // var obj=A();
    // obj.mujheusekarnapadega();
  // var obj=Pradeep();
  // obj.display();

  // var pradeep_obj=Lucky();
  //  int res= pradeep_obj.overload1(10,100);
  //  print(res);
  // A objName=A("pradeep",50);
  //
  // print(objName.name);
  // print(objName.rollNo);

  // A obj2=A.fromJson({"fname":"pradeep","lname":"Meena","rollno":90,"percentage":90.0});
  //
  // print(obj2.firstName);
  // print(obj2.lastName);
  //
  // print(obj2.roll_no);
  //
  // print(obj2.percentage);

  // B b= B(str:"string", num: 90);
  // B b1= B(str:"string", num: 90);

  // const b = B("string", 90);
  // final b1 =const B("string", 90);
  //
  // print(identical(b, b1));
  //
  // print("${b.num} ,${b.str}");
}
