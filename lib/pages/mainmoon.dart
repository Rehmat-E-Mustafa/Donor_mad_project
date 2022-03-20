// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:dotted_border/dotted_border.dart';
// import 'package:image_picker/image_picker.dart';
// // import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Detail Of ITEMS Donated',
//             style: TextStyle(color: Colors.grey),
//           ),
//           centerTitle: true,
//           actions: <Widget>[
//             Padding(
//                 padding: EdgeInsets.only(right: 20.0),
//                 child: GestureDetector(
//                   onTap: () {},
//                   child: Icon(
//                     Icons.close,
//                     size: 26.0,
//                     color: Colors.grey,
//                   ),
//                 )),
//           ],
//           backgroundColor: Colors.white,
//         ),
//         body: const MyCustomForm(),
//       ),
//     );
//   }
// }
//
// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({Key? key}) : super(key: key);
//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }
//
// class MyCustomFormState extends State<MyCustomForm> {
//   // Create a global key that uniquely identifies the Form widget
//   // and allows validation of the form.
//   //
//   // Note: This is a GlobalKey<FormState>,
//   // not a GlobalKey<MyCustomFormState>.
//   final _formKey = GlobalKey<FormState>();
//   int _count = 0;
//   // Future<File> imageFile;
//   // pickImageFromGallery(ImageSource source) {
//   //   setState(() {
//   //     imageFile = ImagePicker.pickImage(source: source);
//   //   });
//   }
//   // List _images = [];
//   // File? imageFile;
//   // final picker = ImagePicker();
//   // chooseImage() async {
//   //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//   //   if (pickedFile != null) {
//   //     setState(() {
//   //       _images.add(File(pickedFile.path));
//   //     });
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     // Build a Form widget using the _formKey created above.
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
//             child: TextFormField(
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter some text';
//                 }
//                 return null;
//               },
//               decoration: const InputDecoration(
//                 border: UnderlineInputBorder(),
//                 labelText: ' Item Details',
//               ),
//             ),
//           ),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
//               child: TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//                 decoration: const InputDecoration(
//                   border: UnderlineInputBorder(),
//                   labelText: ' Pick Up Location',
//                 ),
//               )),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
//               child: TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//                 decoration: const InputDecoration(
//                   border: UnderlineInputBorder(),
//                   labelText: ' Pick Up Date',
//                 ),
//               )),
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
//               child: TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//                 decoration: const InputDecoration(
//                   border: UnderlineInputBorder(),
//                   labelText: ' Preffered Time',
//                 ),
//               )),
//
//           //__________________//
//           Padding(
//               padding: EdgeInsets.only(left: 0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Text("No. of Items: ${_count}"),
//                   FloatingActionButton(
//                     child: Icon(Icons.remove),
//                     onPressed: () {
//                       setState(() {
//                         if (_count > 0) {
//                           _count--;
//                         }
//                       });
//                     },
//                   ),
//                   FloatingActionButton(
//                     child: Icon(Icons.add),
//                     onPressed: () {
//                       setState(() {
//                         _count++;
//                       });
//                     },
//                   )
//                 ],
//               )),
//
//           //________________//
//           // Padding(
//           //   padding: EdgeInsets.all(10.0),
//           //   child: Column(
//           //     children: [
//           //       Text('Photos:',
//           //           style: TextStyle(
//           //               fontWeight: FontWeight.bold, color: Colors.grey)),
//           //        StaggeredGridView.countBuilder(
//           //         crossAxisCount: _images.length + 1,
//           //         itemBuilder: (BuildContext context, index) {
//           //           return index == _images.length
//           //               ? GestureDetector(
//           //                   onTap: () {
//           //                     chooseImage();
//           //                   },
//           //                   child: Container(
//           //                     child: DottedBorder(
//           //                       color: Colors.grey,
//           //                       strokeWidth: 2,
//           //                       radius: Radius.circular(8),
//           //                       dashPattern: [8, 4],
//           //                       child: ClipRRect(
//           //                         child: Container(
//           //                           width: double.infinity,
//           //                           height: double.infinity,
//           //                           child: Icon(Icons.add, color: Colors.grey),
//           //                         ),
//           //                       ),
//           //                     ),
//           //                   ),
//           //                 )
//           //               : Container(
//           //                   decoration: BoxDecoration(
//           //                     borderRadius: BorderRadius.circular(8),
//           //                     color: Colors.grey,
//           //                     image: DecorationImage(
//           //                       image: FileImage(_images[index]),
//           //                       fit: BoxFit.cover,
//           //                     ),
//           //                   ),
//           //                 );
//           //         },
//           //         // ignore: unnecessary_new
//           //         staggeredTileBuilder: (int index) => new StaggeredTile.count(
//           //           index == 0 ? 2 : 1, index == 0 ? 2 : 1),
//           //         mainAxisSpacing: 3,
//           //         crossAxisSpacing: 3,
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           DottedBorder(
//             color: Colors.black,
//             strokeWidth: 1,
//             child:
//
// //Open gallery
//
//           ),
//
//           //_____________________//
//
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 // Validate returns true if the form is valid, or false otherwise.
//                 if (_formKey.currentState!.validate()) {
//                   // If the form is valid, display a snackbar. In the real world,
//                   // you'd often call a server or save the information in a database.
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text('Processing Data...'),
//                       backgroundColor: Colors.blueAccent,
//                     ),
//                   );
//                 }
//               },
//               child: const Text('Submit'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }