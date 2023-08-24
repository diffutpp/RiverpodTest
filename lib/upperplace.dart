import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/s1.dart';

class UpperPlace extends ConsumerWidget {
  const UpperPlace({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s1 = ref.watch(s1NotifierProvider);
    String place;
    if (s1 == 0) {
      place = '職場';
    } else {
      place = '自宅';
    }
    return ElevatedButton(onPressed: () {}, child: Text(place));
  }
}
