import 'package:archemlab/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String modelPath;

  const DetailsScreen({
    super.key,
    required this.title,
    required this.modelPath,
  });

  // ✅ Function to open Google Scene Viewer using GitHub-hosted model
  Future<void> openARSceneViewer(String localPath) async {
    final modelUrl = ModelUrlUtils.getGithubModelUrl(localPath);
    final url = 'https://arvr.google.com/scene-viewer/1.0?file=$modelUrl&mode=ar_preferred';
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch Scene Viewer');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Center(
                child: ModelViewer(
                  src: modelPath,
                  alt: "3D Model Preview",
                  ar: false,
                  autoRotate: false,
                  disableZoom: true,
                  cameraControls: true,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                icon: const Icon(Icons.view_in_ar, color: Colors.white),
                label: const Text(
                  "View in AR",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () => openARSceneViewer(modelPath),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
