import 'package:archemlab/routes/navigation_constants.dart';
import 'package:archemlab/utils/utils.dart';
import 'package:archemlab/widgets/reusable_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final utils = Utils();

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
                    itemCount: utils.categories.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    itemBuilder: (context, index) {
                      final category = utils.categories[index];
                      return ReusableHomeCard(
                        title: category['title']!,
                        imagePath: category['thumbnail']!,
                        onTap: () {
                          GoRouter.of(context).push(
                            SCREEN.details.path,
                            extra: {
                              'title': category['title']!,
                              'modelPath': category['model']!,
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
