// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//
// class PickImageDemo extends StatefulWidget {
//   PickImageDemo() : super();
//
//   final String title = "Flutter Pick Image demo";
//
//   @override
//   _PickImageDemoState createState() => _PickImageDemoState();
// }
//
// class _PickImageDemoState extends State<PickImageDemo> {
//   Future<File> imageFile;
//
//   pickImageFromGallery(ImageSource source) {
//     setState(() {
//       imageFile = ImagePicker.pickImage(source: source);
//     });
//   }
//
//   Widget showImage() {
//     return FutureBuilder<File>(
//       future: imageFile,
//       builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
//         if (snapshot.connectionState == ConnectionState.done &&
//             snapshot.data != null) {
//           return Image.file(
//             snapshot.data,
//             width: 300,
//             height: 300,
//           );
//         } else if (snapshot.error != null) {
//           return const Text(
//             'Error Picking Image',
//             textAlign: TextAlign.center,
//           );
//         } else {
//           return const Text(
//             'No Image Selected',
//             textAlign: TextAlign.center,
//           );
//         }
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             showImage(),
//             ElevatedButton(
//               child: Text("Select Image from Gallery"),
//               onPressed: () {
//                 pickImageFromGallery(ImageSource.gallery);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }