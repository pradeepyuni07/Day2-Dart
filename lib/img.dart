// import 'package:flutter/material.dart';
//
// class Imgs extends StatefulWidget {
//   const Imgs({super.key});
//
//   @override
//   State<Imgs> createState() => _ImgState();
// }
//
// class _ImgState extends State<Imgs> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(title: Text("BoxFit Demo")),
//       // body: Padding(
//       //   padding: const EdgeInsets.all(8.0),
//       //   child: SingleChildScrollView(
//       //     child: Column(
//       //       children: [
//       //         Container(
//       //           height: 350,
//       //
//       //           width: 350,
//       //           color: Colors.green,
//       //           child: Image.network(
//       //             "https://th.bing.com/th/id/OIP.IDq8cZVcGfgwgkR1Bt0RywHaEo?w=291&h=180&c=7&r=0&o=7&cb=12&pid=1.7&rm=3",
//       //
//       //             // fit: BoxFit.contain,
//       //             // alignment: Alignment.bottomLeft,
//       //             // color: Colors.red,
//       //             // isAntiAlias: true,
//       //             //  scale: 5.5,
//       //             //  filterQuality: FilterQuality.high,
//       //             loadingBuilder: (context, child, progress) {
//       //               if (progress == null) return child;
//       //               return Center(child: CircularProgressIndicator());
//       //             },
//       //             color: Colors.amber,
//       //             colorBlendMode: BlendMode.modulate,
//       //             // width: 200,
//       //             // height: 200,
//       //             scale: 1.2,
//       //           ),
//       //         ),
//       //
//       //         // 1️⃣ BoxFit.fill
//       //         //   Container(
//       //         //   height: 350,
//       //         //   width: 350,
//       //         //   color: Colors.green,
//       //         //   child: Image(
//       //         //     image: AssetImage(
//       //         //       "assets/images/img1.jpg",
//       //         //       // scale can be provided here if needed
//       //         //     ),
//       //         //     color: Colors.amber,
//       //         //     colorBlendMode: BlendMode.modulate,
//       //         //     width: 200,
//       //         //     height: 200,
//       //         //     fit: BoxFit.cover,
//       //         //   ),
//       //         // ),
//       //         SizedBox(height: 10),
//       //
//       //         // 2️⃣ BoxFit.contain
//       //         Container(
//       //           height: 350,
//       //
//       //           width: 350,
//       //
//       //           color: Colors.blue[200],
//       //           child: Image.asset(
//       //             "assets/images/img2.jpg",
//       //             fit: BoxFit.contain,
//       //             repeat: ImageRepeat.repeat,
//       //             // alignment: Alignment.bottomRight,
//       //           ),
//       //         ),
//       //         SizedBox(height: 10),
//       //
//       //         // 3️⃣ BoxFit.cover
//       //         Container(
//       //           height: 350,
//       //
//       //           width: 350,
//       //           color: Colors.orange[200],
//       //           child: Image.asset(
//       //             "assets/images/img1.jpg",
//       //             fit: BoxFit.fill,
//       //             // matchTextDirection: true,
//       //             frameBuilder: (context, child, frame, wasSync) {
//       //               if (frame == null) {
//       //                 return Center(
//       //                   child: CircularProgressIndicator(),
//       //                 ); // loading
//       //               }
//       //               return AnimatedOpacity(
//       //                 opacity: 1.0,
//       //                 duration: Duration(seconds: 3),
//       //                 child: child,
//       //               );
//       //             },
//       //             errorBuilder: (context, error, stackTree) {
//       //               return Icon(Icons.error);
//       //             },
//       //           ),
//       //         ),
//       //         SizedBox(height: 10),
//       //
//       //         // 4️⃣ BoxFit.fitWidth
//       //         Container(
//       //           height: 350,
//       //
//       //           width: 350,
//       //           color: Colors.purple[200],
//       //           child: Image.asset(
//       //             "assets/images/img2.jpg",
//       //             fit: BoxFit.fitWidth,
//       //           ),
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//
//
//         body: Center(
//             child: Text("data"),
//         ),
//     );
//   }
// }

// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class Imgs extends StatefulWidget {
//   const Imgs({super.key});
//
//   @override
//   State<Imgs> createState() => _ImgsState();
// }
//
// class _ImgsState extends State<Imgs> {
//   Uint8List? imageBytes;
//   bool loading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchImage();
//   }
//
//   Future<void> fetchImage() async {
//     try {
//       final response = await http.get(Uri.parse(
//           "https://th.bing.com/th/id/OIP.IDq8cZVcGfgwgkR1Bt0RywHaEo?w=291&h=180&c=7&r=0&o=7&cb=12&pid=1.7&rm=3"));
//
//       if (response.statusCode == 200) {
//         setState(() {
//           imageBytes = response.bodyBytes; // Uint8List
//           loading = false;
//         });
//       } else {
//         print("Failed to load image: ${response.statusCode}");
//         setState(() {
//           loading = false;
//         });
//       }
//     } catch (e) {
//       print("Error: $e");
//       setState(() {
//         loading = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Image.memory Demo")),
//       body: Center(
//         child: loading
//             ? const CircularProgressIndicator()
//             : imageBytes != null
//             ? Image.memory(
//           imageBytes!,
//           width: 300,
//           height: 200,
//           fit: BoxFit.cover,
//         )
//             : const Text("Failed to load image"),
//       ),
//     );
//   }
// }
//


// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:cached_network_image/cached_network_image.dart';
//
// class Imgs extends StatefulWidget {
//   const Imgs({super.key});
//
//   @override
//   State<Imgs> createState() => _ImgsState();
// }
//
// class _ImgsState extends State<Imgs> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Image.memory Demo")),
//       body: Center(
//            child: (
//                 CachedNetworkImage(
//                   imageUrl: "https://th.bing.com/th/id/OIP.IDq8cZVcGfgwgkR1Bt0RywHaEo?w=291&h=180&c=7&r=0&o=7&cb=12&pid=1.7&rm=3",
//                    placeholder: (context,url)=>Center(child: CircularProgressIndicator()),
//                    errorWidget: (context,url,error)=>Icon(Icons.error),
//                     fadeInCurve: Curves.easeInOut,
//                      fadeInDuration: Duration(seconds: 3),
//                      fadeOutDuration: Duration(seconds: 3),
//                       imageBuilder: (context,imageProvider){
//                        return Container(
//                           width: 300,
//                           height: 200,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             image: DecorationImage(
//                               image: imageProvider,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         );
//                       },
//                   //
//                   // progressIndicatorBuilder: (context, url, progress) {
//                   //   double? value;
//                   //   if (progress.totalSize != null) {
//                   //     value = progress.downloaded / progress.totalSize!;
//                   //   }
//                   //   return Center(
//                   //     child: CircularProgressIndicator(
//                   //       value: value, // if null, shows indeterminate
//                   //       color: Colors.blue,
//                   //     ),
//                   //   );
//                   // },
//                   )
//
//            ),
//       )
//     );
//   }
// }
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imgs extends StatefulWidget {
  const Imgs({super.key});

  @override
  State<Imgs> createState() => _ImgsState();
}

class _ImgsState extends State<Imgs> {
  File? _image;
  final ImagePicker imagePicker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? imgPath = await imagePicker.pickImage(source: ImageSource.gallery);
    if (imgPath != null) {
      setState(() {
        _image = File(imgPath.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Picker Demo")),
      body: Center(
        child: _image == null
            ? const Text("No image selected")
            : Image.file(_image!, width: 300, height: 300, fit: BoxFit.cover),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        child: const Icon(Icons.photo),
      ),
    );
  }
}
