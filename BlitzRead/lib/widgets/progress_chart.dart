import 'package:flutter/material.dart';

class ProgressChart extends StatelessWidget {
  final double wpm;
  final double percentComplete;

  const ProgressChart({
    super.key,
    required this.wpm,
    required this.percentComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Скорость чтения: ${wpm.toStringAsFixed(0)} слов/мин',
              style: const TextStyle(fontSize: 16, color: Colors.white)),
          const SizedBox(height: 8),
          Text('Завершено: ${(percentComplete * 100).toStringAsFixed(1)}%',
              style: TextStyle(fontSize: 14, color: Colors.grey[300])),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: percentComplete,
            backgroundColor: Colors.grey[800],
            color: Colors.cyanAccent,
            minHeight: 8,
          ),
        ],
      ),
    );
  }
}