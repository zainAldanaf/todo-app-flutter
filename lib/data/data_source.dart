import '../models/task.dart';

class DataSource {
  static List<Task> tasks = [
    Task("study to the exam", true),
    Task("take my vitamens", true),
    Task("Go to university", true),
    Task("study last lectures", false),
    Task("submit flutter assignment", false),
    Task("pray"),
    Task("having lunch"),
  ];
}
