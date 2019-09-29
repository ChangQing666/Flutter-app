import 'package:fish_redux/fish_redux.dart';

class TestState implements Cloneable<TestState> {

  @override
  TestState clone() {
    return TestState();
  }
}

TestState initState(Map<String, dynamic> args) {
  return TestState();
}
