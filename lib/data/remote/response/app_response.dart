class AppResponse<T>{
  String? message;
  int? result;
  T? data;
// vào tab sign in trong postman, an send để trả data ve va sẽ thấy 3 du lieu cna lay
  AppResponse.fromJson(Map<String , dynamic> json , Function fromJsonModel){
    result = json['result'];
    data = fromJsonModel(json['data']);
    message = json['message'];
  }
}

/*
Future<Post> fetchPost() async {
  final response = await http.get("https://jsonplaceholder.typicode.com/posts/1");

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception("Failed to load the post, try again later");
  }
}

class Post {
  final int userID;
  final int id;
  final String title;
  final String body;

  Post({this.userID, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userID: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']
    );
  }
}*/
