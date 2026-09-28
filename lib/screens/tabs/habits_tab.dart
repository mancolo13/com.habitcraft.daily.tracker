import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class HabitsTab extends StatefulWidget {
  const HabitsTab({super.key});

  @override
  State<HabitsTab> createState() => _HabitsTabState();
}

class _HabitsTabState extends State<HabitsTab> {
  final List<Map<String, dynamic>> _habits = [
    {"name": "Morning 20m Workout", "streak": 12, "done": true},
    {"name": "Read 15 Pages", "streak": 7, "done": true},
    {"name": "Drink 2L Water", "streak": 21, "done": false},
    {"name": "10m Evening Meditation", "streak": 5, "done": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HabitCraft Matrix'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _habits.length,
        itemBuilder: (ctx, i) {
          final h = _habits[i];
          final done = h['done'] as bool;
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(done ? Icons.check_circle : Icons.radio_button_unchecked, color: done ? AppTheme.primary : AppTheme.textSecondary),
              title: Text(h['name'] as String, style: TextStyle(fontWeight: FontWeight.bold, decoration: done ? TextDecoration.lineThrough : null)),
              subtitle: Text('${h['streak']} Day Streak 🔥', style: const TextStyle(color: AppTheme.secondary)),
              trailing: IconButton(
                icon: Icon(done ? Icons.undo : Icons.check),
                onPressed: () => setState(() => h['done'] = !done),
              ),
            ),
          );
        },
      ),
    );
  }
}
