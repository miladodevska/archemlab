import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ARViewerScreen extends StatelessWidget {
  final String title;
  final String modelPath;

  const ARViewerScreen({super.key, required this.title, required this.modelPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ModelViewer(
        src: modelPath,
        alt: "AR Model",
        ar: true, // Enable AR placement
        autoRotate: true,
        cameraControls: true, // allow rotating/zooming in preview
      ),
    );
  }
}
