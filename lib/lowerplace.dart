import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/s1.dart';

class LowerPlace extends ConsumerWidget {
  const LowerPlace({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s1 = ref.watch(s1NotifierProvider);
    String place;
    if (s1 == 0) {
      place = '自宅';
    } else {
      place = '職場';
    }
    return ElevatedButton(onPressed: () {}, child: Text(place));
  }
}
