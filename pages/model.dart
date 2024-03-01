class Task {
  late String title;
  late String description;
  late DateTime date;

  Task({
    required this.title,
    required this.description,
    required this.date,
  });

  Task.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        description = json['description'],
        date = DateTime.parse(json['date']);

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'date': date.toIso8601String(),
      };
}