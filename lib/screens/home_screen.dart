import 'package:archemlab/routes/navigation_constants.dart';
import 'package:archemlab/widgets/reusable_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  ReusableHomeCard(
                    title: 'Категорија 1',
                    imagePath: 'assets/icons/ThreeDots.json',
                    onTap: () {
                      GoRouter.of(context).push(
                        SCREEN.details.path,
                        extra: {
                          'title': 'Категорија 1',
                          'imagePath': 'assets/icons/ThreeDots.json',
                        },
                      );
                    },
                  ),
                  ReusableHomeCard(
                    title: 'Категорија 2',
                    imagePath: 'assets/icons/RightArrow.json',
                    onTap: () {
                      GoRouter.of(context).push(
                        SCREEN.details.path,
                        extra: {
                          'title': 'Категорија 2',
                          'imagePath': 'assets/icons/RightArrow.json',
                        },
                      );
                    },
                  ),
                  // Add more cards here
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
