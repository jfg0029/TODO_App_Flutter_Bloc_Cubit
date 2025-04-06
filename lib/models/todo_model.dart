class TodoModel{
  final String id;
  final String desc;
  final bool completed;

  TodoModel({
    required this.id, 
    required this.desc, 
    this.completed = false});
}