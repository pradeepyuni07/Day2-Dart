import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImgPicker extends StatefulWidget {
  const ImgPicker({super.key});

  @override
  State<ImgPicker> createState() => _ImgPickerState();
}

class _ImgPickerState extends State<ImgPicker> {
       File? imgFile;
    final Img_pick=ImagePicker();
      Future<void> getImage() async{
           final XFile? imagePath=await Img_pick.pickImage(source: ImageSource.camera);
           if (imagePath != null) {
             setState(() {
               imgFile = File(imagePath.path);
             });
           }
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                     setState(() {
                         getImage();
                     });
                },
                    child: Text("selecte Image")),

                SizedBox(height: 40,),
              imgFile!=null?Image.file(imgFile!,width: 300,height: 300,):const Text("No image selected"),
              ],
            ),
          ),
        ),

    );
  }
}
