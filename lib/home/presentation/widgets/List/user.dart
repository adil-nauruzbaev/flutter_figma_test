class User {
    User({
        required this.id,
        required this.title,
    });

    int id;
    String title;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
    };
}
