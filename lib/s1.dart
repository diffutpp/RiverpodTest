import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's1.g.dart';

@riverpod
class S1Notifier extends _$S1Notifier {
  @override
  String build() {
    return "hello";
  }

  void updateState() {
    final oldState = state;

    final newState = "${oldState}i";

    state = newState;
  }
}
