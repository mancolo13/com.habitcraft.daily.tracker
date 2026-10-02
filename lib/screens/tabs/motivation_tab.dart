import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class MotivationTab extends StatelessWidget {
  const MotivationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daily Principle'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                children: const [
                  Icon(Icons.format_quote_rounded, size: 48, color: AppTheme.primary),
                  SizedBox(height: 16),
                  Text(
                    '“We are what we repeatedly do. Excellence, then, is not an act, but a habit.”',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, height: 1.4),
                  ),
                  SizedBox(height: 16),
                  Text('— Will Durant', style: TextStyle(fontWeight: FontWeight.bold, color: AppTheme.primary)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
