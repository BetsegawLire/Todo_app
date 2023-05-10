class Task {
  final name;
  var isDone;

  Task({this.name, this.isDone = false});

  void toggleCheckbox() {
    isDone = !isDone;
  }
}
