import 'package:flutter/material.dart';

class StreambuilderDemo extends StatefulWidget {
  const StreambuilderDemo({super.key});

  @override
  State<StreambuilderDemo> createState() => _StreambuilderDemoState();
}

class _StreambuilderDemoState extends State<StreambuilderDemo> {


  Stream<int> getCount() {
    return Stream.periodic(Duration(seconds: 1), (count) => count++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        initialData: 0,
        stream: getCount(),
        builder: (context, snapshot) {

           if(snapshot.connectionState==ConnectionState.waiting){
             return Center(child: CircularProgressIndicator(color: Colors.green,));
           }
            else if(snapshot.hasData){
              debugPrint("streamHasData..............");
           }
           else if(snapshot.hasError){
               debugPrint("error.......");
           }
          return Center(child: Text("${snapshot.data}"));
        },
      ),
    );
  }
}
