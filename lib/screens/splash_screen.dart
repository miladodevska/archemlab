import 'package:archemlab/routes/navigation_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ArchemLab",
              style: TextStyle(
                color: Colors.blue[200],
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go(SCREEN.home.path);
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: EdgeInsets.zero,
                minimumSize: const Size(140, 140),
                backgroundColor: Colors.white, // Inside color
                side: BorderSide(
                  color: Colors.blue[50]!, // Border color
                  width: 4, // Thickness of border
                ),
                elevation: 4, // Optional: adds shadow
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/TestTube.gif',
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
