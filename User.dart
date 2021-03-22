


void main() {
  

  var user = User.fromJson({"id": 638,
    "isLogged": true,
    "username": "sameh mourad",
    "gender": "male",
    "canComment": true,
    "photo": "https://bassthalk.ams3.digitaloceanspaces.com/8f72a318793909dc/26804342_159620844679358_2108177390195878876_n.jpg",
    "email": "samehmourad05@gmail.com",
    "level": 1,
    "semester": "first",
    "country": "Egypt",
    "enabled": true,
    "pushTokens": ["hello"],
    "role": "student",
    "createdAt": "2020-09-07T14:54:59.766Z",
    "updatedAt": "2021-02-25T11:07:40.987Z"});

  print(user); // because we override toString Method

}




class User {
  int id;
  bool isLogged;
  String username;
  String gender;
  bool canComment;
  String photo;
  String email;
  int level;
  String semester;
  String country;
  bool enabled;
  List<String> pushTokens;
  String role;
  String createdAt;
  String updatedAt;

  User(
      {this.id,
      this.isLogged,
      this.username,
      this.gender,
      this.canComment,
      this.photo,
      this.email,
      this.level,
      this.semester,
      this.country,
      this.enabled,
      this.pushTokens,
      this.role,
      this.createdAt,
      this.updatedAt});

  User.admin(Map<String, dynamic> json){
    id = json['id'];
    isLogged = json['isLogged'];
    username = json['username'];
    gender = json['gender'];
    canComment = json['canComment'];
    photo = json['photo'];
    email = json['email'];
    level = json['level'];
    semester = json['semester'];
    country = json['country'];
    enabled = json['enabled'];
    pushTokens = json['pushTokens'].cast<String>();
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isLogged = json['isLogged'];
    username = json['username'];
    gender = json['gender'];
    canComment = json['canComment'];
    photo = json['photo'];
    email = json['email'];
    level = json['level'];
    semester = json['semester'];
    country = json['country'];
    enabled = json['enabled'];
    pushTokens = json['pushTokens'].cast<String>();
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['isLogged'] = this.isLogged;
    data['username'] = this.username;
    data['gender'] = this.gender;
    data['canComment'] = this.canComment;
    data['photo'] = this.photo;
    data['email'] = this.email;
    data['level'] = this.level;
    data['semester'] = this.semester;
    data['country'] = this.country;
    data['enabled'] = this.enabled;
    data['pushTokens'] = this.pushTokens;
    data['role'] = this.role;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }

//bouns
 @override
  String toString() => "UserDate = {id = ${this.id} , country = ${this.country} }";

}
