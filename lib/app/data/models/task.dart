import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String title;
  final int icon;
  final String color;
  final List<dynamic>? todos;
  const Task(
      {required this.title,
      required this.color,
      required this.icon,
      this.todos});

  Task copyWith(
          {String? title, int? icon, String? color, List<dynamic>? todos}) =>
      Task(
          title: title ?? this.title,
          color: color ?? this.color,
          icon: icon ?? this.icon,
          todos: todos ?? this.todos);

  factory Task.fromJson(Map<String, dynamic> json) => Task(
      title: json['title'],
      color: json['color'],
      icon: json['icon'],
      todos: json['todos']);

  Map<String, dynamic> toJson() => {
        'title': title,
        'color': color,
        'icon': icon,
        'todos': todos,
      };

  @override
  List<Object?> get props => [title, color, icon];
}
