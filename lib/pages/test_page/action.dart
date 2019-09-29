import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TestAction { action }

class TestActionCreator {
  static Action onAction() {
    return const Action(TestAction.action);
  }
}
