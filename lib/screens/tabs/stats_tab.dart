import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Habit Metrics'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text('14 Days', style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  const SizedBox(height: 6),
                  const Text('Longest Active Streak', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Completion Rate', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  const LinearProgressIndicator(value: 0.85, color: AppTheme.primary, backgroundColor: Colors.white12),
                  const SizedBox(height: 8),
                  const Text('85% of planned habits fulfilled this month', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
