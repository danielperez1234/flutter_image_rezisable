import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PhotoViewScaleStateController actualScale = PhotoViewScaleStateController();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
      onDoubleTap: () {
        actualScale.reset();
      },
      child: PhotoView(
        imageProvider: NetworkImage(
          "https://img.freepik.com/foto-gratis/gato-rojo-o-blanco-i-estudio-blanco_155003-13189.jpg",
        ),
        minScale: 1.0,
        scaleStateController: actualScale,
      ),
    ));
  }
}
