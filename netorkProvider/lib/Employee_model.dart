class Employee{
  final int id;
  final String name;
  final String salary;
  final String age;
  final String image;

  Employee({this.id , this.name , this.salary , this.age , this.image });


  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    id: json["id"],
    name: json["employee_name"],
    salary: json["employee_salary"],
    age: json["employee_age"],
    image: json["employee_image"],);

  Map<String, dynamic> toJson() =>
      {"id": id, "employee_name": name, "employee_salary": salary,
        "employee_age": age ,"employee_image": image};
}