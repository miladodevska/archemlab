import 'package:archemlab/routes/navigation_constants.dart';
import 'package:archemlab/utils/utils.dart';
import 'package:archemlab/widgets/reusable_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'Добредојдовте во ArchemLab',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.builder(
                    itemCount: Utils().categories.length, // ✅ Use the list from utils
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      final category = Utils().categories[index];
                      return ReusableHomeCard(
                        title: category['title']!,
                        imagePath: category['icon']!,
                        onTap: () {
                          GoRouter.of(context).push(
                            SCREEN.details.path,
                            extra: {
                              'title': category['title']!,
                              'modelPath': category['model']!, // modelPath for 3D
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               const SizedBox(height: 20),
//               const Text(
//                 '3D Model Test',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 20),

//               // Test ModelViewer
//               Expanded(
//                 child: ModelViewer(
//                   src: 'assets/3dmodels/chair.glb', // make sure this exists
//                   alt: "Test Model",
//                   autoRotate: true,
//                   cameraControls: true,
//                   ar: true,
//                   disableZoom: false,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
