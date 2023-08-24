import 'package:flutter/material.dart';
import 'package:flutter_application_1/lowerplace.dart';
import 'package:flutter_application_1/s1.dart';
import 'package:flutter_application_1/upperplace.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s1 = ref.watch(s1NotifierProvider);

    final button = ElevatedButton(
        onPressed: () {
          final notifier = ref.read(s1NotifierProvider.notifier);
          notifier.updateState();
        },
        child: Text("here"));

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [const LowerPlace(), const UpperPlace(), button]); //
  }
}
