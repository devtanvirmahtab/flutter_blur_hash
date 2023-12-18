// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image/image.dart' as img;
//
//
// class NextPage extends StatelessWidget {
//   const NextPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Blur Image Example')),
//         body: Center(
//           child: FutureBuilder<ui.Image>(
//             future: blurImage('assets/sample_image.jpg', 10.0), // Change the image path and blur radius as needed
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return Image(
//                   image: MemoryImage(Uint8List.fromList(snapshot.data!.getBytes())),
//                 );
//               } else {
//                 return CircularProgressIndicator();
//               }
//             },
//           ),
//          ),
//       ),
//     );
//   }
//
//   Future<ui.Image> blurImage(String imagePath, double sigma) async {
//     ByteData data = await rootBundle.load(imagePath);
//     List<int> bytes = data.buffer.asUint8List();
//     img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;
//     img.Image blurredImage = img.copyResize(image, width: image.width, height: image.height);
//     blurredImage = img.blur(blurredImage, sigma: sigma);
//     return blurredImage.toUIImage();
//   }
// }
